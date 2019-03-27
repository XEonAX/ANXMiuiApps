package com.miui.internal.yellowpage;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.LruCache;
import android.view.WindowManager;
import android.widget.ImageView;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import miui.provider.MiCloudSmsCmd;
import miui.yellowpage.Log;
import miui.yellowpage.YellowPageContract.ImageLookup;
import miui.yellowpage.YellowPageImgLoader.Image;

public class ImageLoader implements Callback {
    private static final int BITMAP_CACHE_SIZE = 10485760;
    private static final int MESSAGE_REQUEST_LOAD = 2;
    private static final int MESSAGE_REQUEST_LOADED = 1;
    private static final String TAG = "ImageLoader";
    private static final int THREAD_POOL_COUNT = 6;
    private static int sDisplayHeight;
    private static int sDisplayWidth;
    private static ImageLoader sLoader;
    private final Object BITMAP_CACHE_LOCK = new Object();
    private final LruCache<Image, BitmapHolder> mBitmapCache = new LruCache<Image, BitmapHolder>(BITMAP_CACHE_SIZE) {
        protected int sizeOf(Image key, BitmapHolder value) {
            return (value == null || value.mBitmap == null) ? 0 : value.mBitmap.getByteCount();
        }
    };
    private Context mContext;
    private final Map<Object, Bitmap> mDefaultBitmapCache = new HashMap();
    private ExecutorService mExecutor;
    private Handler mMainThreadHandler;
    private int mNetworkAccess;
    private volatile boolean mPauseLoading;
    private final Map<Image, WeakReference<ImageView>> mPendingRequests = new LinkedHashMap();
    private final Map<Image, LinkedList<WeakReference<ImageView>>> mRequestingImageViews = new HashMap();

    private static class BitmapHolder {
        Bitmap mBitmap;
        State mState;

        private BitmapHolder() {
        }

        /* synthetic */ BitmapHolder(AnonymousClass1 x0) {
            this();
        }
    }

    private class LoadImageRunnable implements Runnable {
        private Image mImage;

        public LoadImageRunnable(Image image) {
            this.mImage = image;
        }

