package com.xiaomi.push.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.xiaomi.channel.commonutils.file.FileUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;

public class NotificationIconHelper {
    private static long currentPicFileSize;

    public static class GetDataResult {
        byte[] data;
        int downloadSize;

        public GetDataResult(byte[] data, int downloadSize) {
            this.data = data;
            this.downloadSize = downloadSize;
        }
    }

    public static class GetIconResult {
        public Bitmap bitmap;
        public long downloadSize;

        public GetIconResult(Bitmap bitmap, long downloadSize) {
            this.bitmap = bitmap;
            this.downloadSize = downloadSize;
        }
    }

    public static GetIconResult getIconFromUrl(Context context, String urlStr, boolean isSizeLimited) {
        Throwable e;
        Throwable th;
        InputStream bitmapStream = null;
        GetIconResult result = new GetIconResult(null, 0);
        Bitmap pic = getBitmapFromFile(context, urlStr);
        if (pic != null) {
            result.bitmap = pic;
        } else {
            try {
                GetDataResult getDataResult = getDataFromUrl(urlStr, isSizeLimited);
                if (getDataResult != null) {
                    result.downloadSize = (long) getDataResult.downloadSize;
                    byte[] data = getDataResult.data;
                    if (data != null) {
                        if (isSizeLimited) {
                            InputStream bitmapStream2 = new ByteArrayInputStream(data);
                            try {
                                int sampleSize = getSampleSize(context, bitmapStream2);
                                Options options = new Options();
                                options.inSampleSize = sampleSize;
                                result.bitmap = BitmapFactory.decodeByteArray(data, 0, data.length, options);
                                bitmapStream = bitmapStream2;
                            } catch (Exception e2) {
                                e = e2;
                                bitmapStream = bitmapStream2;
                                try {
                                    MyLog.e(e);
                                    IOUtils.closeQuietly(bitmapStream);
                                    return result;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                bitmapStream = bitmapStream2;
                                IOUtils.closeQuietly(bitmapStream);
                                throw th;
                            }
                        }
                        result.bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
                    }
                    savePic2File(context, getDataResult.data, urlStr);
                }
            } catch (Exception e3) {
                e = e3;
            }
            IOUtils.closeQuietly(bitmapStream);
        }
        return result;
    }

    /* JADX WARNING: Missing block: B:37:0x00d4, code:
            if (r2 == null) goto L_0x00d9;
     */
    /* JADX WARNING: Missing block: B:38:0x00d6, code:
            r2.disconnect();
     */
    /* JADX WARNING: Missing block: B:48:0x00f4, code:
            if (r2 == null) goto L_0x00d9;
     */
    /* JADX WARNING: Missing block: B:62:?, code:
            return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static GetDataResult getDataFromUrl(String urlStr, boolean isSizeLimited) {
        InputStream inputStream = null;
        HttpURLConnection conn = null;
        try {
            GetDataResult getDataResult;
            conn = (HttpURLConnection) new URL(urlStr).openConnection();
            conn.setConnectTimeout(8000);
            conn.setReadTimeout(20000);
            conn.connect();
            int contentLen = conn.getContentLength();
            if (!isSizeLimited || contentLen <= 102400) {
                int responseCode = conn.getResponseCode();
                if (responseCode != 200) {
                    MyLog.w("Invalid Http Response Code " + responseCode + " received");
                    getDataResult = null;
                    IOUtils.closeQuietly(null);
                    if (conn == null) {
                        return null;
                    }
                }
                inputStream = conn.getInputStream();
                ByteArrayOutputStream tempOutStream = new ByteArrayOutputStream();
                int availableSpace = isSizeLimited ? 102400 : 2048000;
                byte[] dataUnit = new byte[1024];
                while (availableSpace > 0) {
                    int readCount = inputStream.read(dataUnit, 0, 1024);
                    if (readCount == -1) {
                        break;
                    }
                    availableSpace -= readCount;
                    tempOutStream.write(dataUnit, 0, readCount);
                }
                if (availableSpace <= 0) {
                    MyLog.w("length 102400 exhausted.");
                    getDataResult = new GetDataResult(null, 102400);
                    IOUtils.closeQuietly(inputStream);
                    if (conn == null) {
                        return getDataResult;
                    }
                }
                byte[] data = tempOutStream.toByteArray();
                getDataResult = new GetDataResult(data, data.length);
                IOUtils.closeQuietly(inputStream);
                if (conn == null) {
                    return getDataResult;
                }
            }
            MyLog.w("Bitmap size is too big, max size is 102400  contentLen size is " + contentLen + " from url " + urlStr);
            getDataResult = null;
            IOUtils.closeQuietly(null);
            if (conn == null) {
                return null;
            }
            conn.disconnect();
            return getDataResult;
        } catch (SocketTimeoutException e) {
            MyLog.e("Connect timeout to " + urlStr);
            IOUtils.closeQuietly(inputStream);
        } catch (Throwable e2) {
            MyLog.e(e2);
            IOUtils.closeQuietly(inputStream);
        } catch (Throwable th) {
            IOUtils.closeQuietly(inputStream);
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    public static Bitmap getIconFromUri(Context context, String uriStr) {
        Bitmap bitmap = null;
        Uri uri = Uri.parse(uriStr);
        InputStream is = null;
        InputStream isForBitmapSize = null;
        try {
            isForBitmapSize = context.getContentResolver().openInputStream(uri);
            int sampleSize = getSampleSize(context, isForBitmapSize);
            is = context.getContentResolver().openInputStream(uri);
            Options options = new Options();
            options.inSampleSize = sampleSize;
            bitmap = BitmapFactory.decodeStream(is, null, options);
            IOUtils.closeQuietly(is);
        } catch (Throwable e) {
            MyLog.e(e);
            IOUtils.closeQuietly(is);
        } catch (Throwable th) {
            IOUtils.closeQuietly(is);
            IOUtils.closeQuietly(isForBitmapSize);
        }
        IOUtils.closeQuietly(isForBitmapSize);
        return bitmap;
    }

    private static int getSampleSize(Context context, InputStream inputStream) {
        Options opt = new Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, opt);
        if (opt.outWidth == -1 || opt.outHeight == -1) {
            MyLog.w("decode dimension failed for bitmap.");
            return 1;
        }
        int targetWidth = Math.round((((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f) * 48.0f);
        int targetHeight = targetWidth;
        if (opt.outWidth <= targetWidth || opt.outHeight <= targetHeight) {
            return 1;
        }
        return Math.min(opt.outWidth / targetWidth, opt.outHeight / targetHeight);
    }

    private static Bitmap getBitmapFromFile(Context context, String picUrl) {
        Throwable e;
        Throwable th;
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon", XMStringUtils.getMd5Digest(picUrl));
        if (!file.exists()) {
            return null;
        }
        Bitmap result = null;
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(file);
            try {
                result = BitmapFactory.decodeStream(fis2);
                file.setLastModified(System.currentTimeMillis());
                IOUtils.closeQuietly(fis2);
                fis = fis2;
                return result;
            } catch (Exception e2) {
                e = e2;
                fis = fis2;
                try {
                    MyLog.e(e);
                    IOUtils.closeQuietly(fis);
                    return result;
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(fis);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fis = fis2;
                IOUtils.closeQuietly(fis);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            MyLog.e(e);
            IOUtils.closeQuietly(fis);
            return result;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void savePic2File(Context context, byte[] data, String picUrl) {
        Throwable e;
        Throwable th;
        if (data == null) {
            MyLog.w("cannot save small icon cause bitmap is null");
            return;
        }
        cleanCachedPic(context);
        File dir = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        BufferedOutputStream bos = null;
        FileOutputStream fos = null;
        File file = new File(dir, XMStringUtils.getMd5Digest(picUrl));
        try {
            BufferedOutputStream bos2;
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fos2 = new FileOutputStream(file);
            try {
                bos2 = new BufferedOutputStream(fos2);
            } catch (Exception e2) {
                e = e2;
                fos = fos2;
                try {
                    MyLog.e(e);
                    IOUtils.closeQuietly(bos);
                    IOUtils.closeQuietly(fos);
                    if (currentPicFileSize != 0) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(bos);
                    IOUtils.closeQuietly(fos);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fos = fos2;
                IOUtils.closeQuietly(bos);
                IOUtils.closeQuietly(fos);
                throw th;
            }
            try {
                bos2.write(data);
                bos2.flush();
                IOUtils.closeQuietly(bos2);
                IOUtils.closeQuietly(fos2);
                fos = fos2;
                bos = bos2;
            } catch (Exception e3) {
                e = e3;
                fos = fos2;
                bos = bos2;
                MyLog.e(e);
                IOUtils.closeQuietly(bos);
                IOUtils.closeQuietly(fos);
                if (currentPicFileSize != 0) {
                }
            } catch (Throwable th4) {
                th = th4;
                fos = fos2;
                bos = bos2;
                IOUtils.closeQuietly(bos);
                IOUtils.closeQuietly(fos);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            MyLog.e(e);
            IOUtils.closeQuietly(bos);
            IOUtils.closeQuietly(fos);
            if (currentPicFileSize != 0) {
            }
        }
        if (currentPicFileSize != 0) {
            currentPicFileSize = FileUtils.getFolderSize(new File(context.getCacheDir().getPath() + File.separator + "mipush_icon")) + file.length();
        }
    }

    private static void cleanCachedPic(Context context) {
        File dir = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (dir.exists()) {
            if (currentPicFileSize == 0) {
                currentPicFileSize = FileUtils.getFolderSize(dir);
            }
            if (currentPicFileSize > 15728640) {
                try {
                    File[] fileList = dir.listFiles();
                    int i = 0;
                    while (i < fileList.length) {
                        if (!fileList[i].isDirectory() && Math.abs(System.currentTimeMillis() - fileList[i].lastModified()) > 1209600) {
                            fileList[i].delete();
                        }
                        i++;
                    }
                } catch (Throwable e) {
                    MyLog.e(e);
                }
                currentPicFileSize = 0;
            }
        }
    }
}
