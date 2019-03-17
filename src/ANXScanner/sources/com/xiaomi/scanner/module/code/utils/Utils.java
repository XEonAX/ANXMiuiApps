package com.xiaomi.scanner.module.code.utils;

import android.app.Activity;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.ContactsContract.Contacts;
import android.provider.MediaStore.Audio;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.provider.Settings.Global;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.alipay.sdk.packet.d;
import com.taobao.ma.common.constants.MaConstants;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.bean.BusinessCardItem;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.translation.TranslateModel;
import com.xiaomi.scanner.util.FileUtil;
import com.xiaomi.scanner.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import miui.os.SystemProperties;
import mtopsdk.common.util.SymbolExpUtil;

public class Utils {
    private static final String PATH_DOCUMENT = "document";
    private static final Tag TAG = new Tag("Utils");

    public static final boolean isChineseCharacter(String chineseStr) {
        char[] charArray = chineseStr.toCharArray();
        int i = 0;
        while (i < charArray.length) {
            if ((charArray[i] < 0 || charArray[i] >= 65533) && (charArray[i] <= 65533 || charArray[i] >= 65535)) {
                return false;
            }
            i++;
        }
        return true;
    }

    public static String getDocumentId(Uri documentUri) {
        List<String> paths = documentUri.getPathSegments();
        if (paths.size() < 2) {
            throw new IllegalArgumentException("Not a document: " + documentUri);
        } else if (PATH_DOCUMENT.equals(paths.get(0))) {
            return (String) paths.get(1);
        } else {
            throw new IllegalArgumentException("Not a document: " + documentUri);
        }
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        List<String> paths = uri.getPathSegments();
        if (paths.size() >= 2 && PATH_DOCUMENT.equals(paths.get(0))) {
            return true;
        }
        return false;
    }

