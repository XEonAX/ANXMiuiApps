package com.miui.gallery.model;

import android.graphics.BitmapFactory.Options;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.VideoAttrsReader;
import java.io.File;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.TreeMap;
import miui.graphics.BitmapFactory;

public class PhotoDetailInfo implements Iterable<Entry<Integer, Object>> {
    private TreeMap<Integer, Object> mDetails = new TreeMap();

    public void addDetail(int index, Object value) {
        this.mDetails.put(Integer.valueOf(index), value);
    }

    public void removeDetail(int index) {
        this.mDetails.remove(Integer.valueOf(index));
    }

    public Object getDetail(int index) {
        return this.mDetails.get(Integer.valueOf(index));
    }

    public Iterator<Entry<Integer, Object>> iterator() {
        return this.mDetails.entrySet().iterator();
    }

    public static void extractExifInfo(PhotoDetailInfo details, String filePath, boolean all) {
        if (details != null && !TextUtils.isEmpty(filePath)) {
            try {
                ExifInterface exif = new ExifInterface(filePath);
                if (all) {
                    int width = exif.getAttributeInt("ImageWidth", 0);
                    int height = exif.getAttributeInt("ImageLength", 0);
                    if (width <= 0 || height <= 0) {
                        Options bitmapOptions = BitmapFactory.getBitmapSize(filePath);
                        width = bitmapOptions.outWidth;
                        height = bitmapOptions.outHeight;
                    }
                    details.addDetail(4, Integer.valueOf(width));
                    details.addDetail(5, Integer.valueOf(height));
                    long time = ExifUtil.getGpsDateTime(exif);
                    if (time <= 0) {
                        time = new File(filePath).lastModified();
                    }
                    details.addDetail(1, Long.valueOf(time));
                    double[] latlong = exif.getLatLong();
                    if (latlong != null) {
                        details.addDetail(6, latlong);
                    }
                }
                details.addDetail(BaiduSceneResult.SHOOTING, exif.getAttribute("Model"));
                details.addDetail(100, exif.getAttribute("Make"));
                details.addDetail(BaiduSceneResult.TEMPLE, exif.getAttribute("FNumber"));
                details.addDetail(BaiduSceneResult.MOUNTAINEERING, wrapFocalLength(exif.getAttribute("FocalLength")));
                details.addDetail(BaiduSceneResult.GARDEN, exif.getAttribute("ExposureTime"));
                details.addDetail(BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE, exif.getAttribute("ISOSpeedRatings"));
                details.addDetail(BaiduSceneResult.TAEKWONDO, exif.getAttribute("Flash"));
            } catch (Throwable ex) {
                Log.w("PhotoDetailInfo", ex);
            }
        }
    }

    public static void extractVideoAttr(PhotoDetailInfo details, String filePath) {
        if (details != null && !TextUtils.isEmpty(filePath)) {
            try {
                VideoAttrsReader reader = VideoAttrsReader.read(filePath);
                long taken = reader.getDateTaken();
                if (taken > 0) {
                    details.addDetail(1, Long.valueOf(taken));
                }
                long duration = reader.getDuration();
                if (duration > 0) {
                    details.addDetail(7, Integer.valueOf((int) (duration / 1000)));
                }
            } catch (Throwable e) {
                Log.w("PhotoDetailInfo", e);
            }
        }
    }

    public static Double wrapFocalLength(String focalLength) {
        if (TextUtils.isEmpty(focalLength)) {
            return null;
        }
        try {
            int index = focalLength.indexOf("/");
            if (index == -1) {
                return null;
            }
            double denom = Double.parseDouble(focalLength.substring(index + 1));
            if (denom != 0.0d) {
                return Double.valueOf(Double.parseDouble(focalLength.substring(0, index)) / denom);
            }
            return null;
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
