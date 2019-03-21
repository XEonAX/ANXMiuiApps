package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.push.service.TinyDataHelper;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class MiTinyDataClient {

    public static class MiTinyDataClientImp {
        private static MiTinyDataClientImp sInstance;
        private String mChannel;
        private Context mContext;
        private final ArrayList<ClientUploadDataItem> mPendingList = new ArrayList();
        private Boolean mPushServiceAcceptTinyData;
        private SmoothSender mSmoothSender = new SmoothSender();

        public class SmoothSender {
            private ScheduledThreadPoolExecutor mExecutor = new ScheduledThreadPoolExecutor(1);
            private ScheduledFuture<?> mFuture;
            public final ArrayList<ClientUploadDataItem> mList = new ArrayList();
            private final Runnable repeatTask = new Runnable() {
                public void run() {
                    if (SmoothSender.this.mList.size() != 0) {
                        SmoothSender.this.doSend();
                    } else if (SmoothSender.this.mFuture != null) {
                        SmoothSender.this.mFuture.cancel(false);
                        SmoothSender.this.mFuture = null;
                    }
                }
            };

            public void add(final ClientUploadDataItem item) {
                this.mExecutor.execute(new Runnable() {
                    public void run() {
                        SmoothSender.this.mList.add(item);
                        SmoothSender.this.awake();
                    }
                });
            }

            private void awake() {
                if (this.mFuture == null) {
                    this.mFuture = this.mExecutor.scheduleAtFixedRate(this.repeatTask, 1000, 1000, TimeUnit.MILLISECONDS);
                }
            }

            private void doSend() {
                ClientUploadDataItem item = (ClientUploadDataItem) this.mList.remove(0);
                for (XmPushActionNotification notification : TinyDataHelper.pack(Arrays.asList(new ClientUploadDataItem[]{item}), MiTinyDataClientImp.this.mContext.getPackageName(), AppInfoHolder.getInstance(MiTinyDataClientImp.this.mContext).getAppID(), 30720)) {
                    MyLog.v("MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)." + item.getId());
                    PushServiceClient.getInstance(MiTinyDataClientImp.this.mContext).sendMessage(notification, ActionType.Notification, true, null);
                }
            }
        }

        public static MiTinyDataClientImp getInstance() {
            if (sInstance == null) {
                synchronized (MiTinyDataClientImp.class) {
                    if (sInstance == null) {
                        sInstance = new MiTinyDataClientImp();
                    }
                }
            }
            return sInstance;
        }

        public void init(Context context) {
            if (context == null) {
                MyLog.w("context is null, MiTinyDataClientImp.init() failed.");
                return;
            }
            this.mContext = context;
            this.mPushServiceAcceptTinyData = Boolean.valueOf(checkSupportTinyData(context));
            processPendingList("com.xiaomi.xmpushsdk.tinydataPending.init");
        }

        public void processPendingList(String reason) {
            MyLog.v("MiTinyDataClient.processPendingList(" + reason + ")");
            ArrayList<ClientUploadDataItem> items = new ArrayList();
            synchronized (this.mPendingList) {
                items.addAll(this.mPendingList);
                this.mPendingList.clear();
            }
            Iterator it = items.iterator();
            while (it.hasNext()) {
                processUploadRequest((ClientUploadDataItem) it.next());
            }
        }

        private boolean checkSupportTinyData(Context context) {
            if (!PushServiceClient.getInstance(context).shouldUseMIUIPush()) {
                return true;
            }
            try {
                PackageInfo pkgInfo = context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
                if (pkgInfo == null) {
                    return false;
                }
                if (pkgInfo.versionCode < BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE) {
                    return false;
                }
                return true;
            } catch (Exception e) {
                return false;
            }
        }

        public boolean alreadyInit() {
            return this.mContext != null;
        }

        public synchronized boolean processUploadRequest(ClientUploadDataItem item) {
            boolean z = false;
            synchronized (this) {
                if (item != null) {
                    if (!TinyDataHelper.verify(item, true)) {
                        boolean missChannel;
                        boolean needInit;
                        boolean missAppId;
                        if (TextUtils.isEmpty(item.getChannel()) && TextUtils.isEmpty(this.mChannel)) {
                            missChannel = true;
                        } else {
                            missChannel = false;
                        }
                        if (alreadyInit()) {
                            needInit = false;
                        } else {
                            needInit = true;
                        }
                        if (this.mContext == null || missingAppId(this.mContext)) {
                            missAppId = true;
                        } else {
                            missAppId = false;
                        }
                        if (needInit || missChannel || missAppId) {
                            if (missChannel) {
                                MyLog.v("MiTinyDataClient Pending " + item.getName() + " reason is " + "com.xiaomi.xmpushsdk.tinydataPending.channel");
                            } else if (needInit) {
                                MyLog.v("MiTinyDataClient Pending " + item.getName() + " reason is " + "com.xiaomi.xmpushsdk.tinydataPending.init");
                            } else if (missAppId) {
                                MyLog.v("MiTinyDataClient Pending " + item.getName() + " reason is " + "com.xiaomi.xmpushsdk.tinydataPending.appId");
                            }
                            addToPendingList(item);
                            z = true;
                        } else {
                            MyLog.v("MiTinyDataClient Send item immediately." + item.getId());
                            if (TextUtils.isEmpty(item.getId())) {
                                item.setId(PacketHelper.generatePacketID());
                            }
                            if (TextUtils.isEmpty(item.getChannel())) {
                                item.setChannel(this.mChannel);
                            }
                            if (TextUtils.isEmpty(item.getSourcePackage())) {
                                item.setSourcePackage(this.mContext.getPackageName());
                            }
                            if (item.getTimestamp() <= 0) {
                                item.setTimestamp(System.currentTimeMillis());
                            }
                            z = upload(item);
                        }
                    }
                }
            }
            return z;
        }

        private boolean missingAppId(Context context) {
            return AppInfoHolder.getInstance(context).getAppID() == null && !checkSupportTinyData(this.mContext);
        }

        private void addToPendingList(ClientUploadDataItem item) {
            synchronized (this.mPendingList) {
                if (!this.mPendingList.contains(item)) {
                    this.mPendingList.add(item);
                    if (this.mPendingList.size() > 100) {
                        this.mPendingList.remove(0);
                    }
                }
            }
        }

        private boolean upload(ClientUploadDataItem item) {
            if (TinyDataHelper.verify(item, false)) {
                return false;
            }
            if (this.mPushServiceAcceptTinyData.booleanValue()) {
                MyLog.v("MiTinyDataClient Send item by PushServiceClient.sendTinyData(ClientUploadDataItem)." + item.getId());
                PushServiceClient.getInstance(this.mContext).sendTinyData(item);
            } else {
                this.mSmoothSender.add(item);
            }
            return true;
        }
    }

    public static boolean upload(String category, String name, long counter, String data) {
        ClientUploadDataItem item = new ClientUploadDataItem();
        item.setCategory(category);
        item.setName(name);
        item.setCounter(counter);
        item.setData(data);
        return MiTinyDataClientImp.getInstance().processUploadRequest(item);
    }

    public static boolean upload(Context context, String category, String name, long counter, String data) {
        ClientUploadDataItem item = new ClientUploadDataItem();
        item.setCategory(category);
        item.setName(name);
        item.setCounter(counter);
        item.setData(data);
        item.setFromSdk(true);
        item.setChannel("push_sdk_channel");
        return upload(context, item);
    }

    public static boolean upload(Context context, ClientUploadDataItem item) {
        MyLog.v("MiTinyDataClient.upload " + item.getId());
        if (!MiTinyDataClientImp.getInstance().alreadyInit()) {
            MiTinyDataClientImp.getInstance().init(context);
        }
        return MiTinyDataClientImp.getInstance().processUploadRequest(item);
    }
}
