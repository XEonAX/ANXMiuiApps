package com.xiaomi.scanner.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.view.View;
import com.xiaomi.recognizer.Quadrangle;
import com.xiaomi.recognizer.RecognizeResult;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.android.spdy.SpdyRequest;

public class ImageUtils {
    private static final Tag TAG = new Tag("ImageUtils");

    public static Bitmap rectifyBitmap(Bitmap bitmap, RecognizeResult result) {
        return rectifyBitmap(bitmap, result, false);
    }

    public static Bitmap rectifyBitmap(Bitmap bitmap, RecognizeResult corners, boolean enhance) {
        if (bitmap == null || bitmap.getHeight() < 1 || bitmap.getWidth() < 1) {
            Log.e(TAG, "rectifyBitmap: invalid bitmap!");
            return null;
        } else if (corners == null || corners.quadrangleCorners == null || corners.quadrangleCorners.length != 8) {
            Log.e(TAG, "rectifyBitmap: invalid corners " + corners);
            return null;
        } else {
            long start = System.currentTimeMillis();
            Bitmap rectified = Quadrangle.rectify(bitmap, corners.quadrangleCorners, enhance);
            Log.t(TAG, "rectifyBitmap: cost=" + (System.currentTimeMillis() - start));
            return rectified;
        }
    }

    public static String saveJpeg(Bitmap bm) {
        long dataTake = System.currentTimeMillis();
        String title = CameraUtil.instance().createJpegName(dataTake);
        String jpegPath = Storage.DIRECTORY + File.separator + title + Util.JPEG_POSTFIX;
        if (Util.saveBitmap(bm, jpegPath, false)) {
            Log.t(TAG, "saveJpeg: " + jpegPath + "->" + Util.addImageToMediaStore(ScannerApp.getAndroidContext().getContentResolver(), title, dataTake, 0, new File(jpegPath).length(), jpegPath, bm.getWidth(), bm.getHeight(), Util.MIME_TYPE_JPEG));
            return jpegPath;
        }
        Log.d(TAG, "saveJpeg: fail to save " + jpegPath);
        return null;
    }

    public static Bitmap loadBitmapFromView(View v) {
        int w = v.getWidth();
        int h = v.getHeight();
        Bitmap b = null;
        try {
            b = Bitmap.createBitmap(w, h, Config.ARGB_8888);
            Canvas c = new Canvas(b);
            v.layout(0, 0, w, h);
            v.draw(c);
            return b;
        } catch (Throwable e) {
            Log.d(TAG, "loadBitmapFromView error = " + e);
            return b;
        }
    }

    public static Bitmap loadImageFromServer(String imageUrl) {
        try {
            HttpURLConnection con = (HttpURLConnection) new URL(imageUrl).openConnection();
            con.setRequestMethod(SpdyRequest.GET_METHOD);
            con.setConnectTimeout(5000);
            InputStream in = con.getInputStream();
            byte[] buf = new byte[1024];
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            while (true) {
                int len = in.read(buf);
                if (len != -1) {
                    out.write(buf, 0, len);
                } else {
                    out.close();
                    byte[] data = out.toByteArray();
                    return BitmapFactory.decodeByteArray(data, 0, data.length);
                }
            }
        } catch (Throwable e) {
            Log.i(TAG, "loadImageFromServer error = " + e);
            return null;
        }
    }
}
