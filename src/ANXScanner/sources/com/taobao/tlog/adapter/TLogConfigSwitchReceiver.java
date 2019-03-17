package com.taobao.tlog.adapter;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.taobao.orange.OrangeConfig;
import com.taobao.orange.OrangeConfigListener;
import com.taobao.tao.log.ITLogController;
import com.taobao.tao.log.TLogInitializer;
import com.taobao.tao.log.TLogUtils;
import com.taobao.tao.log.TaskManager;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

public class TLogConfigSwitchReceiver {
    private static final String TAG = "TLogConfigSwitchReceiver";

    public static void init(final Context context) {
        OrangeConfig.getInstance().registerListener(new String[]{"remote_debuger_android"}, new OrangeConfigListener() {
            public void onConfigUpdate(String s) {
                Map<String, String> config = OrangeConfig.getInstance().getConfigs(s);
                if (config != null) {
                    Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
                    String tlogDestroy = (String) config.get("tlog_destroy");
                    String tlogSwitch = (String) config.get("tlog_switch");
                    String tlogLevel = (String) config.get("tlog_level");
                    String tlogModule = (String) config.get("tlog_module");
                    String tlogEndTime = (String) config.get("tlog_endtime");
                    String tlogPull = (String) config.get("tlog_pull");
                    ITLogController controller = TLogInitializer.getTLogControler();
                    if (controller != null) {
                        Log.i(TLogConfigSwitchReceiver.TAG, "The tlogDestroy is : " + tlogDestroy + "  tlogSwitch is : " + tlogSwitch + "  tlogLevel is : " + tlogLevel + "  tlogModule is : " + tlogModule);
                        if (TextUtils.isEmpty(tlogDestroy)) {
                            Log.i(TLogConfigSwitchReceiver.TAG, "The tlogDestroy is null");
                            return;
                        } else if ("true".equalsIgnoreCase(tlogDestroy)) {
                            TLogInitializer.delete();
                            controller.openLog(false);
                            controller.destroyLog(true);
                            editor.putBoolean("tlog_switch", false);
                            return;
                        } else {
                            controller.destroyLog(false);
                            if (TextUtils.isEmpty(tlogSwitch)) {
                                Log.i(TLogConfigSwitchReceiver.TAG, "The tlogSwitch is null");
                                return;
                            }
                            if ("true".equalsIgnoreCase(tlogSwitch)) {
                                controller.openLog(true);
                                editor.putBoolean("tlog_switch", true);
                            } else if (SymbolExpUtil.STRING_FALSE.equalsIgnoreCase(tlogSwitch)) {
                                controller.openLog(false);
                                editor.putBoolean("tlog_switch", false);
                            }
                            if (TextUtils.isEmpty(tlogLevel)) {
                                Log.i(TLogConfigSwitchReceiver.TAG, "The tlogLevel is null");
                                return;
                            }
                            controller.setLogLevel(tlogLevel);
                            editor.putString("tlog_level", tlogLevel);
                            if (TextUtils.isEmpty(tlogModule)) {
                                Log.i(TLogConfigSwitchReceiver.TAG, "The tlogModule is null");
                                return;
                            }
                            controller.setModuleFilter(TLogUtils.makeModule(tlogModule));
                            editor.putString("tlog_module", tlogModule);
                            if (TextUtils.isEmpty(tlogEndTime)) {
                                controller.setEndTime(System.currentTimeMillis());
                                editor.putLong("tlog_endtime", System.currentTimeMillis());
                            } else {
                                long endTime;
                                try {
                                    endTime = System.currentTimeMillis() + ((long) (Integer.parseInt(tlogEndTime) * 1000));
                                } catch (NumberFormatException e) {
                                    endTime = System.currentTimeMillis();
                                }
                                long limitTime = System.currentTimeMillis() + 86400000;
                                if (endTime > System.currentTimeMillis() && endTime < limitTime) {
                                    controller.setEndTime(endTime);
                                    editor.putLong("tlog_endtime", endTime);
                                } else if (endTime >= limitTime) {
                                    controller.setEndTime(limitTime);
                                    editor.putLong("tlog_endtime", limitTime);
                                } else {
                                    controller.setEndTime(System.currentTimeMillis());
                                    editor.putLong("tlog_endtime", System.currentTimeMillis());
                                }
                            }
                            if (!TextUtils.isEmpty(tlogPull)) {
                                if (tlogPull.equals("true")) {
                                    TaskManager.getInstance().queryTraceStatus(context);
                                }
                                editor.putString("tlog_pull", tlogPull);
                            }
                            editor.putString("tlog_version", TLogUtils.getAppBuildVersion(context));
                            editor.apply();
                            return;
                        }
                    }
                    return;
                }
                Log.i(TLogConfigSwitchReceiver.TAG, "TLogConfigSwitchReceiver --> the config is null!");
            }
        });
    }
}
