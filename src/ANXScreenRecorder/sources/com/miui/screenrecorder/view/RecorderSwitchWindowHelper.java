package com.miui.screenrecorder.view;

import android.content.Context;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.MiStatKey;
import com.xiaomi.stat.MiStatParams;

public class RecorderSwitchWindowHelper {
    public static String dianWindowStay(Context context, int x, int y, int displayWidth, int displayHeight, String originArea) {
        String area = "";
        String recordArea = originArea;
        int deviceOri = context.getResources().getConfiguration().orientation;
        if (deviceOri == 2) {
            int level_x1 = displayHeight / 3;
            if (y <= displayWidth / 2) {
                if (x < level_x1) {
                    area = "landscape_1";
                } else {
                    area = "landscape_3";
                }
            } else if (x < level_x1) {
                area = "landscape_4";
            } else {
                area = "landscape_6";
            }
        } else if (deviceOri == 1) {
            int level_x = displayWidth / 2;
            int level_y1 = displayHeight / 3;
            int level_y2 = level_y1 * 2;
            if (y <= level_y1) {
                if (x < level_x) {
                    area = "portrait_1";
                } else {
                    area = "portrait_2";
                }
            } else if (y <= level_y2) {
                if (x < level_x) {
                    area = "portrait_3";
                } else {
                    area = "portrait_4";
                }
            } else if (x < level_x) {
                area = "portrait_5";
            } else {
                area = "portrait_6";
            }
        }
        if (recordArea.equals(area)) {
            area = "no_change";
        } else {
            recordArea = area;
        }
        MiStatParams miStatParams = new MiStatParams();
        miStatParams.putString(MiStatKey.PARAM_FLOATWINDOW_MOVE_AREA, recordArea);
        MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_FLOATWINDOW, MiStatKey.EVENT_FLOATWINDOW_MOVE, miStatParams);
        return area;
    }
}
