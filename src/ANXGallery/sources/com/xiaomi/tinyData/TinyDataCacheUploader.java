package com.xiaomi.tinyData;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.TinyDataHelper;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

public class TinyDataCacheUploader {
    public static void uploadTinyData(Context context, TinyDataUploader uploader, List<ClientUploadDataItem> items) {
        HashMap<String, ArrayList<ClientUploadDataItem>> itemsUploading = prepareTinyDataItems(context, items);
        if (itemsUploading == null || itemsUploading.size() == 0) {
            MyLog.w("TinyData TinyDataCacheUploader.uploadTinyData itemsUploading == null || itemsUploading.size() == 0  ts:" + System.currentTimeMillis());
        } else {
            upload(context, uploader, itemsUploading);
        }
    }

    private static HashMap<String, ArrayList<ClientUploadDataItem>> prepareTinyDataItems(Context context, List<ClientUploadDataItem> items) {
        if (items == null || items.size() == 0) {
            return null;
        }
        HashMap<String, ArrayList<ClientUploadDataItem>> itemsUploading = new HashMap();
        for (ClientUploadDataItem item : items) {
            verifyTinyDataUploadItemValue(context, item);
            ArrayList<ClientUploadDataItem> itemData = (ArrayList) itemsUploading.get(item.getSourcePackage());
            if (itemData == null) {
                itemData = new ArrayList();
                itemsUploading.put(item.getSourcePackage(), itemData);
            }
            itemData.add(item);
        }
        return itemsUploading;
    }

    private static void verifyTinyDataUploadItemValue(Context context, ClientUploadDataItem item) {
        if (item.fromSdk) {
            item.setChannel("push_sdk_channel");
        }
        if (TextUtils.isEmpty(item.getId())) {
            item.setId(TinyDataHelper.nextTinyDataItemId());
        }
        item.setTimestamp(System.currentTimeMillis());
        if (TextUtils.isEmpty(item.getPkgName())) {
            item.setSourcePackage(context.getPackageName());
        }
        if (TextUtils.isEmpty(item.getSourcePackage())) {
            item.setSourcePackage(item.getPkgName());
        }
    }

    private static void upload(Context context, TinyDataUploader uploader, HashMap<String, ArrayList<ClientUploadDataItem>> itemsUploading) {
        for (Entry<String, ArrayList<ClientUploadDataItem>> entry : itemsUploading.entrySet()) {
            try {
                ArrayList<ClientUploadDataItem> items = (ArrayList) entry.getValue();
                if (!(items == null || items.size() == 0)) {
                    MyLog.w("TinyData is uploaded immediately item size:" + items.size());
                    uploader.upload(items, ((ClientUploadDataItem) items.get(0)).getPkgName(), (String) entry.getKey());
                }
            } catch (Exception e) {
            }
        }
    }
}
