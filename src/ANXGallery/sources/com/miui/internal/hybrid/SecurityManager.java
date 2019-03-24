package com.miui.internal.hybrid;

import android.content.Context;
import com.miui.internal.util.PackageConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class SecurityManager {
    private static final String fG = "hybrid_key.pem";
    private static String fH;
    private Config eU;
    private long fI;
    private String fJ;
    private Boolean fK;

    public SecurityManager(Config config, Context context) {
        this.eU = config;
        if (!(config == null || config.getSecurity() == null)) {
            this.fI = config.getSecurity().getTimestamp();
            this.fJ = config.getSecurity().getSignature();
        }
        if (fH == null) {
            fH = e(context);
        }
    }

    public boolean isExpired() {
        return 0 < this.fI && this.fI < System.currentTimeMillis();
    }

    public boolean isValidSignature() {
        if (this.fK == null) {
            try {
                this.fK = Boolean.valueOf(a(ConfigUtils.getRawConfig(this.eU), this.fJ));
            } catch (Exception e) {
                this.fK = Boolean.valueOf(false);
            }
        }
        return this.fK.booleanValue();
    }

    private boolean a(String str, String str2) throws Exception {
        return str2 != null && SignUtils.verify(str, SignUtils.getPublicKey(fH), str2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0053 A:{SYNTHETIC, Splitter: B:24:0x0053} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String e(Context context) {
        Throwable th;
        File file = new File(f(context), fG);
        BufferedReader bufferedReader = null;
        try {
            InputStream fileInputStream;
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
            } else {
                fileInputStream = context.getResources().getAssets().open("keys/hybrid_key.pem");
            }
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream));
            try {
                String a = a(bufferedReader2);
                try {
                    bufferedReader2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return a;
            } catch (IOException e2) {
                bufferedReader = bufferedReader2;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                }
                throw th;
            }
        } catch (IOException e3) {
            try {
                throw new IllegalStateException("cannot read hybrid key.");
            } catch (Throwable th3) {
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    private String a(BufferedReader bufferedReader) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return stringBuilder.substring(0, stringBuilder.length() - 1);
            }
            if (!"".equals(readLine.trim())) {
                if (!readLine.startsWith("-----")) {
                    stringBuilder.append(readLine);
                    stringBuilder.append(13);
                }
            }
        }
    }

    private File f(Context context) {
        return new File(context.getFilesDir(), PackageConstants.LOG_TAG);
    }
}
