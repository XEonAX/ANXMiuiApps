package com.miui.screenrecorder.tools;

import android.app.Activity;
import android.content.Intent;
import com.miui.screenrecorder.BuildConfig;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import java.util.ArrayList;

public class KoreaRegionUtils {
    private static final String FLAG_NECESSARY = "1";
    private static final String KOREA_AUTHORIZE_ACTION = "miui.intent.action.APP_PERMISSION_USE";
    private static final int KOREA_AUTH_REQUEST_CODE = 2307;
    private static final int KOREA_AUTH_RESULT_CODE = 2308;
    private static final String NULL = "null";
    private static final String PERMISSION_MICROPHONE = "android.permission-group.MICROPHONE";
    private static final String PERMISSION_STORAGE = "android.permission-group.STORAGE";
    private static final String REGION_KOREA = "KR";
    private static final String SEPARATOR = "@";
    private static final String TAG = "KoreaRegionUtils";

    public static boolean showPermissionsForKorea(Activity activity) {
        if (!RegionUtils.isInThisCountry(REGION_KOREA) || ScreenRecorderConfig.getConfig().isShowPermissionsInfoForKorea()) {
            return true;
        }
        Intent intent = new Intent(KOREA_AUTHORIZE_ACTION);
        ArrayList<String> list = new ArrayList();
        list.add("android.permission-group.STORAGE@1@null@" + activity.getString(R.string.permission_intro_storage));
        list.add("android.permission-group.MICROPHONE@1@null@" + activity.getString(R.string.permission_intro_microphone));
        intent.putStringArrayListExtra("extra_main_permission_groups", list);
        intent.putExtra("extra_pkgname", BuildConfig.APPLICATION_ID);
        try {
            activity.startActivityForResult(intent, KOREA_AUTH_REQUEST_CODE);
            return false;
        } catch (Exception e) {
            LogUtil.d(TAG, "korea authorize error：" + e.toString());
            return true;
        }
    }

    public static boolean processCallBack(int requestCode, int resultCode) {
        if (requestCode != KOREA_AUTH_REQUEST_CODE || resultCode != KOREA_AUTH_RESULT_CODE) {
            return false;
        }
        ScreenRecorderConfig.getConfig().saveShowPermissionsInfoForKorea(true);
        return true;
    }
}
