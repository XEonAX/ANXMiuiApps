package miui.drm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import miui.app.constants.ThemeManagerConstants;
import miui.content.res.ThemeResources;
import miui.content.res.ThemeRuntimeManager;
import miui.drm.DrmManager.DrmResult;

public class ThemeReceiver extends BroadcastReceiver {
    private static final String TAG = "drm";
    private static Map<String, String> sLocations = new HashMap();
    private static Set<String> sWhiteList = new HashSet();

    static {
        sLocations.put("/data/system/theme/", ThemeResources.THEME_RIGHTS_PATH);
        sLocations.put(ThemeRuntimeManager.RUNTIME_PATH_BOOT_ANIMATION, ThemeResources.THEME_RIGHTS_PATH);
        for (String item : ThemeManagerConstants.DRM_WHITE_LIST) {
            Set set = sWhiteList;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("/data/system/theme/");
            stringBuilder.append(item);
            set.add(stringBuilder.toString());
        }
    }

    public void onReceive(final Context context, Intent intent) {
        if (DrmBroadcast.ACTION_CHECK_TIME_UP.equals(intent.getAction())) {
            Log.i("drm", "check theme drm event received");
            new Thread(new Runnable() {
                public void run() {
                    StringBuilder stringBuilder;
                    try {
                        for (String location : ThemeReceiver.sLocations.keySet()) {
                            if (!ThemeReceiver.this.validateTheme(context, location, (String) ThemeReceiver.sLocations.get(location))) {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("restore default theme in ");
                                stringBuilder.append(location);
                                Log.w("drm", stringBuilder.toString());
                                new ThemeRuntimeManager(context).restoreDefault();
                                return;
                            }
                        }
                    } catch (Exception e) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("check theme drm occur exception: ");
                        stringBuilder.append(e.toString());
                        Log.i("drm", stringBuilder.toString());
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }

    private boolean validateTheme(Context context, String contentPath, String rightsPath) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("validate theme in ");
        stringBuilder.append(contentPath);
        Log.i("drm", stringBuilder.toString());
        File contentFile = new File(contentPath);
        File rightsFolder = new File(rightsPath);
        if (contentFile.exists() && !sWhiteList.contains(contentFile.getAbsolutePath())) {
            if (contentFile.isDirectory()) {
                for (File file : contentFile.listFiles()) {
                    if (!validateTheme(context, file.getAbsolutePath(), rightsPath)) {
                        return false;
                    }
                }
            } else {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("checking component ");
                stringBuilder2.append(contentFile.getAbsolutePath());
                stringBuilder2.append(" with ");
                stringBuilder2.append(rightsFolder.getAbsolutePath());
                Log.i("drm", stringBuilder2.toString());
                DrmResult ret = DrmManager.isLegal(context, contentFile, rightsFolder);
                if (ret != DrmResult.DRM_SUCCESS) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("illegal theme component found: ");
                    stringBuilder2.append(contentFile.getAbsolutePath());
                    stringBuilder2.append(" ");
                    stringBuilder2.append(ret);
                    DrmManager.exportFatalLog("drm", stringBuilder2.toString());
                    return false;
                }
            }
        }
        return true;
    }
}
