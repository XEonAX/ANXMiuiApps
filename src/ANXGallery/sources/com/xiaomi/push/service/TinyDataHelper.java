package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.xmpush.thrift.ClientUploadData;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class TinyDataHelper {
    private static String dayPrefix = sdf.format(Long.valueOf(System.currentTimeMillis()));
    private static AtomicLong idGen = new AtomicLong(0);
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

    public static synchronized String nextTinyDataItemId() {
        String str;
        synchronized (TinyDataHelper.class) {
            String today = sdf.format(Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.equals(dayPrefix, today)) {
                idGen.set(0);
                dayPrefix = today;
            }
            str = today + "-" + idGen.incrementAndGet();
        }
        return str;
    }

    public static ArrayList<XmPushActionNotification> pack(List<ClientUploadDataItem> items, String pkgName, String appId, int maxSize) {
        ArrayList<XmPushActionNotification> notifications = null;
        if (items == null) {
            MyLog.e("requests can not be null in TinyDataHelper.transToThriftObj().");
        } else if (items.size() == 0) {
            MyLog.e("requests.length is 0 in TinyDataHelper.transToThriftObj().");
        } else {
            XmPushActionNotification notification;
            notifications = new ArrayList();
            ClientUploadData datas = new ClientUploadData();
            int currentDataSize = 0;
            for (int i = 0; i < items.size(); i++) {
                ClientUploadDataItem item = (ClientUploadDataItem) items.get(i);
                if (item != null) {
                    int itemSize = XmPushThriftSerializeUtils.convertThriftObjectToBytes(item).length;
                    if (itemSize > maxSize) {
                        MyLog.e("TinyData is too big, ignore upload request item:" + item.getId());
                    } else {
                        if (currentDataSize + itemSize > maxSize) {
                            notification = new XmPushActionNotification("-1", false);
                            notification.setPackageName(pkgName);
                            notification.setAppId(appId);
                            notification.setType(NotificationType.UploadTinyData.value);
                            notification.setBinaryExtra(IOUtils.gZip(XmPushThriftSerializeUtils.convertThriftObjectToBytes(datas)));
                            notifications.add(notification);
                            datas = new ClientUploadData();
                            currentDataSize = 0;
                        }
                        datas.addToUploadDataItems(item);
                        currentDataSize += itemSize;
                    }
                }
            }
            if (datas.getUploadDataItemsSize() != 0) {
                notification = new XmPushActionNotification("-1", false);
                notification.setPackageName(pkgName);
                notification.setAppId(appId);
                notification.setType(NotificationType.UploadTinyData.value);
                notification.setBinaryExtra(IOUtils.gZip(XmPushThriftSerializeUtils.convertThriftObjectToBytes(datas)));
                notifications.add(notification);
            }
        }
        return notifications;
    }

    public static boolean verify(ClientUploadDataItem item, boolean ignoreChannel) {
        if (item == null) {
            MyLog.w("item is null, verfiy ClientUploadDataItem failed.");
            return true;
        } else if (!ignoreChannel && TextUtils.isEmpty(item.channel)) {
            MyLog.w("item.channel is null or empty, verfiy ClientUploadDataItem failed.");
            return true;
        } else if (TextUtils.isEmpty(item.category)) {
            MyLog.w("item.category is null or empty, verfiy ClientUploadDataItem failed.");
            return true;
        } else if (TextUtils.isEmpty(item.name)) {
            MyLog.w("item.name is null or empty, verfiy ClientUploadDataItem failed.");
            return true;
        } else if (!XMStringUtils.checkAllAscii(item.category)) {
            MyLog.w("item.category can only contain ascii char, verfiy ClientUploadDataItem failed.");
            return true;
        } else if (!XMStringUtils.checkAllAscii(item.name)) {
            MyLog.w("item.name can only contain ascii char, verfiy ClientUploadDataItem failed.");
            return true;
        } else if (item.data == null || item.data.length() <= 10240) {
            return false;
        } else {
            MyLog.w("item.data is too large(" + item.data.length() + "), max size for data is " + 10240 + " , verfiy ClientUploadDataItem failed.");
            return true;
        }
    }

    public static void cacheTinyData(Context context, String category, String name, long counter, String data) {
        ClientUploadDataItem item = new ClientUploadDataItem();
        item.setCategory(category);
        item.setName(name);
        item.setCounter(counter);
        item.setData(data);
        item.setChannel("push_sdk_channel");
        item.setPkgName(context.getPackageName());
        item.setSourcePackage(context.getPackageName());
        item.setFromSdk(true);
        item.setTimestamp(System.currentTimeMillis());
        item.setId(nextTinyDataItemId());
        TinyDataStorage.cacheTinyData(context, item);
    }
}
