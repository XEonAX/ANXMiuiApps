package com.ali.auth.third.core.util;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class FileUtils {
    public static String readFileData(Context context, String str) {
        String str2 = "";
        try {
            FileInputStream openFileInput = context.openFileInput(str);
            int available = openFileInput.available();
            if (available <= 0) {
                return str2;
            }
            byte[] bArr = new byte[available];
            openFileInput.read(bArr);
            String str3 = new String(bArr, "UTF-8");
            try {
                openFileInput.close();
                return str3;
            } catch (Exception e) {
                return str3;
            }
        } catch (Exception e2) {
            return str2;
        }
    }

    public static void writeFileData(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes());
            openFileOutput.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