    public static String getPath(Context context, Uri uri) {
        boolean isKitKat;
        if (VERSION.SDK_INT >= 19) {
            isKitKat = true;
        } else {
            isKitKat = false;
        }
        if (isKitKat && isDocumentUri(context, uri)) {
            String[] split;
            if (isExternalStorageDocument(uri)) {
                split = getDocumentId(uri).split(SymbolExpUtil.SYMBOL_COLON);
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + split[1];
                }
                return null;
            } else if (isDownloadsDocument(uri)) {
                return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(getDocumentId(uri)).longValue()), null, null);
            } else if (!isMediaDocument(uri)) {
                return null;
            } else {
                String type = getDocumentId(uri).split(SymbolExpUtil.SYMBOL_COLON)[0];
                Uri contentUri = null;
                if ("image".equals(type)) {
                    contentUri = Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(type)) {
                    contentUri = Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(type)) {
                    contentUri = Audio.Media.EXTERNAL_CONTENT_URI;
                }
                String selection = "_id=?";
                return getDataColumn(context, contentUri, "_id=?", new String[]{split[1]});
            }
        } else if (MaConstants.UT_PARAM_KEY_CONTENT.equalsIgnoreCase(uri.getScheme())) {
            return getDataColumn(context, uri, null, null);
        } else {
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
            return null;
        }
    }

    public static String getDataColumn(Context context, Uri uri, String selection, String[] selectionArgs) {
        Cursor cursor = null;
        String column = "_data";
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"_data"}, selection, selectionArgs, null);
            if (cursor == null || !cursor.moveToFirst()) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            String string = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
            return string;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static String getFilePathFromUri(Uri uri) {
        String path = null;
        if (uri != null) {
            String scheme = uri.getScheme();
            if ("file".equals(scheme)) {
                path = uri.getPath();
            } else if (MaConstants.UT_PARAM_KEY_CONTENT.equals(scheme)) {
                Cursor cursor = null;
                InputStream inputStream = null;
                Context context = ScannerApp.getAndroidContext();
                try {
                    cursor = context.getContentResolver().query(uri, null, null, null, null);
                    if (cursor != null && cursor.moveToFirst()) {
                        int cursorIndex = cursor.getColumnIndex("_data");
                        if (cursorIndex != -1) {
                            path = cursor.getString(cursorIndex);
                        } else if (cursor.getColumnIndex("_display_name") != -1) {
                            path = FileUtil.getTempFilePath(context);
                            inputStream = context.getContentResolver().openInputStream(uri);
                            if (!FileUtil.copyToFile(inputStream, new File(path))) {
                                Log.w(TAG, "getFilePathFromUri fail to copy");
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e) {
                                        Log.e(TAG, "inputStream close fail", e);
                                    }
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return null;
                            }
                        } else {
                            Log.w(TAG, "can not operation this uri=" + uri.toString());
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                            Log.e(TAG, "inputStream close fail", e2);
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e3) {
                    Log.e(TAG, "getFilePathFromUri fail", e3);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e22) {
                            Log.e(TAG, "inputStream close fail", e22);
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e222) {
                            Log.e(TAG, "inputStream close fail", e222);
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        }
        return path;
    }

    public static String formatToGB(String str) {
        String format = "";
        try {
            if (Charset.forName("ISO-8859-1").newEncoder().canEncode(str)) {
                return new String(str.getBytes("ISO-8859-1"), "GB2312");
            }
            return str;
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "UnsupportedEncodingException", e);
            return format;
        }
    }

    public static Date parseDate(String dateStr) {
        Date date = null;
        if (TextUtils.isEmpty(dateStr)) {
            return date;
        }
        try {
            SimpleDateFormat format = new SimpleDateFormat(dateStr.replaceFirst("^(18|19|20|21){1}[0-9]{2}([^0-9]?)", "yyyy$2").replaceFirst("^[0-9]{2}([^0-9]?)", "yy$1").replaceFirst("([^0-9]?)(1{1}[0-2]{1}|0?[1-9]{1})([^0-9]?)", "$1MM$3").replaceFirst("([^0-9]?)(3{1}[0-1]{1}|[0-2]?[0-9]{1})([^0-9]?)", "$1dd$3").replaceFirst("([^0-9]?)(2[0-3]{1}|[0-1]?[0-9]{1})([^0-9]?)", "$1HH$3").replaceFirst("([^0-9]?)[0-5]?[0-9]{1}([^0-9]?)", "$1mm$2").replaceFirst("([^0-9]?)[0-5]?[0-9]{1}([^0-9]?)", "$1ss$2"));
            try {
                format.setLenient(false);
                return format.parse(dateStr);
            } catch (Exception e) {
                SimpleDateFormat simpleDateFormat = format;
                return date;
            }
        } catch (Exception e2) {
            return date;
        }
    }

    public static void newContact(List<BusinessCardItem> items, Activity activity) {
        if (items != null && items.size() != 0) {
            Intent addIntent = new Intent("android.intent.action.INSERT", Contacts.CONTENT_URI);
            addIntent.setType("vnd.android.cursor.dir/person");
            addIntent.setType("vnd.android.cursor.dir/contact");
            addIntent.setType("vnd.android.cursor.dir/raw_contact");
            addIntent.putExtra("name", onlyOneSelect(0, items));
            addIntent.putExtra("phonetic_name", onlyOneSelect(1, items));
            addIntent.putExtra("phone", onlyOneSelect(2, items));
            addIntent.putExtra("secondary_phone", onlyOneSelect(3, items)).putExtra("secondary_phone_type", activity.getResources().getString(R.string.tel));
            addIntent.putExtra("tertiary_phone", onlyOneSelect(9, items)).putExtra("tertiary_phone_type", activity.getResources().getString(R.string.fax));
            addIntent.putExtra(NotificationCompat.CATEGORY_EMAIL, onlyOneSelect(4, items));
            addIntent.putExtra("im_handle", onlyOneSelect(11, items));
            addIntent.putExtra("notes", other(items));
            addIntent.putExtra("company", genMultLinesString(multSelect(items, 12, 13)));
            addIntent.putExtra("job_title", genMultLinesString(multSelect(items, 5, 6)) + "\b\b\b" + genMultLinesString(multSelect(items, 7, 8)));
            ArrayList<ContentValues> data = new ArrayList();
            ArrayList<String> address = multSelect(items, 14, 15);
            if (address != null && address.size() > 0) {
                Iterator it = address.iterator();
                while (it.hasNext()) {
                    String as = (String) it.next();
                    ContentValues addressRow = new ContentValues();
                    addressRow.put("mimetype", "vnd.android.cursor.item/postal-address_v2");
                    addressRow.put("data2", Integer.valueOf(2));
                    addressRow.put("data1", as);
                    data.add(addressRow);
                }
            }
            String weiboText = onlyOneSelect(10, items);
            if (!TextUtils.isEmpty(weiboText)) {
                ContentValues weibo = new ContentValues();
                weibo.put("mimetype", "vnd.android.cursor.item/im");
                weibo.put("data2", Integer.valueOf(0));
                weibo.put("data5", Integer.valueOf(-1));
                weibo.put("data6", activity.getResources().getString(R.string.blog));
                weibo.put("data1", weiboText);
                data.add(weibo);
            }
            String url = onlyOneSelect(17, items);
            if (!TextUtils.isEmpty(url)) {
                ContentValues urlRaw = new ContentValues();
                urlRaw.put("mimetype", "vnd.android.cursor.item/website");
                urlRaw.put("data2", Integer.valueOf(5));
                urlRaw.put("data1", url);
                data.add(urlRaw);
            }
            addIntent.putParcelableArrayListExtra(d.k, data);
            activity.startActivity(addIntent);
        }
    }

    private static String other(List<BusinessCardItem> items) {
        StringBuilder builder = new StringBuilder();
        if (items != null && items.size() != 0) {
            for (BusinessCardItem info : items) {
                if (info.itemType == 16) {
                    builder.append(info.itemName).append(SymbolExpUtil.SYMBOL_COLON).append(info.itemValue).append("\n");
                    break;
                }
            }
        }
        return builder.toString();
    }

    private static String genMultLinesString(ArrayList<String> list) {
        if (list == null) {
            return "";
        }
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            builder.append((String) list.get(i));
            if (i != list.size() - 1) {
                builder.append("\b\b\b");
            }
        }
        return builder.toString();
    }

    private static ArrayList<String> multSelect(List<BusinessCardItem> items, int... key) {
        return handleStringInfo(items, key);
    }

    private static String onlyOneSelect(int key, List<BusinessCardItem> items) {
        List<String> result = handleStringInfo(items, key);
        if (result == null || result.size() <= 0) {
            return "";
        }
        return (String) result.get(0);
    }

    private static ArrayList<String> handleStringInfo(List<BusinessCardItem> items, int... keys) {
        ArrayList<String> stringList = new ArrayList();
        if (!(items == null || items.size() <= 0 || keys == null)) {
            for (int key : keys) {
                for (BusinessCardItem info : items) {
                    if (info.itemType == key) {
                        stringList.add(info.itemValue);
                        break;
                    }
                }
            }
        }
        return stringList;
    }

    public static byte[] getServerByteFromBitmap(Bitmap bitmap) {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            bitmap.compress(CompressFormat.JPEG, 80, out);
            out.flush();
            out.close();
        } catch (Throwable e) {
            e.printStackTrace();
        }
        return out.toByteArray();
    }

    public static byte[] scaleAndToByteFromBitmap(Bitmap bitmap, int minSize) {
        Bitmap scaleBitmap = null;
        try {
            float realHeight = (float) Math.max(bitmap.getWidth(), bitmap.getHeight());
            TranslateModel.getInstance().setTranslateImageRealHeight(realHeight);
            float realWidth = (float) Util.screenWidth;
            Matrix matrix = new Matrix();
            float scaleX = (((float) minSize) * 1.0f) / ((float) Math.max(bitmap.getWidth(), bitmap.getHeight()));
            matrix.postScale(scaleX, scaleX);
            scaleBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (scaleBitmap.getWidth() > scaleBitmap.getHeight()) {
                TranslateModel.getInstance().setScaleY(realHeight / ((float) scaleBitmap.getWidth()));
                TranslateModel.getInstance().setScaleX(realWidth / ((float) scaleBitmap.getHeight()));
            } else {
                TranslateModel.getInstance().setScaleX(realWidth / ((float) scaleBitmap.getWidth()));
                TranslateModel.getInstance().setScaleY(realHeight / ((float) scaleBitmap.getHeight()));
            }
        } catch (Throwable e) {
            Log.e(TAG, "scaleAndToByteFromBitmap error " + e);
        }
        if (scaleBitmap == null) {
            scaleBitmap = bitmap;
        }
        return getServerByteFromBitmap(scaleBitmap);
    }

    public static int getRealHeight() {
        int realHeight = Util.screenHeight;
        if (Util.isNotchPhone) {
            return realHeight - getStatusBarHeight();
        }
        return realHeight;
    }

    public static boolean isNotchPhone() {
        return SystemProperties.getInt("ro.miui.notch", 0) == 1;
    }

    public static int getStatusBarHeight() {
        int resourceId = ScannerApp.getAndroidContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (resourceId > 0) {
            return ScannerApp.getAndroidContext().getResources().getDimensionPixelSize(resourceId);
        }
        return 0;
    }

    public static int getNavigationBarHeight() {
        int resourceId = ScannerApp.getAndroidContext().getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (resourceId > 0) {
            return ScannerApp.getAndroidContext().getResources().getDimensionPixelSize(resourceId);
        }
        return 0;
    }

    public static boolean isFullScreenDevice() {
        return Global.getInt(ScannerApp.getAndroidContext().getContentResolver(), "force_fsg_nav_bar", 0) != 0;
    }
}
