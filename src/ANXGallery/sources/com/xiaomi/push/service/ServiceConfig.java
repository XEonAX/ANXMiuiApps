package com.xiaomi.push.service;

import android.content.SharedPreferences;
import android.util.Base64;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor.SerializedAsyncTask;
import com.xiaomi.network.HttpUtils;
import com.xiaomi.push.protobuf.ChannelConfig.PushServiceConfig;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.smack.util.TaskExecutor;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.List;

public class ServiceConfig {
    private static String sDeviceUUID;
    private static ServiceConfig sInstance = new ServiceConfig();
    private PushServiceConfig mConfig;
    private List<Listener> mListener = new ArrayList();
    private SerializedAsyncTask mPendingFetchTask;

    public static abstract class Listener {
        public void onConfigMsgReceive(PushServiceConfigMsg config) {
        }

        public void onConfigChange(PushServiceConfig cfg) {
        }
    }

    public static ServiceConfig getInstance() {
        return sInstance;
    }

    private ServiceConfig() {
    }

    public synchronized void addListener(Listener listener) {
        this.mListener.add(listener);
    }

    synchronized void clear() {
        this.mListener.clear();
    }

    private void checkLoad() {
        if (this.mConfig == null) {
            load();
        }
    }

    int getConfigVersion() {
        checkLoad();
        if (this.mConfig != null) {
            return this.mConfig.getConfigVersion();
        }
        return 0;
    }

    public PushServiceConfig getConfig() {
        checkLoad();
        return this.mConfig;
    }

    void handle(PushServiceConfigMsg config) {
        if (config.hasCloudVersion() && config.getCloudVersion() > getConfigVersion()) {
            fetchConfig();
        }
        synchronized (this) {
        }
        for (Listener listener : (Listener[]) this.mListener.toArray(new Listener[this.mListener.size()])) {
            listener.onConfigMsgReceive(config);
        }
    }

    public static synchronized String getDeviceUUID() {
        String str;
        synchronized (ServiceConfig.class) {
            if (sDeviceUUID == null) {
                SharedPreferences sp = SystemUtils.getContext().getSharedPreferences("XMPushServiceConfig", 0);
                sDeviceUUID = sp.getString("DeviceUUID", null);
                if (sDeviceUUID == null) {
                    sDeviceUUID = DeviceInfo.getDeviceId(SystemUtils.getContext(), false);
                    if (sDeviceUUID != null) {
                        sp.edit().putString("DeviceUUID", sDeviceUUID).commit();
                    }
                }
            }
            str = sDeviceUUID;
        }
        return str;
    }

    private void fetchConfig() {
        if (this.mPendingFetchTask == null) {
            this.mPendingFetchTask = new SerializedAsyncTask() {
                boolean success = false;

                public void process() {
                    try {
                        PushServiceConfig config = PushServiceConfig.parseFrom(Base64.decode(HttpUtils.get(SystemUtils.getContext(), "http://resolver.msg.xiaomi.net/psc/?t=a", null), 10));
                        if (config != null) {
                            ServiceConfig.this.mConfig = config;
                            this.success = true;
                            ServiceConfig.this.save();
                        }
                    } catch (Exception e) {
                        MyLog.w("fetch config failure: " + e.getMessage());
                    }
                }

                public void postProcess() {
                    ServiceConfig.this.mPendingFetchTask = null;
                    if (this.success) {
                        synchronized (ServiceConfig.this) {
                        }
                        for (Listener listener : (Listener[]) ServiceConfig.this.mListener.toArray(new Listener[ServiceConfig.this.mListener.size()])) {
                            listener.onConfigChange(ServiceConfig.this.mConfig);
                        }
                    }
                }
            };
            TaskExecutor.execute(this.mPendingFetchTask);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:21:? A:{SYNTHETIC, RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void load() {
        Exception e;
        Throwable th;
        BufferedInputStream br = null;
        try {
            BufferedInputStream br2 = new BufferedInputStream(SystemUtils.getContext().openFileInput("XMCloudCfg"));
            try {
                this.mConfig = PushServiceConfig.parseFrom(CodedInputStreamMicro.newInstance(br2));
                br2.close();
                IOUtils.closeQuietly(br2);
                br = br2;
            } catch (Exception e2) {
                e = e2;
                br = br2;
                try {
                    MyLog.w("load config failure: " + e.getMessage());
                    IOUtils.closeQuietly(br);
                    if (this.mConfig == null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(br);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                br = br2;
                IOUtils.closeQuietly(br);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            MyLog.w("load config failure: " + e.getMessage());
            IOUtils.closeQuietly(br);
            if (this.mConfig == null) {
            }
        }
        if (this.mConfig == null) {
            this.mConfig = new PushServiceConfig();
        }
    }

    private void save() {
        try {
            if (this.mConfig != null) {
                BufferedOutputStream bw = new BufferedOutputStream(SystemUtils.getContext().openFileOutput("XMCloudCfg", 0));
                CodedOutputStreamMicro out = CodedOutputStreamMicro.newInstance(bw);
                this.mConfig.writeTo(out);
                out.flush();
                bw.close();
            }
        } catch (Exception e) {
            MyLog.w("save config failure: " + e.getMessage());
        }
    }
}
