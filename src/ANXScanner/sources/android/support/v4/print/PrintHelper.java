package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument.Page;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Builder;
import android.print.PrintAttributes.Margins;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentAdapter.WriteResultCallback;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class PrintHelper {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    private final PrintHelperVersionImpl mImpl;

    @Retention(RetentionPolicy.SOURCE)
    private @interface ColorMode {
    }

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface Orientation {
    }

    interface PrintHelperVersionImpl {
        int getColorMode();

        int getOrientation();

        int getScaleMode();

        void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback);

        void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException;

        void setColorMode(int i);

        void setOrientation(int i);

        void setScaleMode(int i);
    }

    @RequiresApi(19)
    private static class PrintHelperApi19 implements PrintHelperVersionImpl {
        private static final String LOG_TAG = "PrintHelperApi19";
        private static final int MAX_PRINT_SIZE = 3500;
        int mColorMode = 2;
        final Context mContext;
        Options mDecodeOptions = null;
        protected boolean mIsMinMarginsHandlingCorrect = true;
        private final Object mLock = new Object();
        int mOrientation;
        protected boolean mPrintActivityRespectsOrientation = true;
        int mScaleMode = 2;

        PrintHelperApi19(Context context) {
            this.mContext = context;
        }

        public void setScaleMode(int scaleMode) {
            this.mScaleMode = scaleMode;
        }

        public int getScaleMode() {
            return this.mScaleMode;
        }

        public void setColorMode(int colorMode) {
            this.mColorMode = colorMode;
        }

        public void setOrientation(int orientation) {
            this.mOrientation = orientation;
        }

        public int getOrientation() {
            if (this.mOrientation == 0) {
                return 1;
            }
            return this.mOrientation;
        }

        public int getColorMode() {
            return this.mColorMode;
        }

        private static boolean isPortrait(Bitmap bitmap) {
            return bitmap.getWidth() <= bitmap.getHeight();
        }

        protected Builder copyAttributes(PrintAttributes other) {
            Builder b = new Builder().setMediaSize(other.getMediaSize()).setResolution(other.getResolution()).setMinMargins(other.getMinMargins());
            if (other.getColorMode() != 0) {
                b.setColorMode(other.getColorMode());
            }
            return b;
        }

        public void printBitmap(String jobName, Bitmap bitmap, OnPrintFinishCallback callback) {
            if (bitmap != null) {
                MediaSize mediaSize;
                final int fittingMode = this.mScaleMode;
                PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
                if (isPortrait(bitmap)) {
                    mediaSize = MediaSize.UNKNOWN_PORTRAIT;
                } else {
                    mediaSize = MediaSize.UNKNOWN_LANDSCAPE;
                }
                final String str = jobName;
                final Bitmap bitmap2 = bitmap;
                final OnPrintFinishCallback onPrintFinishCallback = callback;
                printManager.print(jobName, new PrintDocumentAdapter() {
                    private PrintAttributes mAttributes;

                    public void onLayout(PrintAttributes oldPrintAttributes, PrintAttributes newPrintAttributes, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                        boolean changed = true;
                        this.mAttributes = newPrintAttributes;
                        PrintDocumentInfo info = new PrintDocumentInfo.Builder(str).setContentType(1).setPageCount(1).build();
                        if (newPrintAttributes.equals(oldPrintAttributes)) {
                            changed = false;
                        }
                        layoutResultCallback.onLayoutFinished(info, changed);
                    }

                    public void onWrite(PageRange[] pageRanges, ParcelFileDescriptor fileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                        PrintHelperApi19.this.writeBitmap(this.mAttributes, fittingMode, bitmap2, fileDescriptor, cancellationSignal, writeResultCallback);
                    }

                    public void onFinish() {
                        if (onPrintFinishCallback != null) {
                            onPrintFinishCallback.onFinish();
                        }
                    }
                }, new Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
            }
        }

        private Matrix getMatrix(int imageWidth, int imageHeight, RectF content, int fittingMode) {
            Matrix matrix = new Matrix();
            float scale = content.width() / ((float) imageWidth);
            if (fittingMode == 2) {
                scale = Math.max(scale, content.height() / ((float) imageHeight));
            } else {
                scale = Math.min(scale, content.height() / ((float) imageHeight));
            }
            matrix.postScale(scale, scale);
            matrix.postTranslate((content.width() - (((float) imageWidth) * scale)) / 2.0f, (content.height() - (((float) imageHeight) * scale)) / 2.0f);
            return matrix;
        }

        private void writeBitmap(PrintAttributes attributes, int fittingMode, Bitmap bitmap, ParcelFileDescriptor fileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
            PrintAttributes pdfAttributes;
            if (this.mIsMinMarginsHandlingCorrect) {
                pdfAttributes = attributes;
            } else {
                pdfAttributes = copyAttributes(attributes).setMinMargins(new Margins(0, 0, 0, 0)).build();
            }
            final CancellationSignal cancellationSignal2 = cancellationSignal;
            final Bitmap bitmap2 = bitmap;
            final PrintAttributes printAttributes = attributes;
            final int i = fittingMode;
            final ParcelFileDescriptor parcelFileDescriptor = fileDescriptor;
            final WriteResultCallback writeResultCallback2 = writeResultCallback;
            new AsyncTask<Void, Void, Throwable>() {
                protected Throwable doInBackground(Void... params) {
                    PrintedPdfDocument pdfDocument;
                    Bitmap maybeGrayscale;
                    try {
                        if (cancellationSignal2.isCanceled()) {
                            return null;
                        }
                        pdfDocument = new PrintedPdfDocument(PrintHelperApi19.this.mContext, pdfAttributes);
                        maybeGrayscale = PrintHelperApi19.this.convertBitmapForColorMode(bitmap2, pdfAttributes.getColorMode());
                        if (cancellationSignal2.isCanceled()) {
                            return null;
                        }
                        RectF contentRect;
                        Page page = pdfDocument.startPage(1);
                        if (PrintHelperApi19.this.mIsMinMarginsHandlingCorrect) {
                            contentRect = new RectF(page.getInfo().getContentRect());
                        } else {
                            PrintedPdfDocument dummyDocument = new PrintedPdfDocument(PrintHelperApi19.this.mContext, printAttributes);
                            Page dummyPage = dummyDocument.startPage(1);
                            contentRect = new RectF(dummyPage.getInfo().getContentRect());
                            dummyDocument.finishPage(dummyPage);
                            dummyDocument.close();
                        }
                        Matrix matrix = PrintHelperApi19.this.getMatrix(maybeGrayscale.getWidth(), maybeGrayscale.getHeight(), contentRect, i);
                        if (!PrintHelperApi19.this.mIsMinMarginsHandlingCorrect) {
                            matrix.postTranslate(contentRect.left, contentRect.top);
                            page.getCanvas().clipRect(contentRect);
                        }
                        page.getCanvas().drawBitmap(maybeGrayscale, matrix, null);
                        pdfDocument.finishPage(page);
                        if (cancellationSignal2.isCanceled()) {
                            pdfDocument.close();
                            if (parcelFileDescriptor != null) {
                                try {
                                    parcelFileDescriptor.close();
                                } catch (IOException e) {
                                }
                            }
                            if (maybeGrayscale == bitmap2) {
                                return null;
                            }
                            maybeGrayscale.recycle();
                            return null;
                        }
                        pdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                        pdfDocument.close();
                        if (parcelFileDescriptor != null) {
                            try {
                                parcelFileDescriptor.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (maybeGrayscale == bitmap2) {
                            return null;
                        }
                        maybeGrayscale.recycle();
                        return null;
                    } catch (Throwable t) {
                        return t;
                    }
                }

                protected void onPostExecute(Throwable throwable) {
                    if (cancellationSignal2.isCanceled()) {
                        writeResultCallback2.onWriteCancelled();
                    } else if (throwable == null) {
                        writeResultCallback2.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                    } else {
                        Log.e(PrintHelperApi19.LOG_TAG, "Error writing printed content", throwable);
                        writeResultCallback2.onWriteFailed(null);
                    }
                }
            }.execute(new Void[0]);
        }

        public void printBitmap(String jobName, Uri imageFile, OnPrintFinishCallback callback) throws FileNotFoundException {
            final int fittingMode = this.mScaleMode;
            final String str = jobName;
            final Uri uri = imageFile;
            final OnPrintFinishCallback onPrintFinishCallback = callback;
            PrintDocumentAdapter printDocumentAdapter = new PrintDocumentAdapter() {
                private PrintAttributes mAttributes;
                Bitmap mBitmap = null;
                AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

                public void onLayout(PrintAttributes oldPrintAttributes, PrintAttributes newPrintAttributes, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                    boolean changed = true;
                    synchronized (this) {
                        this.mAttributes = newPrintAttributes;
                    }
                    if (cancellationSignal.isCanceled()) {
                        layoutResultCallback.onLayoutCancelled();
                    } else if (this.mBitmap != null) {
                        PrintDocumentInfo info = new PrintDocumentInfo.Builder(str).setContentType(1).setPageCount(1).build();
                        if (newPrintAttributes.equals(oldPrintAttributes)) {
                            changed = false;
                        }
                        layoutResultCallback.onLayoutFinished(info, changed);
                    } else {
                        final CancellationSignal cancellationSignal2 = cancellationSignal;
                        final PrintAttributes printAttributes = newPrintAttributes;
                        final PrintAttributes printAttributes2 = oldPrintAttributes;
                        final LayoutResultCallback layoutResultCallback2 = layoutResultCallback;
                        this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() {
                            protected void onPreExecute() {
                                cancellationSignal2.setOnCancelListener(new OnCancelListener() {
                                    public void onCancel() {
                                        AnonymousClass3.this.cancelLoad();
                                        AnonymousClass1.this.cancel(false);
                                    }
                                });
                            }

                            protected Bitmap doInBackground(Uri... uris) {
                                try {
                                    return PrintHelperApi19.this.loadConstrainedBitmap(uri);
                                } catch (FileNotFoundException e) {
                                    return null;
                                }
                            }

                            protected void onPostExecute(Bitmap bitmap) {
                                super.onPostExecute(bitmap);
                                if (bitmap != null && (!PrintHelperApi19.this.mPrintActivityRespectsOrientation || PrintHelperApi19.this.mOrientation == 0)) {
                                    MediaSize mediaSize;
                                    synchronized (this) {
                                        mediaSize = AnonymousClass3.this.mAttributes.getMediaSize();
                                    }
                                    if (!(mediaSize == null || mediaSize.isPortrait() == PrintHelperApi19.isPortrait(bitmap))) {
                                        Matrix rotation = new Matrix();
                                        rotation.postRotate(90.0f);
                                        bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), rotation, true);
                                    }
                                }
                                AnonymousClass3.this.mBitmap = bitmap;
                                if (bitmap != null) {
                                    boolean changed;
                                    PrintDocumentInfo info = new PrintDocumentInfo.Builder(str).setContentType(1).setPageCount(1).build();
                                    if (printAttributes.equals(printAttributes2)) {
                                        changed = false;
                                    } else {
                                        changed = true;
                                    }
                                    layoutResultCallback2.onLayoutFinished(info, changed);
                                } else {
                                    layoutResultCallback2.onLayoutFailed(null);
                                }
                                AnonymousClass3.this.mLoadBitmap = null;
                            }

                            protected void onCancelled(Bitmap result) {
                                layoutResultCallback2.onLayoutCancelled();
                                AnonymousClass3.this.mLoadBitmap = null;
                            }
                        }.execute(new Uri[0]);
                    }
                }

                private void cancelLoad() {
                    synchronized (PrintHelperApi19.this.mLock) {
                        if (PrintHelperApi19.this.mDecodeOptions != null) {
                            PrintHelperApi19.this.mDecodeOptions.requestCancelDecode();
                            PrintHelperApi19.this.mDecodeOptions = null;
                        }
                    }
                }

                public void onFinish() {
                    super.onFinish();
                    cancelLoad();
                    if (this.mLoadBitmap != null) {
                        this.mLoadBitmap.cancel(true);
                    }
                    if (onPrintFinishCallback != null) {
                        onPrintFinishCallback.onFinish();
                    }
                    if (this.mBitmap != null) {
                        this.mBitmap.recycle();
                        this.mBitmap = null;
                    }
                }

                public void onWrite(PageRange[] pageRanges, ParcelFileDescriptor fileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                    PrintHelperApi19.this.writeBitmap(this.mAttributes, fittingMode, this.mBitmap, fileDescriptor, cancellationSignal, writeResultCallback);
                }
            };
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            Builder builder = new Builder();
            builder.setColorMode(this.mColorMode);
            if (this.mOrientation == 1 || this.mOrientation == 0) {
                builder.setMediaSize(MediaSize.UNKNOWN_LANDSCAPE);
            } else if (this.mOrientation == 2) {
                builder.setMediaSize(MediaSize.UNKNOWN_PORTRAIT);
            }
            printManager.print(jobName, printDocumentAdapter, builder.build());
        }

        private Bitmap loadConstrainedBitmap(Uri uri) throws FileNotFoundException {
            Bitmap bitmap = null;
            if (uri == null || this.mContext == null) {
                throw new IllegalArgumentException("bad argument to getScaledBitmap");
            }
            Options opt = new Options();
            opt.inJustDecodeBounds = true;
            loadBitmap(uri, opt);
            int w = opt.outWidth;
            int h = opt.outHeight;
            if (w > 0 && h > 0) {
                int imageSide = Math.max(w, h);
                int sampleSize = 1;
                while (imageSide > 3500) {
                    imageSide >>>= 1;
                    sampleSize <<= 1;
                }
                if (sampleSize > 0 && Math.min(w, h) / sampleSize > 0) {
                    Options decodeOptions;
                    synchronized (this.mLock) {
                        this.mDecodeOptions = new Options();
                        this.mDecodeOptions.inMutable = true;
                        this.mDecodeOptions.inSampleSize = sampleSize;
                        decodeOptions = this.mDecodeOptions;
                    }
                    try {
                        bitmap = loadBitmap(uri, decodeOptions);
                        synchronized (this.mLock) {
                            this.mDecodeOptions = null;
                        }
                    } catch (Throwable th) {
                        synchronized (this.mLock) {
                            this.mDecodeOptions = null;
                        }
                    }
                }
            }
            return bitmap;
        }

        private Bitmap loadBitmap(Uri uri, Options o) throws FileNotFoundException {
            if (uri == null || this.mContext == null) {
                throw new IllegalArgumentException("bad argument to loadBitmap");
            }
            InputStream is = null;
            try {
                is = this.mContext.getContentResolver().openInputStream(uri);
                Bitmap decodeStream = BitmapFactory.decodeStream(is, null, o);
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException t) {
                        Log.w(LOG_TAG, "close fail ", t);
                    }
                }
                return decodeStream;
            } catch (Throwable th) {
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException t2) {
                        Log.w(LOG_TAG, "close fail ", t2);
                    }
                }
            }
        }

        private Bitmap convertBitmapForColorMode(Bitmap original, int colorMode) {
            if (colorMode != 1) {
                return original;
            }
            Bitmap grayscale = Bitmap.createBitmap(original.getWidth(), original.getHeight(), Config.ARGB_8888);
            Canvas c = new Canvas(grayscale);
            Paint p = new Paint();
            ColorMatrix cm = new ColorMatrix();
            cm.setSaturation(0.0f);
            p.setColorFilter(new ColorMatrixColorFilter(cm));
            c.drawBitmap(original, 0.0f, 0.0f, p);
            c.setBitmap(null);
            return grayscale;
        }
    }

    @RequiresApi(20)
    private static class PrintHelperApi20 extends PrintHelperApi19 {
        PrintHelperApi20(Context context) {
            super(context);
            this.mPrintActivityRespectsOrientation = false;
        }
    }

    @RequiresApi(23)
    private static class PrintHelperApi23 extends PrintHelperApi20 {
        protected Builder copyAttributes(PrintAttributes other) {
            Builder b = super.copyAttributes(other);
            if (other.getDuplexMode() != 0) {
                b.setDuplexMode(other.getDuplexMode());
            }
            return b;
        }

        PrintHelperApi23(Context context) {
            super(context);
            this.mIsMinMarginsHandlingCorrect = false;
        }
    }

    @RequiresApi(24)
    private static class PrintHelperApi24 extends PrintHelperApi23 {
        PrintHelperApi24(Context context) {
            super(context);
            this.mIsMinMarginsHandlingCorrect = true;
            this.mPrintActivityRespectsOrientation = true;
        }
    }

    private static final class PrintHelperStub implements PrintHelperVersionImpl {
        int mColorMode;
        int mOrientation;
        int mScaleMode;

        private PrintHelperStub() {
            this.mScaleMode = 2;
            this.mColorMode = 2;
            this.mOrientation = 1;
        }

        public void setScaleMode(int scaleMode) {
            this.mScaleMode = scaleMode;
        }

        public int getScaleMode() {
            return this.mScaleMode;
        }

        public int getColorMode() {
            return this.mColorMode;
        }

        public void setColorMode(int colorMode) {
            this.mColorMode = colorMode;
        }

        public void setOrientation(int orientation) {
            this.mOrientation = orientation;
        }

        public int getOrientation() {
            return this.mOrientation;
        }

        public void printBitmap(String jobName, Bitmap bitmap, OnPrintFinishCallback callback) {
        }

        public void printBitmap(String jobName, Uri imageFile, OnPrintFinishCallback callback) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface ScaleMode {
    }

    public static boolean systemSupportsPrint() {
        return VERSION.SDK_INT >= 19;
    }

    public PrintHelper(Context context) {
        if (VERSION.SDK_INT >= 24) {
            this.mImpl = new PrintHelperApi24(context);
        } else if (VERSION.SDK_INT >= 23) {
            this.mImpl = new PrintHelperApi23(context);
        } else if (VERSION.SDK_INT >= 20) {
            this.mImpl = new PrintHelperApi20(context);
        } else if (VERSION.SDK_INT >= 19) {
            this.mImpl = new PrintHelperApi19(context);
        } else {
            this.mImpl = new PrintHelperStub();
        }
    }

    public void setScaleMode(int scaleMode) {
        this.mImpl.setScaleMode(scaleMode);
    }

    public int getScaleMode() {
        return this.mImpl.getScaleMode();
    }

    public void setColorMode(int colorMode) {
        this.mImpl.setColorMode(colorMode);
    }

    public int getColorMode() {
        return this.mImpl.getColorMode();
    }

    public void setOrientation(int orientation) {
        this.mImpl.setOrientation(orientation);
    }

    public int getOrientation() {
        return this.mImpl.getOrientation();
    }

    public void printBitmap(String jobName, Bitmap bitmap) {
        this.mImpl.printBitmap(jobName, bitmap, null);
    }

    public void printBitmap(String jobName, Bitmap bitmap, OnPrintFinishCallback callback) {
        this.mImpl.printBitmap(jobName, bitmap, callback);
    }

    public void printBitmap(String jobName, Uri imageFile) throws FileNotFoundException {
        this.mImpl.printBitmap(jobName, imageFile, null);
    }

    public void printBitmap(String jobName, Uri imageFile, OnPrintFinishCallback callback) throws FileNotFoundException {
        this.mImpl.printBitmap(jobName, imageFile, callback);
    }
}
