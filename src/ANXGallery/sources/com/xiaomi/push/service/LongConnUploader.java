package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.tinyData.TinyDataUploader;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LongConnUploader implements TinyDataUploader {
    private final XMPushService mPushService;

    public LongConnUploader(XMPushService xmPushService) {
        this.mPushService = xmPushService;
    }

    public void upload(List<ClientUploadDataItem> items, String pkgName, String sourcePkgName) {
        MyLog.w("TinyData LongConnUploader.upload items size:" + items.size() + "  ts:" + System.currentTimeMillis());
        final String str = pkgName;
        final List<ClientUploadDataItem> list = items;
        final String str2 = sourcePkgName;
        this.mPushService.executeJob(new Job(4) {
            public void process() {
                String appId = LongConnUploader.this.getAppId(str);
                ArrayList<XmPushActionNotification> notifications = TinyDataHelper.pack(list, str, appId, 32768);
                MyLog.w("TinyData LongConnUploader.upload pack notifications " + notifications.toString() + "  ts:" + System.currentTimeMillis());
                if (notifications != null) {
                    Iterator it = notifications.iterator();
                    while (it.hasNext()) {
                        XmPushActionNotification notification = (XmPushActionNotification) it.next();
                        notification.putToExtra("uploadWay", "longXMPushService");
                        XmPushActionContainer container = MIPushHelper.generateRequestContainer(str, appId, notification, ActionType.Notification);
                        if (!(TextUtils.isEmpty(str2) || TextUtils.equals(str, str2))) {
                            if (container.getMetaInfo() == null) {
                                PushMetaInfo metaInfo = new PushMetaInfo();
                                metaInfo.setId("-1");
                                container.setMetaInfo(metaInfo);
                            }
                            container.getMetaInfo().putToInternal("ext_traffic_source_pkg", str2);
                        }
                        LongConnUploader.this.mPushService.sendMessage(str, XmPushThriftSerializeUtils.convertThriftObjectToBytes(container), true);
                    }
                    for (ClientUploadDataItem item : list) {
                        MyLog.w("TinyData LongConnUploader.upload uploaded by com.xiaomi.push.service.TinyDataUploader.  item" + item.getId() + "  ts:" + System.currentTimeMillis());
                    }
                    return;
                }
                MyLog.e("TinyData LongConnUploader.upload Get a null XmPushActionNotification list when TinyDataHelper.pack() in XMPushService.");
            }

            public String getDesc() {
                return "Send tiny data.";
            }
        });
    }

    private String getAppId(String pkgName) {
        if ("com.xiaomi.xmsf".equals(pkgName)) {
            return "1000271";
        }
        return this.mPushService.getSharedPreferences("pref_registered_pkg_names", 0).getString(pkgName, null);
    }
}
