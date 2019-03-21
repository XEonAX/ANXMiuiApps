package com.miui.gallery.collage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class BitmapManager {
    private BitmapLoaderListener mBitmapLoaderListener;
    private HashMap<Bitmap, Uri> mBitmapUriMap = new HashMap();
    private Bitmap[] mBitmaps;
    private Context mContext;
    private DecodeBitmapTask mDecodeTask;

    private interface CustomLoadListener {
        void onBitmapLoad(Bitmap[] bitmapArr);
    }

    interface BitmapLoaderListener {
        void onBitmapLoad(Bitmap[] bitmapArr);

        void onBitmapReplace(Bitmap bitmap, Bitmap bitmap2);
    }

    private static class DecodeBitmapTask extends AsyncTask<Uri, Void, Bitmap[]> {
        Context mContext;
        CustomLoadListener mLoadListener;

        DecodeBitmapTask(CustomLoadListener loadListener, Context context) {
            this.mLoadListener = loadListener;
            this.mContext = context;
        }

        protected Bitmap[] doInBackground(Uri... params) {
            List<Bitmap> bitmapList = new ArrayList();
            for (Uri param : params) {
                Bitmap bitmap = BitmapManager.loadSuitableBitmapOnScreen(this.mContext, param);
                if (bitmap != null) {
                    bitmapList.add(bitmap);
                }
            }
            return (Bitmap[]) bitmapList.toArray(new Bitmap[bitmapList.size()]);
        }

        protected void onPostExecute(Bitmap[] bitmaps) {
            if (bitmaps != null && bitmaps.length > 0 && this.mLoadListener != null) {
                this.mLoadListener.onBitmapLoad(bitmaps);
            }
        }
    }

    public BitmapManager(Context context, BitmapLoaderListener bitmapLoaderListener) {
        this.mContext = context.getApplicationContext();
        this.mBitmapLoaderListener = bitmapLoaderListener;
    }

    public void loadBitmapAsync(final Uri[] uris) {
        this.mDecodeTask = new DecodeBitmapTask(new CustomLoadListener() {
            public void onBitmapLoad(Bitmap[] bitmaps) {
                BitmapManager.this.mBitmapUriMap.clear();
                BitmapManager.this.mBitmaps = bitmaps;
                for (int i = 0; i < bitmaps.length; i++) {
                    BitmapManager.this.mBitmapUriMap.put(bitmaps[i], uris[i]);
                }
                if (BitmapManager.this.mBitmapLoaderListener != null) {
                    BitmapManager.this.mBitmapLoaderListener.onBitmapLoad(bitmaps);
                }
            }
        }, this.mContext);
        this.mDecodeTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uris);
    }

    public void replaceBitmap(final Bitmap from, final Uri target) {
        new DecodeBitmapTask(new CustomLoadListener() {
            public void onBitmapLoad(Bitmap[] bitmaps) {
                Bitmap to = bitmaps[0];
                for (int i = 0; i < BitmapManager.this.mBitmaps.length; i++) {
                    if (BitmapManager.this.mBitmaps[i] == from) {
                        BitmapManager.this.mBitmaps[i] = to;
                        break;
                    }
                }
                BitmapManager.this.mBitmapUriMap.remove(from);
                BitmapManager.this.mBitmapUriMap.put(to, target);
                if (BitmapManager.this.mBitmapLoaderListener != null) {
                    BitmapManager.this.mBitmapLoaderListener.onBitmapReplace(from, to);
                }
            }
        }, this.mContext).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[]{target});
    }

    public boolean isEmpty() {
        return this.mBitmaps == null || this.mBitmaps.length == 0;
    }

    public int size() {
        return this.mBitmaps == null ? 0 : this.mBitmaps.length;
    }

    public Bitmap[] data() {
        return this.mBitmaps;
    }

    public void setBitmapLoaderListener(BitmapLoaderListener bitmapLoaderListener) {
        this.mBitmapLoaderListener = bitmapLoaderListener;
    }

    public Uri getOriginUriByBitmap(Bitmap bitmap) {
        return (Uri) this.mBitmapUriMap.get(bitmap);
    }

    public Bitmap loadSuitableBitmapBySize(int width, int height, Uri uri) {
        return loadSuitableBitmapBySize(this.mContext, width, height, uri);
    }

    private static Bitmap loadSuitableBitmapBySize(Context context, int width, int height, Uri uri) {
        try {
            Options opt = new Options();
            opt.inJustDecodeBounds = true;
            Bitmaps.decodeUri(context, uri, opt);
            int scale = Math.max(Math.max(opt.outHeight / height, opt.outWidth / width), 1);
            opt.inJustDecodeBounds = false;
            opt.inMutable = true;
            opt.inSampleSize = Integer.highestOneBit(scale) << 1;
            return Bitmaps.joinExif(Bitmaps.decodeUri(context, uri, opt), ExifUtil.getRotationDegrees(Bitmaps.readExif(context, uri)), opt);
        } catch (Throwable e) {
            Log.e("BitmapManager", e);
            return null;
        }
    }

    public static Bitmap loadSuitableBitmapOnScreen(Context context, Uri uri) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        return loadSuitableBitmapBySize(context, dm.widthPixels, dm.heightPixels, uri);
    }
}
