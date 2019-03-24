package com.miui.internal.log.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.miui.internal.log.util.Config;
import java.io.File;
import java.io.FileFilter;
import java.util.Arrays;
import miui.os.C0002FileUtils;

public class DumpReceiver extends BroadcastReceiver {
    public static final String INTENT_ACTION_DUMP_CACHED_LOG = "com.miui.core.intent.ACTION_DUMP_CACHED_LOG";
    private static final String TAG = "DumpReceiver";
    private final String hn;
    private final String ho;

    public DumpReceiver() {
        this(Config.getDefaultCacheLogDir(), Config.getDefaultSdcardLogDir());
    }

    public DumpReceiver(String str, String str2) {
        this.hn = str;
        this.ho = str2;
    }

    public void onReceive(Context context, Intent intent) {
        Log.d(TAG, "dumpCachedLog start");
        b(this.hn, this.ho);
        Log.d(TAG, "dumpCachedLog end");
    }

    private static void b(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            String[] list = file.list();
            StringBuilder stringBuilder;
            if (list == null || list.length <= 0) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Skip dumpCachedLog, logNames=");
                stringBuilder.append(Arrays.toString(list));
                Log.i(str, stringBuilder.toString());
            } else {
                File file2 = new File(str2);
                if (file2.exists() || file2.mkdirs() || file2.exists()) {
                    file2.listFiles(new FileFilter() {
                        public boolean accept(File file) {
                            file.delete();
                            return false;
                        }
                    });
                    for (String str3 : list) {
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append(str);
                        stringBuilder2.append(File.separatorChar);
                        stringBuilder2.append(str3);
                        File file3 = new File(stringBuilder2.toString());
                        StringBuilder stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(str2);
                        stringBuilder3.append(File.separatorChar);
                        stringBuilder3.append(str3);
                        File file4 = new File(stringBuilder3.toString());
                        C0002FileUtils.copyFile(file3, file4);
                        String str32 = TAG;
                        stringBuilder3 = new StringBuilder();
                        stringBuilder3.append("Dump log from ");
                        stringBuilder3.append(file3.getPath());
                        stringBuilder3.append(" to ");
                        stringBuilder3.append(file4.getPath());
                        Log.d(str32, stringBuilder3.toString());
                    }
                } else {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Fail to make dump dir: ");
                    stringBuilder.append(file2.getPath());
                    Log.e(str, stringBuilder.toString());
                    return;
                }
            }
        }
        str2 = TAG;
        StringBuilder stringBuilder4 = new StringBuilder();
        stringBuilder4.append("Skip dumpCachedLog, cacheLogDir is not exist: ");
        stringBuilder4.append(str);
        Log.i(str2, stringBuilder4.toString());
    }
}
