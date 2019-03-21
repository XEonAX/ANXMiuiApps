package com.miui.gallery.editor.photo.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.miui.gallery.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import org.keyczar.Keyczar;

public final class IoUtils {
    public static InputStream openInputStream(Context context, Uri uri) throws FileNotFoundException {
        if ("file".equals(uri.getScheme())) {
            return new FileInputStream(uri.getPath());
        }
        return context.getContentResolver().openInputStream(uri);
    }

    public static InputStream openInputStream(String tag, Context context, Uri uri) {
        try {
            return openInputStream(context, uri);
        } catch (Throwable e) {
            Log.e(tag, e);
            return null;
        }
    }

    public static OutputStream openOutputStream(Context context, Uri uri) throws FileNotFoundException {
        if ("file".equals(uri.getScheme())) {
            return new FileOutputStream(uri.getPath());
        }
        return context.getContentResolver().openOutputStream(uri);
    }

    public static OutputStream openOutputStream(String tag, Context context, Uri uri) {
        try {
            return openOutputStream(context, uri);
        } catch (Throwable e) {
            Log.e(tag, e);
            return null;
        }
    }

    public static String readInputStreamToString(String tag, InputStream inputStream) {
        return readInputStreamToString(tag, inputStream, Keyczar.DEFAULT_ENCODING);
    }

    public static String readInputStreamToString(String tag, InputStream inputStream, String charsetName) {
        String s = null;
        ByteArrayOutputStream result = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        while (true) {
            try {
                int length = inputStream.read(buffer);
                if (length == -1) {
                    break;
                }
                result.write(buffer, 0, length);
            } catch (Throwable e) {
                Log.e(tag, e);
            } finally {
                close(tag, inputStream);
                close(tag, result);
            }
        }
        s = result.toString(charsetName);
        return s;
    }

    public static Writer openWriter(File file) {
        try {
            return new FileWriter(file);
        } catch (Throwable e) {
            Log.w("IoUtils", e);
            return null;
        }
    }

    public static Reader openReader(File file) {
        try {
            return new FileReader(file);
        } catch (Throwable e) {
            Log.w("IoUtils", e);
            return null;
        }
    }

    public static final void close(Closeable closable) {
        close("IoUtils", closable);
    }

    public static final void close(String tag, Closeable closable) {
        if (closable != null) {
            try {
                closable.close();
                return;
            } catch (Throwable e) {
                Log.w(tag, e);
                return;
            }
        }
        Log.d(tag, "res is null");
    }

    public static String loadAssetFileString(AssetManager assetManager, String name) {
        String result = null;
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(name);
            result = readInputStreamToString("IoUtils", inputStream);
        } catch (Throwable e) {
            Log.e("IoUtils", e);
        } finally {
            close(inputStream);
        }
        return result;
    }
}
