package com.miui.gallery.editor.photo.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.miui.gallery.editor.photo.utils.BigBitmapLoadUtils;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifTag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class RenderTask {
    private Callback mCallback;
    private boolean mCancelled = false;
    private Context mContext;
    private Uri mCurrent;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private Generator mOutputGenerator;
    private Iterator<Uri> mTasks;

    public interface Callback {
        void onItemFinish(Uri uri, Uri uri2);

        void onTaskCancelled();

        void onTaskError();

        void onTaskFinish();
    }

    public interface Generator {
        Uri generate(Uri uri);
    }

    private static class Parameter {
        Uri mOutput;
        Uri mSource;

        public Parameter(Uri source, Uri output) {
            this.mSource = source;
            this.mOutput = output;
        }
    }

    private class PrepareTask extends AsyncTask<Parameter, Void, Parameter> {
        private PrepareTask() {
        }

        /* synthetic */ PrepareTask(RenderTask x0, AnonymousClass1 x1) {
            this();
        }

        protected Parameter doInBackground(Parameter... params) {
            Parameter info = params[0];
            Bitmap source = null;
            File parent = new File(new File(info.mOutput.getPath()).getParent());
            if (!parent.exists() && !parent.mkdirs()) {
                return null;
            }
            ExifInterface exif = new ExifInterface();
            try {
                exif.readExif(info.mSource.getPath());
            } catch (Throwable e) {
                Log.w("RenderTask", e);
            } catch (Throwable e2) {
                Log.w("RenderTask", e2);
            }
            try {
                source = RenderTask.this.decodeOrigin(info.mSource, exif);
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
            }
            if (source == null) {
                return info;
            }
            AutoRenderer renderer = new AutoRenderer(RenderTask.this.mContext);
            Bitmap render = renderer.render(source);
            if (render == null || !RenderTask.this.saveShareBitmap(render, info.mOutput, exif)) {
                RenderTask.this.performItemFinish(null);
            } else {
                RenderTask.this.performItemFinish(info.mOutput);
            }
            renderer.release();
            return info;
        }

        protected void onPostExecute(Parameter info) {
            super.onPostExecute(info);
            if (info == null) {
                RenderTask.this.mCallback.onTaskError();
            } else {
                Log.d("RenderTask", "schedule for %s -> %s", info.mSource, info.mOutput);
            }
        }
    }

    public RenderTask(Context context, Collection<Uri> tasks, Generator outputGenerator) {
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        } else if (tasks == null) {
            throw new IllegalArgumentException("tasks can't be null");
        } else if (outputGenerator == null) {
            throw new IllegalArgumentException("generator can't be null");
        } else {
            ArrayList<Uri> list = new ArrayList(tasks);
            this.mContext = context;
            this.mTasks = list.iterator();
            this.mOutputGenerator = outputGenerator;
        }
    }

    public void start() {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new RuntimeException("can't run in sub thread.");
        } else if (this.mCancelled) {
            Log.d("RenderTask", "render cancelled.");
            if (this.mCallback != null) {
                this.mCallback.onTaskCancelled();
            }
        } else if (!scheduleNext() && this.mCallback != null) {
            this.mCallback.onTaskFinish();
        }
    }

    public void cancel() {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new RuntimeException("can't run in sub thread.");
        }
        this.mCancelled = true;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    private boolean scheduleNext() {
        if (!this.mTasks.hasNext()) {
            return false;
        }
        this.mCurrent = (Uri) this.mTasks.next();
        Uri uri = this.mOutputGenerator.generate(this.mCurrent);
        new PrepareTask(this, null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Parameter[]{new Parameter(this.mCurrent, uri)});
        return true;
    }

    public void performItemFinish(final Uri out) {
        Log.d("RenderTask", "render finish: %s", (Object) out);
        this.mHandler.post(new Runnable() {
            public void run() {
                if (RenderTask.this.mCallback != null) {
                    RenderTask.this.mCallback.onItemFinish(RenderTask.this.mCurrent, out);
                }
                if (RenderTask.this.mCancelled) {
                    Log.d("RenderTask", "render cancelled.");
                    if (RenderTask.this.mCallback != null) {
                        RenderTask.this.mCallback.onTaskCancelled();
                    }
                } else if (!RenderTask.this.scheduleNext() && RenderTask.this.mCallback != null) {
                    RenderTask.this.mCallback.onTaskFinish();
                }
            }
        });
    }

    public Bitmap decodeOrigin(Uri source, ExifInterface exif) throws FileNotFoundException {
        Options opt = new Options();
        opt.inJustDecodeBounds = true;
        Bitmaps.decodeUri(this.mContext, source, opt);
        opt.inJustDecodeBounds = false;
        opt.inSampleSize = BigBitmapLoadUtils.calculateInSampleSize(this.mContext, opt.outWidth, opt.outHeight);
        return Bitmaps.setConfig(Bitmaps.joinExif(Bitmaps.decodeUri(this.mContext, source, opt), ExifUtil.getRotationDegrees(exif), null));
    }

    private boolean saveShareBitmap(Bitmap bmp, Uri outUri, ExifInterface exif) {
        OutputStream out;
        OutputStream stream = IoUtils.openOutputStream("RenderTask", this.mContext, outUri);
        List<ExifTag> tags = null;
        if (exif != null) {
            tags = exif.getAllTags();
        }
        if (tags == null || tags.isEmpty()) {
            Log.i("RenderTask", "no exif found in source image");
            out = stream;
        } else {
            Log.d("RenderTask", "filter exif");
            ExifInterface dst = new ExifInterface();
            for (ExifTag tag : tags) {
                short tagId = tag.getTagId();
                if (tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_ORIENTATION) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_IMAGE_WIDTH) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_IMAGE_LENGTH) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_XIAOMI_COMMENT) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_USER_COMMENT)) {
                    Log.d("RenderTask", "skip user comment");
                } else {
                    dst.setTag(tag);
                }
            }
            dst.setTag(dst.buildTag(ExifInterface.TAG_ORIENTATION, Short.valueOf(ExifInterface.getOrientationValueForRotation(0))));
            dst.setTag(dst.buildTag(ExifInterface.TAG_IMAGE_WIDTH, Integer.valueOf(bmp.getWidth())));
            dst.setTag(dst.buildTag(ExifInterface.TAG_IMAGE_LENGTH, Integer.valueOf(bmp.getHeight())));
            out = dst.getExifWriterStream(stream);
        }
        try {
            boolean success = bmp.compress(CompressFormat.JPEG, 95, out);
            if (success && out != null) {
                out.flush();
            }
            IoUtils.close("RenderTask", out);
            return success;
        } catch (Throwable e) {
            Log.w("RenderTask", e);
            IoUtils.close("RenderTask", out);
            return false;
        } catch (Throwable th) {
            IoUtils.close("RenderTask", out);
            throw th;
        }
    }
}
