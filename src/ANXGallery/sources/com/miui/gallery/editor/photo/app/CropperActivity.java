package com.miui.gallery.editor.photo.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LoaderManager.LoaderCallbacks;
import android.app.ProgressDialog;
import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.support.media.ExifInterface;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.edmodo.cropper.CropImageView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import miui.os.C0002FileUtils;

public class CropperActivity extends BaseActivity {
    private LoaderCallbacks<DecodeResult> mCallbacks = new LoaderCallbacks<DecodeResult>() {
        public Loader<DecodeResult> onCreateLoader(int id, Bundle args) {
            return new PrepareLoader(CropperActivity.this, CropperActivity.this.mData);
        }

        public void onLoadFinished(Loader loader, DecodeResult data) {
            if (data.mBitmap != null) {
                CropperActivity.this.mCropView.setImageBitmap(data.mBitmap);
                CropperActivity.this.mSaveButton.setEnabled(true);
                return;
            }
            if (data.mException != null) {
                Log.w("CropperActivity", data.mException);
            }
            Toast.makeText(CropperActivity.this, R.string.image_decode_failed, 0).show();
            CropperActivity.this.finish();
        }

        public void onLoaderReset(Loader loader) {
        }
    };
    private View mCancelButton;
    private CropImageView mCropView;
    private Uri mData;
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(View v) {
            if (v == CropperActivity.this.mCancelButton) {
                CropperActivity.this.finish();
            } else if (v == CropperActivity.this.mSaveButton) {
                new ExportFragment().showAllowingStateLoss(CropperActivity.this.getFragmentManager(), "ExportFragment");
            }
        }
    };
    private Uri mOutput;
    private float mOutputX;
    private float mOutputY;
    private boolean mReturnData;
    private View mSaveButton;

    private static class DecodeResult {
        Bitmap mBitmap;
        Exception mException;

        DecodeResult(Bitmap bitmap, Exception exception) {
            this.mBitmap = bitmap;
            this.mException = exception;
        }
    }

    public static class ExportFragment extends GalleryDialogFragment {
        private LoaderCallbacks<Boolean> mCallbacks = new LoaderCallbacks<Boolean>() {
            public Loader<Boolean> onCreateLoader(int id, Bundle args) {
                return new ExportLoader(ExportFragment.this.mCropper, ExportFragment.this.mCropper.mOutput);
            }

            public void onLoadFinished(Loader loader, Boolean success) {
                if (success.booleanValue()) {
                    ExportFragment.this.mCropper.setResult(-1, new Intent());
                } else {
                    Toast.makeText(ExportFragment.this.mCropper, R.string.main_save_error_msg, 0).show();
                }
                ExportFragment.this.mCropper.finish();
            }

            public void onLoaderReset(Loader loader) {
            }
        };
        private CropperActivity mCropper;

        public void onAttach(Activity activity) {
            super.onAttach(activity);
            if (activity instanceof CropperActivity) {
                this.mCropper = (CropperActivity) activity;
                return;
            }
            throw new IllegalStateException("can't attach to install of " + activity.getClass().getSimpleName());
        }

        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            getLoaderManager().initLoader(0, null, this.mCallbacks);
        }

        public Dialog onCreateDialog(Bundle savedInstanceState) {
            ProgressDialog dialog = new ProgressDialog(this.mCropper);
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            dialog.setMessage(getActivity().getString(R.string.photo_editor_saving));
            return dialog;
        }
    }

    private static class ExportLoader extends AsyncTaskLoader<Boolean> {
        private WeakReference<CropperActivity> mActivityWeakReference;
        private Uri mOut;
        private Boolean mResult;

        public ExportLoader(CropperActivity cropperActivity, Uri out) {
            super(cropperActivity);
            this.mOut = out;
            this.mActivityWeakReference = new WeakReference(cropperActivity);
        }

        /* JADX WARNING: Removed duplicated region for block: B:71:0x0105 A:{SYNTHETIC, Splitter: B:71:0x0105} */
        /* JADX WARNING: Removed duplicated region for block: B:53:0x00d6 A:{SYNTHETIC, Splitter: B:53:0x00d6} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x00f0 A:{SYNTHETIC, Splitter: B:63:0x00f0} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public Boolean loadInBackground() {
            Throwable e;
            Throwable th;
            Log.d("CropperActivity", "start export in background.");
            CropperActivity cropperActivity = (CropperActivity) this.mActivityWeakReference.get();
            if (cropperActivity == null) {
                return Boolean.valueOf(false);
            }
            Bitmap source = cropperActivity.createOutput();
            if (source == null) {
                return Boolean.valueOf(false);
            }
            CompressFormat format;
            if ("file".equals(this.mOut.getScheme())) {
                format = GalleryUtils.convertExtensionToCompressFormat(C0002FileUtils.getExtension(this.mOut.getPath()));
            } else {
                String type = getContext().getContentResolver().getType(this.mOut);
                format = "image/png".equals(type) ? CompressFormat.PNG : "image/webp".equals(type) ? CompressFormat.WEBP : CompressFormat.JPEG;
            }
            OutputStream out = null;
            try {
                OutputStream stream = getContext().getContentResolver().openOutputStream(this.mOut);
                if (stream != null) {
                    OutputStream out2 = new BufferedOutputStream(stream);
                    try {
                        Boolean valueOf = Boolean.valueOf(source.compress(format, 100, out2));
                        if (out2 == null) {
                            return valueOf;
                        }
                        try {
                            out2.close();
                            return valueOf;
                        } catch (Throwable e2) {
                            Log.w("CropperActivity", e2);
                            return valueOf;
                        } catch (Throwable e22) {
                            Log.e("CropperActivity", e22);
                            return valueOf;
                        }
                    } catch (FileNotFoundException e3) {
                        e22 = e3;
                        out = out2;
                    } catch (SecurityException e4) {
                        e22 = e4;
                        out = out2;
                        Log.w("CropperActivity", e22);
                        if (out != null) {
                            try {
                                out.close();
                            } catch (Throwable e222) {
                                Log.w("CropperActivity", e222);
                            } catch (Throwable e2222) {
                                Log.e("CropperActivity", e2222);
                            }
                        }
                        return Boolean.valueOf(false);
                    } catch (Exception e5) {
                        e2222 = e5;
                        out = out2;
                        Log.e("CropperActivity", e2222);
                        if (out != null) {
                            try {
                                out.close();
                            } catch (Throwable e22222) {
                                Log.w("CropperActivity", e22222);
                            } catch (Throwable e222222) {
                                Log.e("CropperActivity", e222222);
                            }
                        }
                        return Boolean.valueOf(false);
                    } catch (Throwable th2) {
                        th = th2;
                        out = out2;
                        if (out != null) {
                        }
                        throw th;
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (Throwable e2222222) {
                        Log.w("CropperActivity", e2222222);
                    } catch (Throwable e22222222) {
                        Log.e("CropperActivity", e22222222);
                    }
                }
                return Boolean.valueOf(false);
            } catch (FileNotFoundException e6) {
                e22222222 = e6;
                try {
                    Log.w("CropperActivity", e22222222);
                    if (out != null) {
                        try {
                            out.close();
                        } catch (Throwable e222222222) {
                            Log.w("CropperActivity", e222222222);
                        } catch (Throwable e2222222222) {
                            Log.e("CropperActivity", e2222222222);
                        }
                    }
                    return Boolean.valueOf(false);
                } catch (Throwable th3) {
                    th = th3;
                    if (out != null) {
                        try {
                            out.close();
                        } catch (Throwable e22222222222) {
                            Log.w("CropperActivity", e22222222222);
                        } catch (Throwable e222222222222) {
                            Log.e("CropperActivity", e222222222222);
                        }
                    }
                    throw th;
                }
            } catch (SecurityException e7) {
                e222222222222 = e7;
                Log.w("CropperActivity", e222222222222);
                if (out != null) {
                }
                return Boolean.valueOf(false);
            } catch (Exception e8) {
                e222222222222 = e8;
                Log.e("CropperActivity", e222222222222);
                if (out != null) {
                }
                return Boolean.valueOf(false);
            }
        }

        protected void onStartLoading() {
            super.onStartLoading();
            if (this.mResult == null) {
                forceLoad();
            } else {
                deliverResult(this.mResult);
            }
        }

        public void deliverResult(Boolean data) {
            super.deliverResult(data);
            this.mResult = data;
            if (isStarted()) {
                super.deliverResult(data);
            }
        }

        protected void onReset() {
            super.onReset();
        }
    }

    private static class PrepareLoader extends AsyncTaskLoader<DecodeResult> {
        private DecodeResult mDecodeResult;
        private Uri mUri;

        public PrepareLoader(Context context, Uri image) {
            super(context);
            this.mUri = image;
        }

        /* JADX WARNING: Removed duplicated region for block: B:28:0x008f A:{SYNTHETIC, Splitter: B:28:0x008f} */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00a8 A:{SYNTHETIC, Splitter: B:36:0x00a8} */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x00b6 A:{SYNTHETIC, Splitter: B:42:0x00b6} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public DecodeResult loadInBackground() {
            DecodeResult decodeResult;
            Throwable e;
            Throwable th;
            InputStream in = null;
            try {
                in = getContext().getContentResolver().openInputStream(this.mUri);
                if (in != null) {
                    InputStream in2 = new BufferedInputStream(in);
                    try {
                        Options opt = new Options();
                        opt.inSampleSize = sampleSize(this.mUri);
                        Bitmap bmp = BitmapFactory.decodeStream(in2, null, opt);
                        int degree = getPhotoRotation(this.mUri);
                        if (degree != 0) {
                            Log.d("CropperActivity", "rotate image by %d", Integer.valueOf(degree));
                            bmp = rotateBitmap(degree, bmp);
                        }
                        Log.d("CropperActivity", "sample size is %dx%d", Integer.valueOf(opt.outWidth), Integer.valueOf(opt.outHeight));
                        decodeResult = new DecodeResult(bmp, null);
                        if (in2 != null) {
                            try {
                                in2.close();
                            } catch (Throwable e2) {
                                Log.w("CropperActivity", e2);
                            }
                        }
                        in = in2;
                    } catch (FileNotFoundException e3) {
                        e2 = e3;
                        in = in2;
                        try {
                            Log.e("CropperActivity", e2);
                            decodeResult = new DecodeResult(null, e2);
                            if (in != null) {
                            }
                            return decodeResult;
                        } catch (Throwable th2) {
                            th = th2;
                            if (in != null) {
                                try {
                                    in.close();
                                } catch (Throwable e22) {
                                    Log.w("CropperActivity", e22);
                                }
                            }
                            throw th;
                        }
                    } catch (SecurityException e4) {
                        e22 = e4;
                        in = in2;
                        Log.w("CropperActivity", e22);
                        decodeResult = new DecodeResult(null, e22);
                        if (in != null) {
                        }
                        return decodeResult;
                    } catch (Throwable th3) {
                        th = th3;
                        in = in2;
                        if (in != null) {
                        }
                        throw th;
                    }
                }
                Log.d("CropperActivity", "no stream return.");
                decodeResult = new DecodeResult(null, null);
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e222) {
                        Log.w("CropperActivity", e222);
                    }
                }
            } catch (FileNotFoundException e5) {
                e222 = e5;
                Log.e("CropperActivity", e222);
                decodeResult = new DecodeResult(null, e222);
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e2222) {
                        Log.w("CropperActivity", e2222);
                    }
                }
                return decodeResult;
            } catch (SecurityException e6) {
                e2222 = e6;
                Log.w("CropperActivity", e2222);
                decodeResult = new DecodeResult(null, e2222);
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e22222) {
                        Log.w("CropperActivity", e22222);
                    }
                }
                return decodeResult;
            }
            return decodeResult;
        }

        /* JADX WARNING: Removed duplicated region for block: B:29:0x0068 A:{SYNTHETIC, Splitter: B:29:0x0068} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private int sampleSize(Uri imageUri) {
            Throwable e;
            Throwable th;
            int i = 1;
            InputStream in = null;
            try {
                in = getContext().getContentResolver().openInputStream(imageUri);
                if (in != null) {
                    InputStream in2 = new BufferedInputStream(in);
                    try {
                        Options opt = new Options();
                        opt.inJustDecodeBounds = true;
                        BitmapFactory.decodeStream(in2, null, opt);
                        i = Math.max(Math.round((float) (opt.outHeight / 2048)), Math.round((float) (opt.outWidth / 2048)));
                        if (in2 != null) {
                            try {
                                in2.close();
                            } catch (Throwable e2) {
                                Log.w("CropperActivity", e2);
                            }
                        }
                        in = in2;
                    } catch (FileNotFoundException e3) {
                        e2 = e3;
                        in = in2;
                    } catch (Throwable th2) {
                        th = th2;
                        in = in2;
                        if (in != null) {
                        }
                        throw th;
                    }
                } else if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e22) {
                        Log.w("CropperActivity", e22);
                    }
                }
            } catch (FileNotFoundException e4) {
                e22 = e4;
                try {
                    Log.w("CropperActivity", e22);
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable e222) {
                            Log.w("CropperActivity", e222);
                        }
                    }
                    return i;
                } catch (Throwable th3) {
                    th = th3;
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable e2222) {
                            Log.w("CropperActivity", e2222);
                        }
                    }
                    throw th;
                }
            }
            return i;
        }

        /* JADX WARNING: Removed duplicated region for block: B:31:0x0059 A:{SYNTHETIC, Splitter: B:31:0x0059} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private int getPhotoRotation(Uri imageUri) {
            Throwable e;
            Throwable th;
            InputStream in = null;
            try {
                in = getContext().getContentResolver().openInputStream(imageUri);
                if (in != null) {
                    InputStream in2 = new BufferedInputStream(in);
                    try {
                        int rotationDegrees = ExifUtil.getRotationDegrees((ExifInterface) ExifUtil.sSupportExifCreator.create(in2));
                        if (in2 != null) {
                            try {
                                in2.close();
                            } catch (Throwable e2) {
                                Log.w("CropperActivity", e2);
                            }
                        }
                        in = in2;
                        return rotationDegrees;
                    } catch (FileNotFoundException e3) {
                        e2 = e3;
                        in = in2;
                    } catch (Throwable th2) {
                        th = th2;
                        in = in2;
                        if (in != null) {
                        }
                        throw th;
                    }
                }
                Log.e("CropperActivity", "no stream opened");
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e22) {
                        Log.w("CropperActivity", e22);
                    }
                }
                return 0;
            } catch (FileNotFoundException e4) {
                e22 = e4;
                try {
                    Log.w("CropperActivity", e22);
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable e222) {
                            Log.w("CropperActivity", e222);
                        }
                    }
                    return 0;
                } catch (Throwable th3) {
                    th = th3;
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable e2222) {
                            Log.w("CropperActivity", e2222);
                        }
                    }
                    throw th;
                }
            }
        }

        private Bitmap rotateBitmap(int rotation, Bitmap bitmap) {
            Matrix matrix = new Matrix();
            matrix.preRotate((float) rotation);
            Bitmap re = null;
            try {
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } catch (OutOfMemoryError e) {
                Log.e("CropperActivity", "rotateBitmap OutOfMemoryError");
                return re;
            }
        }

        protected void onStartLoading() {
            super.onStartLoading();
            if (this.mDecodeResult == null) {
                forceLoad();
            } else {
                deliverResult(this.mDecodeResult);
            }
        }

        public void deliverResult(DecodeResult data) {
            if (!isReset()) {
                this.mDecodeResult = data;
            }
            if (isStarted()) {
                super.deliverResult(data);
            }
        }

        protected void onReset() {
            super.onReset();
            this.mDecodeResult = null;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.crop_activity);
        this.mSaveButton = findViewById(R.id.ok);
        this.mCancelButton = findViewById(R.id.cancel);
        this.mSaveButton.setOnClickListener(this.mOnClickListener);
        this.mCancelButton.setOnClickListener(this.mOnClickListener);
        this.mCropView = (CropImageView) findViewById(R.id.crop_view);
        this.mSaveButton.setEnabled(false);
        Intent intent = getIntent();
        this.mData = intent.getData();
        this.mOutput = (Uri) intent.getParcelableExtra("output");
        this.mReturnData = intent.getBooleanExtra("return-data", false);
        this.mOutputX = (float) intent.getIntExtra("outputX", -1);
        this.mOutputY = (float) intent.getIntExtra("outputY", -1);
        if (this.mData == null || this.mOutput == null) {
            Log.e("CropperActivity", "src or des missed, src: %s, des: %s", this.mData, this.mOutput);
            finish();
            return;
        }
        Log.d("CropperActivity", "cropper's input: %s, output: %s", this.mData, this.mOutput == null ? "bytes" : this.mOutput);
        int aspectX = intent.getIntExtra("aspectX", -1);
        int aspectY = intent.getIntExtra("aspectY", -1);
        if (aspectX > 0 && aspectY > 0) {
            this.mCropView.setFixedAspectRatio(intent.getBooleanExtra("fixed_aspect_ratio", true));
            this.mCropView.setAspectRatio(aspectX, aspectY);
        }
        getLoaderManager().initLoader(0, null, this.mCallbacks);
    }

    protected void onSaveInstanceState(Bundle outState) {
    }

    private Bitmap createOutput() {
        long start = System.currentTimeMillis();
        Bitmap bitmap = this.mCropView.getCroppedImage();
        if (this.mOutputX > 0.0f && this.mOutputY > 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setScale(this.mOutputX / ((float) bitmap.getWidth()), this.mOutputY / ((float) bitmap.getHeight()));
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        }
        Log.d("CropperActivity", "create output costs %dms", Long.valueOf(System.currentTimeMillis() - start));
        return bitmap;
    }
}
