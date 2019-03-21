package com.xiaomi.tinyData;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.TinyDataHelper;
import com.xiaomi.push.service.TinyDataStorage;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import java.util.HashMap;
import java.util.Map;

public class TinyDataManager {
    private static TinyDataManager sInstance;
    private final Context mContext;
    private Map<String, TinyDataUploader> mUploaders = new HashMap();

    public static TinyDataManager getInstance(Context context) {
        if (context == null) {
            MyLog.e("[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed.");
            return null;
        }
        if (sInstance == null) {
            synchronized (TinyDataManager.class) {
                if (sInstance == null) {
                    sInstance = new TinyDataManager(context);
                }
            }
        }
        return sInstance;
    }

    private TinyDataManager(Context context) {
        this.mContext = context;
    }

    public void addUploader(TinyDataUploader uploader, String provider) {
        if (uploader == null) {
            MyLog.e("[TinyDataManager]: please do not add null mUploader to TinyDataManager.");
        } else if (TextUtils.isEmpty(provider)) {
            MyLog.e("[TinyDataManager]: can not add a provider from unkown resource.");
        } else {
            getUploaders().put(provider, uploader);
        }
    }

    TinyDataUploader getUploader() {
        TinyDataUploader pushChannelUploader = (TinyDataUploader) this.mUploaders.get("UPLOADER_PUSH_CHANNEL");
        if (pushChannelUploader != null) {
            return pushChannelUploader;
        }
        TinyDataUploader httpUploader = (TinyDataUploader) this.mUploaders.get("UPLOADER_HTTP");
        if (httpUploader != null) {
            return httpUploader;
        }
        return null;
    }

    Map<String, TinyDataUploader> getUploaders() {
        return this.mUploaders;
    }

    public boolean upload(ClientUploadDataItem item, String pkgName) {
        if (TextUtils.isEmpty(pkgName)) {
            MyLog.w("pkgName is null or empty, upload ClientUploadDataItem failed.");
            return false;
        } else if (TinyDataHelper.verify(item, false)) {
            return false;
        } else {
            if (TextUtils.isEmpty(item.getId())) {
                item.setId(TinyDataHelper.nextTinyDataItemId());
            }
            item.setPkgName(pkgName);
            TinyDataStorage.cacheTinyData(this.mContext, item);
            return true;
        }
    }

    public boolean upload(String category, String name, long counter, String data) {
        return upload(this.mContext.getPackageName(), this.mContext.getPackageName(), category, name, counter, data);
    }

    private boolean upload(String pkgname, String sourcePkgname, String category, String name, long counter, String data) {
        ClientUploadDataItem item = new ClientUploadDataItem();
        item.setCategory(category);
        item.setName(name);
        item.setCounter(counter);
        item.setData(data);
        item.setFromSdk(true);
        item.setChannel("push_sdk_channel");
        item.setSourcePackage(sourcePkgname);
        MyLog.w("TinyData TinyDataManager.upload item:" + item.getId() + "   ts:" + System.currentTimeMillis());
        return upload(item, pkgname);
    }
}