        /* JADX WARNING: Missing block: B:18:0x0045, code:
            r0 = com.miui.internal.yellowpage.ImageLoader.access$300(r4.this$0, r4.mImage, true);
     */
        /* JADX WARNING: Missing block: B:19:0x004e, code:
            if (r0 == null) goto L_0x005d;
     */
        /* JADX WARNING: Missing block: B:20:0x0050, code:
            com.miui.internal.yellowpage.ImageLoader.access$400(r4.this$0, r4.mImage, r0);
            notifyBindImage(r4.mImage);
     */
        /* JADX WARNING: Missing block: B:21:0x005d, code:
            com.miui.internal.yellowpage.ImageLoader.access$500(r4.this$0, r4.mImage);
     */
        /* JADX WARNING: Missing block: B:22:0x0064, code:
            return;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            synchronized (ImageLoader.this.BITMAP_CACHE_LOCK) {
                BitmapHolder holder = (BitmapHolder) ImageLoader.this.mBitmapCache.get(this.mImage);
                if (holder != null) {
                    if (holder.mState == State.LOADING) {
                        return;
                    } else if (holder.mState == State.LOADED) {
                        notifyBindImage(this.mImage);
                        return;
                    }
                }
                if (holder == null) {
                    holder = new BitmapHolder();
                }
                holder.mState = State.LOADING;
                ImageLoader.this.mBitmapCache.put(this.mImage, holder);
            }
        }

        private void notifyBindImage(Image image) {
            Message msg = ImageLoader.this.mMainThreadHandler.obtainMessage(1);
            msg.obj = image;
            ImageLoader.this.mMainThreadHandler.sendMessage(msg);
        }
    }

    private enum State {
        NEEDED,
        LOADED,
        LOADING
    }

    public static synchronized ImageLoader getInstance(Context context) {
        ImageLoader imageLoader;
        synchronized (ImageLoader.class) {
            if (sLoader == null) {
                sLoader = new ImageLoader(context);
            }
            imageLoader = sLoader;
        }
        return imageLoader;
    }

    public static synchronized ImageLoader getInstance(Context context, int networkAccess) {
        ImageLoader imageLoader;
        synchronized (ImageLoader.class) {
            if (sLoader == null) {
                sLoader = new ImageLoader(context);
            }
            sLoader.mNetworkAccess = networkAccess;
            imageLoader = sLoader;
        }
        return imageLoader;
    }

    private ImageLoader(Context context) {
        this.mMainThreadHandler = new Handler(context.getMainLooper(), this);
        this.mExecutor = Executors.newFixedThreadPool(6);
        this.mContext = context.getApplicationContext();
    }

    private int getDisplayHeight() {
        if (sDisplayHeight == 0) {
            acquireScreenAttr(this.mContext);
        }
        return sDisplayHeight;
    }

    private int getDisplayWidth() {
        if (sDisplayWidth == 0) {
            acquireScreenAttr(this.mContext);
        }
        return sDisplayWidth;
    }

    private static void acquireScreenAttr(Context context) {
        DisplayMetrics dm = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(dm);
        sDisplayHeight = dm.heightPixels;
        sDisplayWidth = dm.widthPixels;
    }

    public void loadImage(ImageView view, Image image, int defaultImageRes) {
        loadImage(view, image, null, defaultImageRes);
    }

    public void loadImage(ImageView view, Image image, Bitmap defaultBitmap) {
        loadImage(view, image, defaultBitmap, 0);
    }

    public byte[] loadImageBytes(Image image, boolean online) {
        return loadImageBytes(image, online, 0, 0);
    }

    private void loadImage(ImageView view, Image image, Bitmap defaultBitmap, int defaultImageRes) {
        if (image == null || !image.isValid()) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("loadImage: invalid image : ");
            stringBuilder.append(image == null ? null : image.getUrl());
            Log.e(str, stringBuilder.toString());
            this.mPendingRequests.remove(image);
            view.setTag(null);
            bindDefaultImage(view, image, defaultBitmap, defaultImageRes);
        } else {
            view.setTag(image);
            if (bindCachedImage(view, image) == State.LOADED) {
                this.mPendingRequests.remove(image);
                return;
            }
            bindDefaultImage(view, image, defaultBitmap, defaultImageRes);
            this.mPendingRequests.put(image, new WeakReference(view));
            if (requestLoading(view)) {
                this.mPendingRequests.remove(image);
            }
        }
    }

    public Bitmap loadImageBitmap(Image image, boolean online) {
        return decodeBitmap(loadImageBytes(image, online));
    }

    public byte[] loadImageBytes(Image image, boolean online, int defaultRes, int timeout) {
        byte[] bytes = loadCachedImageBytes(image);
        if (bytes != null) {
            return bytes;
        }
        bytes = loadImage(image, online, timeout);
        if (bytes != null) {
            cacheBitmap(image, bytes);
        } else if (defaultRes != 0) {
            Log.v(TAG, "failed to load image, return default res");
            bytes = bitmapToByteArray(((BitmapDrawable) this.mContext.getResources().getDrawable(defaultRes)).getBitmap());
        }
        return bytes;
    }

    private static byte[] bitmapToByteArray(Bitmap bitmap) {
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.PNG, 100, stream);
        return stream.toByteArray();
    }

    private byte[] loadCachedImageBytes(Image image) {
        synchronized (this.BITMAP_CACHE_LOCK) {
            BitmapHolder holder = (BitmapHolder) this.mBitmapCache.get(image);
            if (holder == null || holder.mState != State.LOADED) {
                return null;
            }
            byte[] bitmapToByteArray = bitmapToByteArray(holder.mBitmap);
            return bitmapToByteArray;
        }
    }

    private State bindCachedImage(ImageView view, Image image) {
        synchronized (this.BITMAP_CACHE_LOCK) {
            BitmapHolder holder = (BitmapHolder) this.mBitmapCache.get(image);
            State state;
            if (holder != null && holder.mState == State.LOADED) {
                bindImage(view, holder.mBitmap);
                state = State.LOADED;
                return state;
            } else if (holder != null) {
                state = holder.mState;
                return state;
            } else {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("cannot get image:");
                stringBuilder.append(image);
                Log.d(str, stringBuilder.toString());
                return State.NEEDED;
            }
        }
    }

    private void removeFailedImage(Image image) {
        synchronized (this.BITMAP_CACHE_LOCK) {
            this.mBitmapCache.remove(image);
        }
    }

    private void cacheBitmap(Image image, byte[] bitmapData) {
        synchronized (this.BITMAP_CACHE_LOCK) {
            BitmapHolder holder;
            if (((BitmapHolder) this.mBitmapCache.get(image)) == null) {
                holder = new BitmapHolder();
            } else {
                holder = (BitmapHolder) this.mBitmapCache.remove(image);
            }
            inflateBitmap(image, holder, bitmapData);
            this.mBitmapCache.put(image, holder);
            if (holder.mBitmap != null) {
                holder.mState = State.LOADED;
            } else {
                holder.mState = State.NEEDED;
            }
        }
    }

    private void inflateBitmap(Image image, BitmapHolder holder, byte[] raw) {
        if (raw != null) {
            try {
                Bitmap src = decodeBitmap(raw);
                if (src != null) {
                    holder.mBitmap = image.proccessImage(src);
                    return;
                } else {
                    Log.e(TAG, "Can not decode bitmap bytes.");
                    return;
                }
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
                return;
            }
        }
        Log.e(TAG, "The holder's bytes should not be null");
    }

    private Bitmap decodeBitmap(byte[] bytes) {
        if (bytes == null || bytes.length <= 0) {
            return null;
        }
        Options ops = new Options();
        ops.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bytes, 0, bytes.length, ops);
        ops.inSampleSize = calculateInSampleSize(ops, getDisplayWidth(), getDisplayHeight());
        ops.inJustDecodeBounds = false;
        ops.inPurgeable = true;
        return BitmapFactory.decodeByteArray(bytes, 0, bytes.length, ops);
    }

    private int calculateInSampleSize(Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        if (height <= reqHeight && width <= reqWidth) {
            return 1;
        }
        int heightRatio = Math.round(((float) height) / ((float) reqHeight));
        int widthRatio = Math.round(((float) width) / ((float) reqWidth));
        return heightRatio < widthRatio ? heightRatio : widthRatio;
    }

    private boolean requestLoading(ImageView view) {
        if (this.mPauseLoading || !(view.getTag() instanceof Image)) {
            return false;
        }
        Image image = (Image) view.getTag();
        LinkedList<WeakReference<ImageView>> imageViewList = (LinkedList) this.mRequestingImageViews.get(image);
        if (imageViewList == null) {
            imageViewList = new LinkedList();
            this.mRequestingImageViews.put(image, imageViewList);
        }
        imageViewList.add(new WeakReference(view));
        this.mExecutor.execute(new LoadImageRunnable(image));
        return true;
    }

    public void pauseLoading() {
        this.mPauseLoading = true;
    }

    public void cancelRequest(ImageView view) {
        if (view != null) {
            view.setTag(null);
        }
    }

    public void resumeLoading() {
        this.mPauseLoading = false;
        Iterator<Image> iterator = this.mPendingRequests.keySet().iterator();
        while (iterator.hasNext()) {
            ImageView imageView = (ImageView) ((Reference) this.mPendingRequests.get(iterator.next())).get();
            if (imageView == null) {
                iterator.remove();
            } else if (requestLoading(imageView)) {
                iterator.remove();
            }
        }
    }

    public boolean handleMessage(Message msg) {
        switch (msg.what) {
            case 1:
                onRequestLoaded(msg);
                break;
            case 2:
                onRequestLoad(msg);
                break;
        }
        return false;
    }

    private void onRequestLoad(Message msg) {
        if (msg.obj != null) {
            ImageView view = (ImageView) msg.obj.get();
            if (view != null) {
                requestLoading(view);
            }
        }
    }

    private void onRequestLoaded(Message msg) {
        if (msg.obj != null) {
            Image image = msg.obj;
            synchronized (this.BITMAP_CACHE_LOCK) {
                List<WeakReference<ImageView>> imageViewList = (List) this.mRequestingImageViews.get(image);
                for (Reference<ImageView> ref : imageViewList) {
                    ImageView imageView = (ImageView) ref.get();
                    if (imageView != null) {
                        if (!this.mPendingRequests.containsKey(image) && image.equals(imageView.getTag())) {
                            BitmapHolder holder = (BitmapHolder) this.mBitmapCache.get(image);
                            String str;
                            StringBuilder stringBuilder;
                            if (holder == null || holder.mState != State.LOADED) {
                                str = TAG;
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("handleMessage:image ");
                                stringBuilder.append(image);
                                stringBuilder.append(" was garbage collected");
                                Log.d(str, stringBuilder.toString());
                                Message message = Message.obtain();
                                message.what = 2;
                                message.obj = new WeakReference(imageView);
                                this.mMainThreadHandler.sendMessage(message);
                            } else {
                                bindImage(imageView, holder.mBitmap);
                                str = TAG;
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("handleMessage:ImageView with image ");
                                stringBuilder.append(image);
                                stringBuilder.append(" bound");
                                Log.d(str, stringBuilder.toString());
                            }
                        }
                    }
                }
                imageViewList.clear();
            }
        }
    }

    private void bindImage(ImageView view, Bitmap bitmap) {
        if (view != null && bitmap != null) {
            view.setImageBitmap(bitmap);
        }
    }

    private void bindDefaultImage(ImageView view, Image image, Bitmap defaultBitmap, int defaultResId) {
        Bitmap cachedDefaultBitmap = (Bitmap) this.mDefaultBitmapCache.get(getDefaultImageKey(defaultBitmap, defaultResId));
        if (cachedDefaultBitmap == null) {
            if (defaultBitmap != null) {
                try {
                    cachedDefaultBitmap = image.proccessImage(defaultBitmap);
                } catch (OutOfMemoryError e) {
                    e.printStackTrace();
                }
            } else if (defaultResId != 0) {
                cachedDefaultBitmap = image.proccessImage(((BitmapDrawable) this.mContext.getResources().getDrawable(defaultResId)).getBitmap());
            }
            if (cachedDefaultBitmap != null) {
                this.mDefaultBitmapCache.put(getDefaultImageKey(defaultBitmap, defaultResId), cachedDefaultBitmap);
            }
        }
        view.setImageBitmap(cachedDefaultBitmap);
    }

    private static Object getDefaultImageKey(Bitmap defaultBitmap, int defaultResId) {
        return defaultBitmap != null ? defaultBitmap : Integer.valueOf(defaultResId);
    }

    private byte[] loadImage(Image image, boolean online) {
        return loadImage(image, online, 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:171:0x0259 A:{ExcHandler: java.io.IOException (r0_66 'e' java.io.IOException), PHI: r6 r7 r8 , Splitter: B:7:0x002b} */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x0223 A:{ExcHandler: java.lang.Exception (r0_61 'e' java.lang.Exception), PHI: r6 r7 r8 , Splitter: B:7:0x002b} */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x024a A:{SYNTHETIC, Splitter: B:164:0x024a} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x0255 A:{SYNTHETIC, Splitter: B:169:0x0255} */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x028b A:{SYNTHETIC, Splitter: B:195:0x028b} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x0255 A:{SYNTHETIC, Splitter: B:169:0x0255} */
    /* JADX WARNING: Removed duplicated region for block: B:180:0x026a A:{SYNTHETIC, Splitter: B:180:0x026a} */
    /* JADX WARNING: Removed duplicated region for block: B:185:0x0275 A:{SYNTHETIC, Splitter: B:185:0x0275} */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x0280 A:{SYNTHETIC, Splitter: B:190:0x0280} */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x028b A:{SYNTHETIC, Splitter: B:195:0x028b} */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x0234 A:{SYNTHETIC, Splitter: B:154:0x0234} */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x023f A:{SYNTHETIC, Splitter: B:159:0x023f} */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x024a A:{SYNTHETIC, Splitter: B:164:0x024a} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x0255 A:{SYNTHETIC, Splitter: B:169:0x0255} */
    /* JADX WARNING: Removed duplicated region for block: B:185:0x0275 A:{SYNTHETIC, Splitter: B:185:0x0275} */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x0280 A:{SYNTHETIC, Splitter: B:190:0x0280} */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x028b A:{SYNTHETIC, Splitter: B:195:0x028b} */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x023f A:{SYNTHETIC, Splitter: B:159:0x023f} */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x024a A:{SYNTHETIC, Splitter: B:164:0x024a} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x0255 A:{SYNTHETIC, Splitter: B:169:0x0255} */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x0280 A:{SYNTHETIC, Splitter: B:190:0x0280} */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x028b A:{SYNTHETIC, Splitter: B:195:0x028b} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:82:0x0155, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:84:?, code:
            r0.printStackTrace();
            r1.mContext.getContentResolver().query(android.net.Uri.withAppendedPath(miui.yellowpage.YellowPageContract.ImageLookup.CONTENT_URI_IMAGE_CLOUD, android.net.Uri.encode(r2)).buildUpon().appendQueryParameter("fileName", r22.getName()).build(), null, null, null, null);
     */
    /* JADX WARNING: Missing block: B:143:0x021f, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:144:0x0220, code:
            r3 = r0;
     */
    /* JADX WARNING: Missing block: B:145:0x0223, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:147:?, code:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:148:0x0227, code:
            if (r5 != null) goto L_0x0229;
     */
    /* JADX WARNING: Missing block: B:150:?, code:
            r5.close();
     */
    /* JADX WARNING: Missing block: B:151:0x022d, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:152:0x022e, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:155:?, code:
            r6.close();
     */
    /* JADX WARNING: Missing block: B:156:0x0238, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:157:0x0239, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:160:?, code:
            r7.close();
     */
    /* JADX WARNING: Missing block: B:161:0x0243, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:162:0x0244, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:165:?, code:
            r8.close();
     */
    /* JADX WARNING: Missing block: B:166:0x024e, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:167:0x024f, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:170:?, code:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:171:0x0259, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:173:?, code:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:174:0x025d, code:
            if (r5 != null) goto L_0x025f;
     */
    /* JADX WARNING: Missing block: B:176:?, code:
            r5.close();
     */
    /* JADX WARNING: Missing block: B:177:0x0263, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:178:0x0264, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:181:?, code:
            r6.close();
     */
    /* JADX WARNING: Missing block: B:182:0x026e, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:183:0x026f, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:186:?, code:
            r7.close();
     */
    /* JADX WARNING: Missing block: B:187:0x0279, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:188:0x027a, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:191:?, code:
            r8.close();
     */
    /* JADX WARNING: Missing block: B:192:0x0284, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:193:0x0285, code:
            r3 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:196:?, code:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:225:0x02c8, code:
            if (r5 != null) goto L_0x02ca;
     */
    /* JADX WARNING: Missing block: B:227:?, code:
            r5.close();
     */
    /* JADX WARNING: Missing block: B:228:0x02ce, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:229:0x02cf, code:
            r9 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:230:0x02d3, code:
            if (r6 != null) goto L_0x02d5;
     */
    /* JADX WARNING: Missing block: B:232:?, code:
            r6.close();
     */
    /* JADX WARNING: Missing block: B:233:0x02d9, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:234:0x02da, code:
            r9 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:235:0x02de, code:
            if (r7 != null) goto L_0x02e0;
     */
    /* JADX WARNING: Missing block: B:237:?, code:
            r7.close();
     */
    /* JADX WARNING: Missing block: B:238:0x02e4, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:239:0x02e5, code:
            r9 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:240:0x02e9, code:
            if (r8 != null) goto L_0x02eb;
     */
    /* JADX WARNING: Missing block: B:242:?, code:
            r8.close();
     */
    /* JADX WARNING: Missing block: B:243:0x02ef, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:244:0x02f0, code:
            r9 = r0;
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:245:0x02f4, code:
            if (r4 != null) goto L_0x02f6;
     */
    /* JADX WARNING: Missing block: B:247:?, code:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:248:0x02fa, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:249:0x02fb, code:
            r9 = r0;
            r0.printStackTrace();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] loadImage(Image image, boolean online, int timeout) {
        AssetFileDescriptor afd;
        ByteArrayOutputStream bos;
        FileInputStream is;
        AssetFileDescriptor cloudImage;
        IOException iOException;
        IOException iOException2;
        IOException iOException3;
        String url = image.getUrl();
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        afd = null;
        try {
            afd = this.mContext.getContentResolver().openAssetFileDescriptor(Uri.withAppendedPath(ImageLookup.CONTENT_URI_IMAGE, image.getName()), MiCloudSmsCmd.TYPE_WIPE);
            OutputStream os = null;
            bos = null;
            is = null;
            cloudImage = null;
            try {
                bos = new ByteArrayOutputStream();
                int read;
                byte[] buffer;
                if (afd.getLength() == 0 && online) {
                    Builder cloudImageUri = Uri.withAppendedPath(ImageLookup.CONTENT_URI_IMAGE_CLOUD, URLEncoder.encode(url)).buildUpon();
                    cloudImageUri.appendQueryParameter("timeout", String.valueOf(timeout));
                    cloudImageUri.appendQueryParameter("overwrite_network_access", String.valueOf(this.mNetworkAccess));
                    cloudImage = this.mContext.getContentResolver().openAssetFileDescriptor(cloudImageUri.build(), "r");
                    if (cloudImage == null || cloudImage.getLength() == 0) {
                        if (os != null) {
                            try {
                                os.close();
                            } catch (IOException e) {
                                iOException = e;
                                e.printStackTrace();
                            }
                        }
                        try {
                            bos.close();
                        } catch (IOException e2) {
                            iOException = e2;
                            e2.printStackTrace();
                        }
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e22) {
                                iOException = e22;
                                e22.printStackTrace();
                            }
                        }
                        if (cloudImage != null) {
                            try {
                                cloudImage.close();
                            } catch (IOException e222) {
                                iOException = e222;
                                e222.printStackTrace();
                            }
                        }
                        if (afd != null) {
                            try {
                                afd.close();
                            } catch (IOException e2222) {
                                iOException = e2222;
                                e2222.printStackTrace();
                            }
                        }
                        return null;
                    }
                    is = cloudImage.createInputStream();
                    byte[] buffer2 = new byte[4096];
                    while (true) {
                        read = is.read(buffer2);
                        int len = read;
                        if (read == -1) {
                            break;
                        }
                        bos.write(buffer2, 0, len);
                    }
                    buffer = bos.toByteArray();
                    Options opt = new Options();
                    opt.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(buffer, 0, buffer.length, opt);
                    if (TextUtils.isEmpty(opt.outMimeType) || !opt.outMimeType.startsWith(ImageLookup.DIRECTORY_IMAGE)) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Invalid mime type [");
                        stringBuilder.append(opt.outMimeType);
                        stringBuilder.append("]");
                        throw new IOException(stringBuilder.toString());
                    } else if (buffer.length > 0) {
                        os = afd.createOutputStream();
                        os.write(buffer);
                        os.flush();
                        if (os != null) {
                            try {
                                os.close();
                            } catch (IOException e22222) {
                                iOException2 = e22222;
                                e22222.printStackTrace();
                            }
                        }
                        try {
                            bos.close();
                        } catch (IOException e222222) {
                            iOException2 = e222222;
                            e222222.printStackTrace();
                        }
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e2222222) {
                                iOException2 = e2222222;
                                e2222222.printStackTrace();
                            }
                        }
                        if (cloudImage != null) {
                            try {
                                cloudImage.close();
                            } catch (IOException e22222222) {
                                iOException2 = e22222222;
                                e22222222.printStackTrace();
                            }
                        }
                        if (afd != null) {
                            try {
                                afd.close();
                            } catch (IOException e222222222) {
                                iOException2 = e222222222;
                                e222222222.printStackTrace();
                            }
                        }
                        return buffer;
                    }
                } else if (afd.getLength() > 0) {
                    is = afd.createInputStream();
                    byte[] buffer3 = new byte[4096];
                    while (true) {
                        read = is.read(buffer3);
                        int len2 = read;
                        if (read == -1) {
                            break;
                        }
                        bos.write(buffer3, 0, len2);
                        int i = len2;
                    }
                    if (bos.size() > 0) {
                        buffer = bos.toByteArray();
                        if (os != null) {
                            try {
                                os.close();
                            } catch (IOException e2222222222) {
                                iOException3 = e2222222222;
                                e2222222222.printStackTrace();
                            }
                        }
                        try {
                            bos.close();
                        } catch (IOException e22222222222) {
                            iOException3 = e22222222222;
                            e22222222222.printStackTrace();
                        }
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e222222222222) {
                                iOException3 = e222222222222;
                                e222222222222.printStackTrace();
                            }
                        }
                        if (cloudImage != null) {
                            try {
                                cloudImage.close();
                            } catch (IOException e2222222222222) {
                                iOException3 = e2222222222222;
                                e2222222222222.printStackTrace();
                            }
                        }
                        if (afd != null) {
                            try {
                                afd.close();
                            } catch (IOException e22222222222222) {
                                iOException3 = e22222222222222;
                                e22222222222222.printStackTrace();
                            }
                        }
                        return buffer;
                    }
                }
                if (os != null) {
                    try {
                        os.close();
                    } catch (IOException e222222222222222) {
                        iOException = e222222222222222;
                        e222222222222222.printStackTrace();
                    }
                }
                try {
                    bos.close();
                } catch (IOException e2222222222222222) {
                    iOException = e2222222222222222;
                    e2222222222222222.printStackTrace();
                }
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e22222222222222222) {
                        iOException = e22222222222222222;
                        e22222222222222222.printStackTrace();
                    }
                }
                if (cloudImage != null) {
                    try {
                        cloudImage.close();
                    } catch (IOException e222222222222222222) {
                        iOException = e222222222222222222;
                        e222222222222222222.printStackTrace();
                    }
                }
                if (afd != null) {
                    try {
                        afd.close();
                    } catch (IOException e2222222222222222222) {
                        iOException = e2222222222222222222;
                        e2222222222222222222.printStackTrace();
                    }
                }
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
                if (os != null) {
                    try {
                        os.close();
                    } catch (IOException e22222222222222222222) {
                        iOException = e22222222222222222222;
                        e22222222222222222222.printStackTrace();
                    }
                }
                if (bos != null) {
                    try {
                        bos.close();
                    } catch (IOException e222222222222222222222) {
                        iOException = e222222222222222222222;
                        e222222222222222222222.printStackTrace();
                    }
                }
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e2222222222222222222222) {
                        iOException = e2222222222222222222222;
                        e2222222222222222222222.printStackTrace();
                    }
                }
                if (cloudImage != null) {
                    try {
                        cloudImage.close();
                    } catch (IOException e22222222222222222222222) {
                        iOException = e22222222222222222222222;
                        e22222222222222222222222.printStackTrace();
                    }
                }
                if (afd != null) {
                    afd.close();
                }
            } catch (IOException e4) {
            } catch (Exception e5) {
            }
            return null;
        } catch (Exception e6) {
            Log.e(TAG, "The yellowpage provider's image can not be written now", e6);
            return null;
        }
        if (cloudImage != null) {
        }
        if (afd != null) {
        }
        return null;
        if (afd != null) {
        }
        return null;
        if (afd != null) {
        }
        return null;
        if (bos != null) {
        }
        if (is != null) {
        }
        if (cloudImage != null) {
        }
        if (afd != null) {
        }
        return null;
        if (bos != null) {
        }
        if (is != null) {
        }
        if (cloudImage != null) {
        }
        if (afd != null) {
        }
        return null;
        if (is != null) {
        }
        if (cloudImage != null) {
        }
        if (afd != null) {
        }
        return null;
        if (is != null) {
        }
        if (cloudImage != null) {
        }
        if (afd != null) {
        }
        return null;
        if (cloudImage != null) {
        }
        if (afd != null) {
        }
        return null;
    }
}
