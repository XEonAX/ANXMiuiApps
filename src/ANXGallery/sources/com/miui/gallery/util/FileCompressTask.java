package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public class FileCompressTask implements Job {
    private String mCompressFolder;
    private List<String> mCompressItems;
    private OnCompressListener mCompressListener;
    private DisplayImageOptions mDisplayImageOptions = new Builder().imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).build();

    public interface OnCompressListener {
        void onCompressComplete(List<String> list, List<String> list2);

        void onCompressProgress(float f);
    }

    public FileCompressTask(List<String> items, OnCompressListener listener, String compressFolder) {
        this.mCompressItems = items;
        this.mCompressListener = listener;
        this.mCompressFolder = compressFolder;
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x013b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Object run(JobContext jc) {
        int totalSize;
        int handledSize;
        FileOutputStream fos;
        final float progress;
        Exception e;
        Throwable th;
        if (BaseMiscUtil.isValid(this.mCompressItems)) {
            totalSize = this.mCompressItems.size();
            handledSize = 0;
            final List<String> success = new ArrayList();
            final List<String> fails = new ArrayList();
            File compressFolder = new File(StorageUtils.getSafePathInPriorStorageForUnadapted(this.mCompressFolder));
            if (compressFolder.exists()) {
                MediaFileUtils.deleteFileType(FileType.FOLDER, compressFolder);
            }
            FileUtils.createFolder(compressFolder, true);
            for (String uri : this.mCompressItems) {
                if (jc.isCancelled()) {
                    return null;
                }
                Bitmap bitmap = ImageLoader.getInstance().loadImageSync(Scheme.FILE.wrap(uri), this.mDisplayImageOptions);
                if (BitmapUtils.isValidate(bitmap)) {
                    String title = FileUtils.getFileTitle(FileUtils.getFileName(uri));
                    File tarFile = new File(compressFolder, title + ".jpg");
                    if (tarFile.exists()) {
                        tarFile = new File(compressFolder, title + "_" + System.currentTimeMillis() + ".jpg");
                    }
                    fos = null;
                    try {
                        FileOutputStream fos2 = new FileOutputStream(tarFile);
                        try {
                            bitmap.compress(CompressFormat.JPEG, 90, fos2);
                            success.add(tarFile.getAbsolutePath());
                            BaseMiscUtil.closeSilently(fos2);
                            handledSize++;
                            if (this.mCompressListener != null) {
                                progress = (1.0f * ((float) handledSize)) / ((float) totalSize);
                                ThreadManager.getMainHandler().post(new Runnable() {
                                    public void run() {
                                        FileCompressTask.this.mCompressListener.onCompressProgress(progress);
                                    }
                                });
                            }
                        } catch (Exception e2) {
                            e = e2;
                            fos = fos2;
                            try {
                                e.printStackTrace();
                                BaseMiscUtil.closeSilently(fos);
                                handledSize++;
                                if (this.mCompressListener != null) {
                                    progress = (1.0f * ((float) handledSize)) / ((float) totalSize);
                                    ThreadManager.getMainHandler().post(/* anonymous class already generated */);
                                }
                                fails.add(uri);
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fos = fos2;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        BaseMiscUtil.closeSilently(fos);
                        handledSize++;
                        if (this.mCompressListener != null) {
                        }
                        fails.add(uri);
                    }
                }
                fails.add(uri);
            }
            if (this.mCompressListener != null) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        FileCompressTask.this.mCompressListener.onCompressProgress(1.0f);
                        FileCompressTask.this.mCompressListener.onCompressComplete(success, fails);
                    }
                });
            }
        }
        return null;
        BaseMiscUtil.closeSilently(fos);
        handledSize++;
        if (this.mCompressListener != null) {
            progress = (1.0f * ((float) handledSize)) / ((float) totalSize);
            ThreadManager.getMainHandler().post(/* anonymous class already generated */);
        }
        throw th;
    }
}
