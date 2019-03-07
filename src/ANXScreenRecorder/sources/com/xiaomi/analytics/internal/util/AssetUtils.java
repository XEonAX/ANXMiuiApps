package com.xiaomi.analytics.internal.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

public class AssetUtils {
    private static final String TAG = "AssetUtils";

    public static void extractAssetFile(Context context, String assetPath, String outPath) {
        Exception e;
        Throwable th;
        InputStream assetStream = null;
        InputStream oldAssetStream = null;
        FileOutputStream outputStream = null;
        try {
            assetStream = context.getAssets().open(assetPath);
            byte[] assetData = IOUtil.inputStream2ByteArray(assetStream);
            File outFile = new File(outPath);
            if (outFile.exists()) {
                InputStream oldAssetStream2 = new FileInputStream(outFile);
                try {
                    String oldMd5 = Utils.getMd5(IOUtil.inputStream2ByteArray(oldAssetStream2));
                    String md5 = Utils.getMd5(assetData);
                    if (TextUtils.isEmpty(oldMd5) || !oldMd5.equals(md5)) {
                        oldAssetStream = oldAssetStream2;
                    } else {
                        IOUtil.closeSafely(assetStream);
                        IOUtil.closeSafely(oldAssetStream2);
                        IOUtil.closeSafely(null);
                        oldAssetStream = oldAssetStream2;
                        return;
                    }
                } catch (Exception e2) {
                    e = e2;
                    oldAssetStream = oldAssetStream2;
                    try {
                        Log.e(ALog.addPrefix(TAG), "extractAssetFile e", e);
                        IOUtil.closeSafely(assetStream);
                        IOUtil.closeSafely(oldAssetStream);
                        IOUtil.closeSafely(outputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtil.closeSafely(assetStream);
                        IOUtil.closeSafely(oldAssetStream);
                        IOUtil.closeSafely(outputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    oldAssetStream = oldAssetStream2;
                    IOUtil.closeSafely(assetStream);
                    IOUtil.closeSafely(oldAssetStream);
                    IOUtil.closeSafely(outputStream);
                    throw th;
                }
            }
            FileOutputStream outputStream2 = new FileOutputStream(outFile);
            try {
                outputStream2.write(assetData);
                outputStream2.flush();
                IOUtil.closeSafely(assetStream);
                IOUtil.closeSafely(oldAssetStream);
                IOUtil.closeSafely(outputStream2);
                outputStream = outputStream2;
            } catch (Exception e3) {
                e = e3;
                outputStream = outputStream2;
                Log.e(ALog.addPrefix(TAG), "extractAssetFile e", e);
                IOUtil.closeSafely(assetStream);
                IOUtil.closeSafely(oldAssetStream);
                IOUtil.closeSafely(outputStream);
            } catch (Throwable th4) {
                th = th4;
                outputStream = outputStream2;
                IOUtil.closeSafely(assetStream);
                IOUtil.closeSafely(oldAssetStream);
                IOUtil.closeSafely(outputStream);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            Log.e(ALog.addPrefix(TAG), "extractAssetFile e", e);
            IOUtil.closeSafely(assetStream);
            IOUtil.closeSafely(oldAssetStream);
            IOUtil.closeSafely(outputStream);
        }
    }
}
