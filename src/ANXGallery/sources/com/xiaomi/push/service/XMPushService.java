package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.BuildSettings;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.misc.ThreadUtils;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.MD5;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.util.ClientReportUtil;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.log.LogUploader;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.push.service.MIPushAccountUtils.PushAccountChangeListener;
import com.xiaomi.push.service.PushClientsManager.ClientChangeListener;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.PushClientsManager.ClientStatus;
import com.xiaomi.push.service.awake.module.AwakeManager;
import com.xiaomi.push.service.clientReport.PushClientReportHelper;
import com.xiaomi.push.service.module.GeoFenceMessage;
import com.xiaomi.push.service.timers.Alarm;
import com.xiaomi.slim.Blob;
import com.xiaomi.slim.SlimConnection;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.ConnectionConfiguration;
import com.xiaomi.smack.ConnectionListener;
import com.xiaomi.smack.PacketListener;
import com.xiaomi.smack.SmackConfiguration;
import com.xiaomi.smack.XMPPException;
import com.xiaomi.smack.filter.PacketFilter;
import com.xiaomi.smack.packet.IQ;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.packet.Presence;
import com.xiaomi.smack.util.TaskExecutor;
import com.xiaomi.smack.util.TrafficUtils;
import com.xiaomi.stats.StatsHandler;
import com.xiaomi.stats.StatsHelper;
import com.xiaomi.tinyData.TinyDataCacheProcessor;
import com.xiaomi.tinyData.TinyDataManager;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushActionRegistration;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.thrift.TException;

public class XMPushService extends Service implements ConnectionListener {
    private static final int PID = Process.myPid();
    public static int START_STICKY = 1;
    private ConnectionConfiguration connConfig;
    private long lastAlive = 0;
    private ClientEventDispatcher mClientEventDispatcher;
    private ConnectionChangeReceiver mConnectionChangeReceiver;
    private Connection mCurrentConnection;
    private ContentObserver mExtremePowerModeObserver;
    final BroadcastReceiver mGeoReceiver = new BroadcastReceiver() {
        public void onReceive(final Context context, Intent intent) {
            if (TextUtils.equals("com.xiaomi.metoknlp.geofencing.state_change_protected", intent.getAction())) {
                final String geoId = intent.getStringExtra("Describe");
                String state = intent.getStringExtra("State");
                if (!TextUtils.isEmpty(geoId)) {
                    if (!XMPushService.this.updateGeoFenceState(state, geoId, context)) {
                        state = "Unknown";
                        MyLog.w(" updated geofence statue about geo_id:" + geoId + " falied. current_statue:" + state);
                    }
                    final String finalState = state;
                    TaskExecutor.execute(new Runnable() {
                        public void run() {
                            Iterator it = GeoFenceMessageDao.getInstance(context).canShownGeoMessage(geoId).iterator();
                            while (it.hasNext()) {
                                GeoFenceMessage message = (GeoFenceMessage) it.next();
                                if (XMPushService.canShowGeoMessage(message.getAction(), finalState)) {
                                    if (message.getDeadline() >= System.currentTimeMillis()) {
                                        byte[] content = message.getContent();
                                        if (content == null) {
                                            MyLog.w("Geo canBeShownMessage content null");
                                        } else {
                                            Intent xmPushIntent = MIPushEventProcessor.buildIntent(content, System.currentTimeMillis());
                                            if (xmPushIntent == null) {
                                                MyLog.w("Geo canBeShownMessage intent null");
                                            } else {
                                                MIPushEventProcessor.postProcessMIPushMessage(XMPushService.this, null, content, xmPushIntent, true);
                                                if (GeoFenceMessageDao.getInstance(XMPushService.this).deleteGeoMessagesByMessageId(message.getMessageId()) == 0) {
                                                    MyLog.w("show some exit geofence message. then remove this message failed. message_id:" + message.getMessageId());
                                                }
                                            }
                                        }
                                    } else if (GeoFenceMessageDao.getInstance(context).deleteGeoMessagesByMessageId(message.getMessageId()) == 0) {
                                        MyLog.w("XMPushService remove some geofence message failed. message_id:" + message.getMessageId());
                                    }
                                }
                            }
                        }
                    });
                    MyLog.v("ownresilt结果:state= " + state + "\n describe=" + geoId);
                }
            }
        }
    };
    protected Class mJobClazz = XMJobService.class;
    private JobScheduler mJobController = null;
    private PacketListener mPacketListener = new PacketListener() {
        public void processPacket(Packet packet) {
            XMPushService.this.executeJob(new PacketReceiveJob(packet));
        }

        public void process(Blob blob) {
            XMPushService.this.executeJob(new BlobReceiveJob(blob));
        }
    };
    private PacketSync mPacketSync = null;
    private ReconnectionManager mReconnManager;
    private String mRegion;
    private SlimConnection mSlimConnection;
    Messenger messenger = null;
    private ArrayList<PingCallBack> pingCallBacks = new ArrayList();

    public static abstract class Job extends com.xiaomi.push.service.JobScheduler.Job {
        public abstract String getDesc();

        public abstract void process();

        public Job(int type) {
            super(type);
        }

        public void run() {
            if (!(this.type == 4 || this.type == 8)) {
                MyLog.w("JOB: " + getDesc());
            }
            process();
        }
    }

    class BindJob extends Job {
        ClientLoginInfo mLoginInfo = null;

        public BindJob(ClientLoginInfo info) {
            super(9);
            this.mLoginInfo = info;
        }

        public void process() {
            try {
                if (XMPushService.this.isConnected()) {
                    ClientLoginInfo cLoginInfo = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(this.mLoginInfo.chid, this.mLoginInfo.userId);
                    if (cLoginInfo == null) {
                        MyLog.w("ignore bind because the channel " + this.mLoginInfo.chid + " is removed ");
                        return;
                    } else if (cLoginInfo.status == ClientStatus.unbind) {
                        cLoginInfo.setStatus(ClientStatus.binding, 0, 0, null, null);
                        XMPushService.this.mCurrentConnection.bind(cLoginInfo);
                        StatsHelper.statsBind(XMPushService.this, cLoginInfo);
                        return;
                    } else {
                        MyLog.w("trying duplicate bind, ingore! " + cLoginInfo.status);
                        return;
                    }
                }
                MyLog.e("trying bind while the connection is not created, quit!");
            } catch (Throwable e) {
                MyLog.e(e);
                XMPushService.this.disconnect(10, e);
            } catch (Throwable th) {
            }
        }

        public String getDesc() {
            return "bind the client. " + this.mLoginInfo.chid;
        }
    }

    static class BindTimeoutJob extends Job {
        private final ClientLoginInfo mLoginInfo;

        public BindTimeoutJob(ClientLoginInfo info) {
            super(12);
            this.mLoginInfo = info;
        }

        public void process() {
            this.mLoginInfo.setStatus(ClientStatus.unbind, 1, 21, null, null);
        }

        public String getDesc() {
            return "bind time out. chid=" + this.mLoginInfo.chid;
        }

        public boolean equals(Object o) {
            if (o instanceof BindTimeoutJob) {
                return TextUtils.equals(((BindTimeoutJob) o).mLoginInfo.chid, this.mLoginInfo.chid);
            }
            return false;
        }

        public int hashCode() {
            return this.mLoginInfo.chid.hashCode();
        }
    }

    class BlobReceiveJob extends Job {
        private Blob mBlob = null;

        public BlobReceiveJob(Blob blob) {
            super(8);
            this.mBlob = blob;
        }

        public void process() {
            XMPushService.this.mPacketSync.onBlobReceive(this.mBlob);
        }

        public String getDesc() {
            return "receive a message.";
        }
    }

    public class ConnectJob extends Job {
        ConnectJob() {
            super(1);
        }

        public void process() {
            if (XMPushService.this.shouldReconnect()) {
                XMPushService.this.connect();
            } else {
                MyLog.w("should not connect. quit the job.");
            }
        }

        public String getDesc() {
            return "do reconnect..";
        }
    }

    class ConnectionChangeReceiver extends BroadcastReceiver {
        ConnectionChangeReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            XMPushService.this.onStart(intent, XMPushService.START_STICKY);
        }
    }

    public class DisconnectJob extends Job {
        public Exception e;
        public int reason;

        DisconnectJob(int reason, Exception e) {
            super(2);
            this.reason = reason;
            this.e = e;
        }

        public void process() {
            XMPushService.this.disconnect(this.reason, this.e);
        }

        public String getDesc() {
            return "disconnect the connection.";
        }
    }

    class InitJob extends Job {
        InitJob() {
            super(65535);
        }

        public void process() {
            XMPushService.this.postOnCreate();
        }

        public String getDesc() {
            return "Init Job";
        }
    }

    class IntentJob extends Job {
        private Intent mIntent = null;

        public IntentJob(Intent intent) {
            super(15);
            this.mIntent = intent;
        }

        public void process() {
            XMPushService.this.handleIntent(this.mIntent);
        }

        public String getDesc() {
            return "Handle intent action = " + this.mIntent.getAction();
        }
    }

    class KillJob extends Job {
        public KillJob() {
            super(5);
        }

        public void process() {
            XMPushService.this.mJobController.quit();
        }

        public String getDesc() {
            return "ask the job queue to quit";
        }
    }

    class PacketReceiveJob extends Job {
        private Packet mPacket = null;

        public PacketReceiveJob(Packet packet) {
            super(8);
            this.mPacket = packet;
        }

        public void process() {
            XMPushService.this.mPacketSync.onPacketReceive(this.mPacket);
        }

        public String getDesc() {
            return "receive a message.";
        }
    }

    public interface PingCallBack {
        void pingFollowUpAction();
    }

    class PingJob extends Job {
        boolean isPong;

        public PingJob(boolean isPong) {
            super(4);
            this.isPong = isPong;
        }

        public void process() {
            if (XMPushService.this.isConnected()) {
                try {
                    if (!this.isPong) {
                        StatsHelper.pingStarted();
                    }
                    XMPushService.this.mCurrentConnection.ping(this.isPong);
                } catch (Throwable e) {
                    MyLog.e(e);
                    XMPushService.this.disconnect(10, e);
                }
            }
        }

        public String getDesc() {
            return "send ping..";
        }
    }

    class ReBindJob extends Job {
        ClientLoginInfo mLoginInfo = null;

        public ReBindJob(ClientLoginInfo info) {
            super(4);
            this.mLoginInfo = info;
        }

        public void process() {
            try {
                this.mLoginInfo.setStatus(ClientStatus.unbind, 1, 16, null, null);
                XMPushService.this.mCurrentConnection.unbind(this.mLoginInfo.chid, this.mLoginInfo.userId);
                this.mLoginInfo.setStatus(ClientStatus.binding, 1, 16, null, null);
                XMPushService.this.mCurrentConnection.bind(this.mLoginInfo);
            } catch (Throwable e) {
                MyLog.e(e);
                XMPushService.this.disconnect(10, e);
            }
        }

        public String getDesc() {
            return "rebind the client. " + this.mLoginInfo.chid;
        }
    }

    class ResetConnectionJob extends Job {
        ResetConnectionJob() {
            super(3);
        }

        public void process() {
            XMPushService.this.disconnect(11, null);
            if (XMPushService.this.shouldReconnect()) {
                XMPushService.this.connect();
            }
        }

        public String getDesc() {
            return "reset the connection.";
        }
    }

    class UnbindJob extends Job {
        String kickType;
        ClientLoginInfo mLoginInfo = null;
        int mNotifyType;
        String reason;

        public UnbindJob(ClientLoginInfo info, int notifyType, String kickType, String reason) {
            super(9);
            this.mLoginInfo = info;
            this.mNotifyType = notifyType;
            this.kickType = kickType;
            this.reason = reason;
        }

        public void process() {
            if (!(this.mLoginInfo.status == ClientStatus.unbind || XMPushService.this.mCurrentConnection == null)) {
                try {
                    XMPushService.this.mCurrentConnection.unbind(this.mLoginInfo.chid, this.mLoginInfo.userId);
                } catch (Throwable e) {
                    MyLog.e(e);
                    XMPushService.this.disconnect(10, e);
                }
            }
            this.mLoginInfo.setStatus(ClientStatus.unbind, this.mNotifyType, 0, this.reason, this.kickType);
        }

        public String getDesc() {
            return "unbind the channel. " + this.mLoginInfo.chid;
        }
    }

    static {
        HostManager.addReservedHost("app.chat.xiaomi.net", "app.chat.xiaomi.net");
        HostManager.addReservedHost("app.chat.xiaomi.net", "42.62.94.2:443");
        HostManager.addReservedHost("app.chat.xiaomi.net", "114.54.23.2");
        HostManager.addReservedHost("app.chat.xiaomi.net", "111.13.142.2");
        HostManager.addReservedHost("app.chat.xiaomi.net", "111.206.200.2");
    }

    public void onCreate() {
        super.onCreate();
        SystemUtils.initialize(this);
        MIPushAccount account = MIPushAccountUtils.getMIPushAccount(this);
        if (account != null) {
            BuildSettings.setEnvType(account.envType);
        }
        this.messenger = new Messenger(new Handler() {
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                if (msg != null) {
                    try {
                        switch (msg.what) {
                            case 17:
                                if (msg.obj != null) {
                                    XMPushService.this.onStart(msg.obj, XMPushService.START_STICKY);
                                    return;
                                }
                                return;
                            case 18:
                                Message message = Message.obtain(null, 0);
                                message.what = 18;
                                Bundle bundle = new Bundle();
                                bundle.putString("xmsf_region", XMPushService.this.mRegion);
                                message.setData(bundle);
                                msg.replyTo.send(message);
                                return;
                            default:
                                return;
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        });
        PushHostManagerFactory.init(this);
        this.connConfig = new ConnectionConfiguration(null, 5222, "xiaomi.com", null) {
            public byte[] getConnectionBlob() {
                try {
                    PushServiceConfigMsg msg = new PushServiceConfigMsg();
                    msg.setClientVersion(ServiceConfig.getInstance().getConfigVersion());
                    return msg.toByteArray();
                } catch (Exception e) {
                    MyLog.w("getOBBString err: " + e.toString());
                    return null;
                }
            }
        };
        this.connConfig.setDebuggerEnabled(true);
        this.mSlimConnection = new SlimConnection(this, this.connConfig);
        this.mClientEventDispatcher = createClientEventDispatcher();
        Alarm.initialize(this);
        this.mSlimConnection.addConnectionListener(this);
        this.mPacketSync = new PacketSync(this);
        this.mReconnManager = new ReconnectionManager(this);
        new CommonPacketExtensionProvider().register();
        StatsHandler.getInstance().init(this);
        this.mJobController = new JobScheduler("Connection Controller Thread");
        PushClientsManager pcm = PushClientsManager.getInstance();
        pcm.removeAllClientChangeListeners();
        pcm.addClientChangeListener(new ClientChangeListener() {
            public void onChange() {
                XMPushService.this.updateAlarmTimer();
                if (PushClientsManager.getInstance().getActiveClientCount() <= 0) {
                    XMPushService.this.executeJob(new DisconnectJob(12, null));
                }
            }
        });
        if (canOpenForegroundService()) {
            enableForegroundService();
        }
        TinyDataManager.getInstance(this).addUploader(new LongConnUploader(this), "UPLOADER_PUSH_CHANNEL");
        addPingCallBack(new TinyDataCacheProcessor(this));
        executeJob(new InitJob());
        if (isPushEnabled()) {
            this.mConnectionChangeReceiver = new ConnectionChangeReceiver();
            registerReceiver(this.mConnectionChangeReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            Uri uri = Secure.getUriFor("EXTREME_POWER_MODE_ENABLE");
            if (uri != null) {
                this.mExtremePowerModeObserver = new ContentObserver(new Handler(Looper.getMainLooper())) {
                    public void onChange(boolean selfChange) {
                        super.onChange(selfChange);
                        boolean isXPowerMode = XMPushService.this.isExtremePowerSaveMode();
                        MyLog.w("ExtremePowerMode:" + isXPowerMode);
                        if (isXPowerMode) {
                            XMPushService.this.executeJob(new DisconnectJob(23, null));
                        } else {
                            XMPushService.this.scheduleConnect(true);
                        }
                    }
                };
                try {
                    getContentResolver().registerContentObserver(uri, false, this.mExtremePowerModeObserver);
                } catch (Throwable e) {
                    MyLog.w("register observer err:" + e.getMessage());
                }
            }
        }
        MyLog.w("XMPushService created pid = " + PID);
    }

    private String ensureRegionAvaible() {
        ThreadUtils.checkNotUIThread();
        String region = null;
        long start = SystemClock.elapsedRealtime();
        Object wait = new Object();
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            PushProvision provision = PushProvision.getInstance(this);
            while (true) {
                if (!TextUtils.isEmpty(region) && provision.getProvisioned() != 0) {
                    break;
                }
                if (TextUtils.isEmpty(region)) {
                    region = MIUIUtils.getProperty("ro.miui.region");
                    if (TextUtils.isEmpty(region)) {
                        region = MIUIUtils.getProperty("ro.product.locale.region");
                    }
                }
                try {
                    synchronized (wait) {
                        wait.wait(100);
                    }
                } catch (InterruptedException e) {
                }
            }
        } else {
            region = MIUIUtils.getCountryCode();
        }
        if (!TextUtils.isEmpty(region)) {
            region = MIUIUtils.getRegion(region).name();
        }
        MyLog.w("wait region :" + region + " cost = " + (SystemClock.elapsedRealtime() - start));
        return region;
    }

    private void postOnCreate() {
        AppRegionStorage store = AppRegionStorage.getInstance(getApplicationContext());
        String appRegion = store.getRegion();
        if (TextUtils.isEmpty(appRegion)) {
            appRegion = ensureRegionAvaible();
        }
        if (TextUtils.isEmpty(appRegion)) {
            this.mRegion = Region.China.name();
        } else {
            this.mRegion = appRegion;
            store.setRegion(appRegion);
            if (Region.Global.name().equals(this.mRegion)) {
                ConnectionConfiguration.setXmppServerHost("app.chat.global.xiaomi.net");
            } else if (Region.Europe.name().equals(this.mRegion)) {
                ConnectionConfiguration.setXmppServerHost("fr.app.chat.global.xiaomi.net");
            } else if (Region.Russia.name().equals(this.mRegion)) {
                ConnectionConfiguration.setXmppServerHost("ru.app.chat.global.xiaomi.net");
            } else if (Region.India.name().equals(this.mRegion)) {
                ConnectionConfiguration.setXmppServerHost("idmb.app.chat.global.xiaomi.net");
            }
        }
        if (isPushEnabled()) {
            final Job job = new Job(11) {
                public void process() {
                    MIPushHelper.prepareMIPushAccount(XMPushService.this);
                    if (Network.hasNetwork(XMPushService.this)) {
                        XMPushService.this.scheduleConnect(true);
                    }
                }

                public String getDesc() {
                    return "prepare the mi push account.";
                }
            };
            executeJob(job);
            MIPushAccountUtils.setAccountChangeListener(new PushAccountChangeListener() {
                public void onChange() {
                    XMPushService.this.executeJob(job);
                }
            });
        }
        ScheduledJobManager.getInstance(this).addRepeatJob(new GeoFenceDBCleaner(this), 86400);
        try {
            if (SystemUtils.isBootCompleted()) {
                this.mClientEventDispatcher.notifyServiceStarted(this);
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    private boolean updateGeoFenceState(String state, String geoId, Context context) {
        if (TextUtils.equals("Leave", state) && !TextUtils.equals("Enter", GeoFenceDao.getInstance(context).findGeoStatueByGeoId(geoId))) {
            return false;
        }
        if (GeoFenceDao.getInstance(context).updateGeoStatueByGeoid(geoId, state) != 0) {
            return true;
        }
        MyLog.w("update geofence statue failed geo_id:" + geoId);
        return false;
    }

    public static boolean canShowGeoMessage(int messageAction, String state) {
        if (TextUtils.equals(state, "Enter") && messageAction == 1) {
            return true;
        }
        if (TextUtils.equals(state, "Leave") && messageAction == 2) {
            return true;
        }
        return false;
    }

    private void networkChanged() {
        NetworkInfo currentNetworkInfo = null;
        try {
            currentNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable e) {
            MyLog.e(e);
        }
        if (currentNetworkInfo != null) {
            StringBuilder builder = new StringBuilder("[");
            builder.append("type: ").append(currentNetworkInfo.getTypeName()).append("[").append(currentNetworkInfo.getSubtypeName()).append("], state: ").append(currentNetworkInfo.getState()).append("/").append(currentNetworkInfo.getDetailedState());
            MyLog.w("network changed," + builder.toString());
            State state = currentNetworkInfo.getState();
            if (state == State.SUSPENDED || state == State.UNKNOWN) {
                return;
            }
        }
        MyLog.w("network changed, no active network");
        if (StatsHandler.getContext() != null) {
            StatsHandler.getContext().statsChannelIfNeed();
        }
        TrafficUtils.notifyNetworkChanage(this);
        this.mSlimConnection.clearCachedStatus();
        if (Network.hasNetwork(this)) {
            if (isConnected() && shouldCheckAlive()) {
                checkAlive(false);
            }
            if (!(isConnected() || isConnecting())) {
                this.mJobController.removeJobs(1);
                executeJob(new ConnectJob());
            }
            LogUploader.getInstance(this).checkUpload();
        } else {
            executeJob(new DisconnectJob(2, null));
        }
        updateAlarmTimer();
    }

    private boolean shouldCheckAlive() {
        if (System.currentTimeMillis() - this.lastAlive < 30000) {
            return false;
        }
        return Network.isConnected(this);
    }

    void sendPongIfNeed() {
        if (System.currentTimeMillis() - this.lastAlive >= ((long) SmackConfiguration.getCheckAliveInterval()) && Network.isConnected(this)) {
            checkAlive(true);
        }
    }

    private void checkAlive(boolean isPong) {
        this.lastAlive = System.currentTimeMillis();
        if (!isConnected()) {
            scheduleConnect(true);
        } else if (this.mCurrentConnection.isReadAlive() || this.mCurrentConnection.isWriteAlive() || Network.isWIFIConnected(this)) {
            executeJobNow(new PingJob(isPong));
        } else {
            executeJobNow(new DisconnectJob(17, null));
            scheduleConnect(true);
        }
    }

    public void onStart(Intent intent, int startId) {
        if (intent == null) {
            MyLog.e("onStart() with intent NULL");
        } else {
            MyLog.v(String.format("onStart() with intent.Action = %s, chid = %s", new Object[]{intent.getAction(), intent.getStringExtra(PushConstants.EXTRA_CHANNEL_ID)}));
        }
        if (intent != null && intent.getAction() != null) {
            if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction()) || "com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
                if (this.mJobController.isBlocked()) {
                    MyLog.e("ERROR, the job controller is blocked.");
                    PushClientsManager.getInstance().resetAllClients(this, 14);
                    stopSelf();
                    return;
                }
                executeJob(new IntentJob(intent));
            } else if (!"com.xiaomi.push.network_status_changed".equalsIgnoreCase(intent.getAction())) {
                executeJob(new IntentJob(intent));
            }
        }
    }

    private void sendMessage(Intent intent) {
        String pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
        String session = intent.getStringExtra(PushConstants.EXTRA_SESSION);
        Blob blob = null;
        Bundle msgBundle = intent.getBundleExtra("ext_packet");
        PushClientsManager pcm = PushClientsManager.getInstance();
        if (msgBundle != null) {
            com.xiaomi.smack.packet.Message packet = (com.xiaomi.smack.packet.Message) preparePacket(new com.xiaomi.smack.packet.Message(msgBundle), pkgName, session);
            if (packet != null) {
                blob = Blob.from(packet, pcm.getClientLoginInfoByChidAndUserId(packet.getChannelId(), packet.getFrom()).security);
            } else {
                return;
            }
        }
        byte[] rawMsg = intent.getByteArrayExtra("ext_raw_packet");
        if (rawMsg != null) {
            long from = intent.getLongExtra(PushConstants.EXTRA_USER_ID, 0);
            String res = intent.getStringExtra(PushConstants.EXTRA_USER_RES);
            String chid = intent.getStringExtra("ext_chid");
            ClientLoginInfo loginInfo = pcm.getClientLoginInfoByChidAndUserId(chid, Long.toString(from));
            if (loginInfo != null) {
                blob = new Blob();
                try {
                    blob.setChannelId(Integer.parseInt(chid));
                } catch (NumberFormatException e) {
                }
                blob.setCmd("SECMSG", null);
                blob.setFrom(from, "xiaomi.com", res);
                blob.setPacketID(intent.getStringExtra("ext_pkt_id"));
                blob.setPayload(rawMsg, loginInfo.security);
            }
        }
        if (blob != null) {
            executeJobNow(new SendMessageJob(this, blob));
        }
    }

    private void sendMessages(Intent intent) {
        String pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
        String session = intent.getStringExtra(PushConstants.EXTRA_SESSION);
        Parcelable[] msgParcelable = intent.getParcelableArrayExtra("ext_packets");
        com.xiaomi.smack.packet.Message[] messages = new com.xiaomi.smack.packet.Message[msgParcelable.length];
        boolean encrypt = intent.getBooleanExtra("ext_encrypt", true);
        int i = 0;
        while (i < msgParcelable.length) {
            messages[i] = new com.xiaomi.smack.packet.Message((Bundle) msgParcelable[i]);
            messages[i] = (com.xiaomi.smack.packet.Message) preparePacket(messages[i], pkgName, session);
            if (messages[i] != null) {
                i++;
            } else {
                return;
            }
        }
        PushClientsManager pcm = PushClientsManager.getInstance();
        Blob[] blobs = new Blob[messages.length];
        for (i = 0; i < messages.length; i++) {
            com.xiaomi.smack.packet.Message msg = messages[i];
            blobs[i] = Blob.from(msg, pcm.getClientLoginInfoByChidAndUserId(msg.getChannelId(), msg.getFrom()).security);
        }
        executeJobNow(new BatchSendMessageJob(this, blobs));
    }

    private void handleIntent(Intent intent) {
        PushClientsManager pcm = PushClientsManager.getInstance();
        String chid;
        ClientLoginInfo cLoginInfo;
        String pkgName;
        String userId;
        String session;
        Packet newPacket;
        final byte[] payload;
        final String packageName;
        String appId;
        String pkg;
        if (PushConstants.ACTION_OPEN_CHANNEL.equalsIgnoreCase(intent.getAction()) || PushConstants.ACTION_FORCE_RECONNECT.equalsIgnoreCase(intent.getAction())) {
            chid = intent.getStringExtra(PushConstants.EXTRA_CHANNEL_ID);
            if (TextUtils.isEmpty(intent.getStringExtra(PushConstants.EXTRA_SECURITY))) {
                MyLog.w("security is empty. ignore.");
            } else if (chid != null) {
                boolean needRebind = shouldRebind(chid, intent);
                cLoginInfo = updatePushClient(chid, intent);
                if (!Network.hasNetwork(this)) {
                    this.mClientEventDispatcher.notifyChannelOpenResult(this, cLoginInfo, false, 2, null);
                } else if (!isConnected()) {
                    scheduleConnect(true);
                } else if (cLoginInfo.status == ClientStatus.unbind) {
                    executeJobNow(new BindJob(cLoginInfo));
                } else if (needRebind) {
                    executeJobNow(new ReBindJob(cLoginInfo));
                } else if (cLoginInfo.status == ClientStatus.binding) {
                    MyLog.w(String.format("the client is binding. %1$s %2$s.", new Object[]{cLoginInfo.chid, ClientLoginInfo.getResource(cLoginInfo.userId)}));
                } else if (cLoginInfo.status == ClientStatus.binded) {
                    this.mClientEventDispatcher.notifyChannelOpenResult(this, cLoginInfo, true, null, null);
                }
            } else {
                MyLog.e("channel id is empty, do nothing!");
            }
        } else if (PushConstants.ACTION_CLOSE_CHANNEL.equalsIgnoreCase(intent.getAction())) {
            pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
            chid = intent.getStringExtra(PushConstants.EXTRA_CHANNEL_ID);
            userId = intent.getStringExtra(PushConstants.EXTRA_USER_ID);
            MyLog.w("Service called close channel chid = " + chid + " res = " + ClientLoginInfo.getResource(userId));
            if (TextUtils.isEmpty(chid)) {
                for (String id : pcm.queryChannelIdByPackage(pkgName)) {
                    closeAllChannelByChid(id, 2);
                }
            } else if (TextUtils.isEmpty(userId)) {
                closeAllChannelByChid(chid, 2);
            } else {
                closeChannel(chid, userId, 2, null, null);
            }
        } else if (PushConstants.ACTION_SEND_MESSAGE.equalsIgnoreCase(intent.getAction())) {
            sendMessage(intent);
        } else if (PushConstants.ACTION_BATCH_SEND_MESSAGE.equalsIgnoreCase(intent.getAction())) {
            sendMessages(intent);
        } else if (PushConstants.ACTION_SEND_IQ.equalsIgnoreCase(intent.getAction())) {
            pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
            session = intent.getStringExtra(PushConstants.EXTRA_SESSION);
            newPacket = preparePacket(new IQ(intent.getBundleExtra("ext_packet")), pkgName, session);
            if (newPacket != null) {
                executeJobNow(new SendMessageJob(this, Blob.from(newPacket, pcm.getClientLoginInfoByChidAndUserId(newPacket.getChannelId(), newPacket.getFrom()).security)));
            }
        } else if (PushConstants.ACTION_SEND_PRESENCE.equalsIgnoreCase(intent.getAction())) {
            pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
            session = intent.getStringExtra(PushConstants.EXTRA_SESSION);
            newPacket = preparePacket(new Presence(intent.getBundleExtra("ext_packet")), pkgName, session);
            if (newPacket != null) {
                executeJobNow(new SendMessageJob(this, Blob.from(newPacket, pcm.getClientLoginInfoByChidAndUserId(newPacket.getChannelId(), newPacket.getFrom()).security)));
            }
        } else if (PushConstants.ACTION_RESET_CONNECTION.equals(intent.getAction())) {
            chid = intent.getStringExtra(PushConstants.EXTRA_CHANNEL_ID);
            userId = intent.getStringExtra(PushConstants.EXTRA_USER_ID);
            if (chid != null) {
                MyLog.w("request reset connection from chid = " + chid);
                cLoginInfo = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, userId);
                if (cLoginInfo != null) {
                    if (cLoginInfo.security.equals(intent.getStringExtra(PushConstants.EXTRA_SECURITY)) && cLoginInfo.status == ClientStatus.binded) {
                        Connection conn = getCurrentConnection();
                        if (conn != null) {
                            if (conn.isReadAlive(System.currentTimeMillis() - 15000)) {
                                return;
                            }
                        }
                        executeJobNow(new ResetConnectionJob());
                    }
                }
            }
        } else if (PushConstants.ACTION_UPDATE_CHANNEL_INFO.equals(intent.getAction())) {
            pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
            List<String> ids = pcm.queryChannelIdByPackage(pkgName);
            if (ids.isEmpty()) {
                MyLog.w("open channel should be called first before update info, pkg=" + pkgName);
                return;
            }
            chid = intent.getStringExtra(PushConstants.EXTRA_CHANNEL_ID);
            userId = intent.getStringExtra(PushConstants.EXTRA_USER_ID);
            if (TextUtils.isEmpty(chid)) {
                chid = (String) ids.get(0);
            }
            ClientLoginInfo loginInfo = null;
            if (TextUtils.isEmpty(userId)) {
                Collection<ClientLoginInfo> infos = pcm.getAllClientLoginInfoByChid(chid);
                if (!(infos == null || infos.isEmpty())) {
                    loginInfo = (ClientLoginInfo) infos.iterator().next();
                }
            } else {
                loginInfo = pcm.getClientLoginInfoByChidAndUserId(chid, userId);
            }
            if (loginInfo != null) {
                if (intent.hasExtra(PushConstants.EXTRA_CLIENT_ATTR)) {
                    loginInfo.clientExtra = intent.getStringExtra(PushConstants.EXTRA_CLIENT_ATTR);
                }
                if (intent.hasExtra(PushConstants.EXTRA_CLOUD_ATTR)) {
                    loginInfo.cloudExtra = intent.getStringExtra(PushConstants.EXTRA_CLOUD_ATTR);
                }
            }
        } else if ("com.xiaomi.mipush.REGISTER_APP".equals(intent.getAction())) {
            if (PushProvision.getInstance(getApplicationContext()).checkProvisioned() && PushProvision.getInstance(getApplicationContext()).getProvisioned() == 0) {
                MyLog.w("register without being provisioned. " + intent.getStringExtra("mipush_app_package"));
                return;
            }
            payload = intent.getByteArrayExtra("mipush_payload");
            packageName = intent.getStringExtra("mipush_app_package");
            boolean isEnvChanage = intent.getBooleanExtra("mipush_env_chanage", false);
            final int envType = intent.getIntExtra("mipush_env_type", 1);
            MIPushAppInfo.getInstance(this).removeUnRegisteredPkg(packageName);
            if (!isEnvChanage || "com.xiaomi.xmsf".equals(getPackageName())) {
                registerForMiPushApp(payload, packageName);
                return;
            }
            executeJobNow(new Job(14) {
                public void process() {
                    MIPushAccountUtils.clearAccount(XMPushService.this);
                    PushClientsManager.getInstance().deactivateAllClientByChid("5");
                    BuildSettings.setEnvType(envType);
                    XMPushService.this.connConfig.setHost(ConnectionConfiguration.getXmppServerHost());
                    XMPushService.this.registerForMiPushApp(payload, packageName);
                }

                public String getDesc() {
                    return "clear account cache.";
                }
            });
        } else if ("com.xiaomi.mipush.SEND_MESSAGE".equals(intent.getAction()) || "com.xiaomi.mipush.UNREGISTER_APP".equals(intent.getAction())) {
            packageName = intent.getStringExtra("mipush_app_package");
            payload = intent.getByteArrayExtra("mipush_payload");
            boolean isCache = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
            if ("com.xiaomi.mipush.UNREGISTER_APP".equals(intent.getAction())) {
                MIPushAppInfo.getInstance(this).addUnRegisteredPkg(packageName);
            }
            sendMessage(packageName, payload, isCache);
        } else if (PushServiceConstants.ACTION_UNINSTALL.equals(intent.getAction())) {
            pkgName = intent.getStringExtra("uninstall_pkg_name");
            if (pkgName != null && !TextUtils.isEmpty(pkgName.trim())) {
                boolean uninstalled = false;
                try {
                    getPackageManager().getPackageInfo(pkgName, 0);
                } catch (NameNotFoundException e) {
                    uninstalled = true;
                }
                if ("com.xiaomi.channel".equals(pkgName) && !PushClientsManager.getInstance().getAllClientLoginInfoByChid("1").isEmpty() && uninstalled) {
                    closeAllChannelByChid("1", 0);
                    MyLog.w("close the miliao channel as the app is uninstalled.");
                    return;
                }
                SharedPreferences sp = getSharedPreferences("pref_registered_pkg_names", 0);
                appId = sp.getString(pkgName, null);
                if (!TextUtils.isEmpty(appId) && uninstalled) {
                    Editor editor = sp.edit();
                    editor.remove(pkgName);
                    editor.commit();
                    if (MIPushNotificationHelper.hasLocalNotifyType(this, pkgName)) {
                        MIPushNotificationHelper.clearLocalNotifyType(this, pkgName);
                    }
                    MIPushNotificationHelper.clearNotification(this, pkgName);
                    if (isConnected() && appId != null) {
                        try {
                            MIPushHelper.sendPacket(this, MIPushHelper.contructAppAbsentMessage(pkgName, appId));
                            MyLog.w("uninstall " + pkgName + " msg sent");
                        } catch (Exception e2) {
                            MyLog.e("Fail to send Message: " + e2.getMessage());
                            disconnect(10, e2);
                        }
                    }
                }
            }
        } else if ("com.xiaomi.mipush.CLEAR_NOTIFICATION".equals(intent.getAction())) {
            pkg = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
            int notifyId = intent.getIntExtra(PushConstants.EXTRA_NOTIFY_ID, -2);
            if (!TextUtils.isEmpty(pkg)) {
                if (notifyId >= -1) {
                    MIPushNotificationHelper.clearNotification(this, pkg, notifyId);
                    return;
                }
                MIPushNotificationHelper.clearNotification(this, pkg, intent.getStringExtra(PushConstants.EXTRA_NOTIFY_TITLE), intent.getStringExtra(PushConstants.EXTRA_NOTIFY_DESCRIPTION));
            }
        } else if ("com.xiaomi.mipush.SET_NOTIFICATION_TYPE".equals(intent.getAction())) {
            pkg = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
            String sig = intent.getStringExtra(PushConstants.EXTRA_SIG);
            int notifyType = 0;
            boolean clearType = false;
            String calSig;
            if (intent.hasExtra(PushConstants.EXTRA_NOTIFY_TYPE)) {
                notifyType = intent.getIntExtra(PushConstants.EXTRA_NOTIFY_TYPE, 0);
                calSig = MD5.MD5_16(pkg + notifyType);
            } else {
                calSig = MD5.MD5_16(pkg);
                clearType = true;
            }
            if (TextUtils.isEmpty(pkg) || !TextUtils.equals(sig, calSig)) {
                MyLog.e("invalid notification for " + pkg);
            } else if (clearType) {
                MIPushNotificationHelper.clearLocalNotifyType(this, pkg);
            } else {
                MIPushNotificationHelper.setLocalNotifyType(this, pkg, notifyType);
            }
        } else if ("com.xiaomi.mipush.DISABLE_PUSH".equals(intent.getAction())) {
            packageName = intent.getStringExtra("mipush_app_package");
            if (!TextUtils.isEmpty(packageName)) {
                MIPushAppInfo.getInstance(this).addDisablePushPkg(packageName);
            }
            if (!"com.xiaomi.xmsf".equals(getPackageName())) {
                if (this.mConnectionChangeReceiver != null) {
                    unregisterReceiver(this.mConnectionChangeReceiver);
                    this.mConnectionChangeReceiver = null;
                }
                this.mJobController.removeAllJobs();
                executeJob(new Job(2) {
                    public void process() {
                        if (XMPushService.this.mCurrentConnection != null) {
                            XMPushService.this.mCurrentConnection.disconnect();
                            XMPushService.this.mCurrentConnection = null;
                        }
                    }

                    public String getDesc() {
                        return "disconnect for disable push";
                    }
                });
                PushClientsManager.getInstance().removeAllClientChangeListeners();
                PushClientsManager.getInstance().resetAllClients(this, 0);
                PushClientsManager.getInstance().removeActiveClients();
                ServiceConfig.getInstance().clear();
                Alarm.stop();
            }
        } else if ("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE".equals(intent.getAction()) || "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction())) {
            packageName = intent.getStringExtra("mipush_app_package");
            payload = intent.getByteArrayExtra("mipush_payload");
            appId = intent.getStringExtra("mipush_app_id");
            String appToken = intent.getStringExtra("mipush_app_token");
            if ("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                MIPushAppInfo.getInstance(this).addDisablePushPkgCache(packageName);
            }
            if ("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                MIPushAppInfo.getInstance(this).removeDisablePushPkg(packageName);
                MIPushAppInfo.getInstance(this).removeDisablePushPkgCache(packageName);
            }
            if (payload == null) {
                MIPushClientManager.notifyError(this, packageName, payload, 70000003, "null payload");
                return;
            }
            MIPushClientManager.addPendingMessages(packageName, payload);
            executeJob(new MIPushAppRegisterJob(this, packageName, appId, appToken, payload));
            if ("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction()) && this.mConnectionChangeReceiver == null) {
                this.mConnectionChangeReceiver = new ConnectionChangeReceiver();
                IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
                registerReceiver(this.mConnectionChangeReceiver, intentFilter);
            }
        } else if ("com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
            packageName = intent.getStringExtra("mipush_app_package");
            payload = intent.getByteArrayExtra("mipush_payload");
            ClientUploadDataItem item = new ClientUploadDataItem();
            try {
                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(item, payload);
                TinyDataManager.getInstance(this).upload(item, packageName);
            } catch (Throwable e3) {
                MyLog.e(e3);
            }
        } else if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction())) {
            MyLog.w("Service called on timer");
            Alarm.registerPing(false);
            if (shouldCheckAlive()) {
                checkAlive(false);
            }
        } else if ("com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
            MyLog.w("Service called on check alive.");
            if (shouldCheckAlive()) {
                checkAlive(false);
            }
        } else if ("com.xiaomi.mipush.thirdparty".equals(intent.getAction())) {
            MyLog.w("on thirdpart push :" + intent.getStringExtra("com.xiaomi.mipush.thirdparty_DESC"));
            Alarm.changePolicy(this, intent.getIntExtra("com.xiaomi.mipush.thirdparty_LEVEL", 0));
        } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            networkChanged();
        } else if ("action_cr_config".equals(intent.getAction())) {
            boolean eventSwitch = intent.getBooleanExtra("action_cr_event_switch", false);
            long eventFrequency = intent.getLongExtra("action_cr_event_frequency", 86400);
            boolean perfSwitch = intent.getBooleanExtra("action_cr_perf_switch", false);
            long perfFrequency = intent.getLongExtra("action_cr_perf_frequency", 86400);
            boolean eventEncrypted = intent.getBooleanExtra("action_cr_event_en", true);
            long fileLength = intent.getLongExtra("action_cr_max_file_size", 1048576);
            Config config = Config.getBuilder().setEventUploadSwitchOpen(eventSwitch).setEventUploadFrequency(eventFrequency).setPerfUploadSwitchOpen(perfSwitch).setPerfUploadFrequency(perfFrequency).setAESKey(ClientReportUtil.getEventKeyWithDefault(getApplicationContext())).setEventEncrypted(eventEncrypted).setMaxFileLength(fileLength).build(getApplicationContext());
            if (!"com.xiaomi.xmsf".equals(getPackageName()) && eventFrequency > 0 && perfFrequency > 0 && fileLength > 0) {
                PushClientReportHelper.initEventPerfLogic(getApplicationContext(), config);
            }
        } else if ("action_help_ping".equals(intent.getAction())) {
            boolean pingSwitch = intent.getBooleanExtra("extra_help_ping_switch", false);
            int frequency = intent.getIntExtra("extra_help_ping_frequency", 0);
            if (frequency >= 0 && frequency < 30) {
                MyLog.v("aw_ping: frquency need > 30s.");
                frequency = 30;
            }
            if (frequency < 0) {
                pingSwitch = false;
            }
            MyLog.w("aw_ping: receive a aw_ping message. switch: " + pingSwitch + " frequency: " + frequency);
            if (pingSwitch && frequency > 0 && !"com.xiaomi.xmsf".equals(getPackageName())) {
                doAWPingCMD(intent, frequency);
            }
        } else if ("action_aw_app_logic".equals(intent.getAction())) {
            doAWLogic(intent);
        }
    }

    private void doAWLogic(Intent intent) {
        try {
            AwakeManager.getInstance(getApplicationContext()).setSendDataIml(new PushLayerProcessIml());
            String packageName = intent.getStringExtra("mipush_app_package");
            byte[] bytes = intent.getByteArrayExtra("mipush_payload");
            if (bytes != null) {
                XmPushActionNotification notification = new XmPushActionNotification();
                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(notification, bytes);
                String appId = notification.getAppId();
                Map<String, String> extras = notification.getExtra();
                if (extras != null) {
                    String awkInfo = (String) extras.get("extra_help_aw_info");
                    String cmd = (String) extras.get("extra_aw_app_online_cmd");
                    if (!TextUtils.isEmpty(cmd)) {
                        int cmdId;
                        try {
                            cmdId = Integer.parseInt(cmd);
                        } catch (NumberFormatException e) {
                            cmdId = 0;
                        }
                        if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(appId) && !TextUtils.isEmpty(awkInfo)) {
                            AwakeManager.getInstance(getApplicationContext()).wakeup(this, awkInfo, cmdId, packageName, appId);
                        }
                    }
                }
            }
        } catch (TException e2) {
            MyLog.e("aw_logic: translate fail. " + e2.getMessage());
        }
    }

    private void doAWPingCMD(Intent intent, int frequency) {
        byte[] payload = intent.getByteArrayExtra("mipush_payload");
        boolean isCache = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        XmPushActionNotification xmPushActionNotification = new XmPushActionNotification();
        try {
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(xmPushActionNotification, payload);
            ScheduledJobManager.getInstance(getApplicationContext()).addRepeatJob(new AwakeAppPingJob(xmPushActionNotification, new WeakReference(this), isCache), frequency);
        } catch (TException e) {
            MyLog.e("aw_ping : send help app ping  error");
        }
    }

    void sendMessage(final String packageName, final byte[] payload, boolean isCache) {
        Collection<ClientLoginInfo> loginInfos = PushClientsManager.getInstance().getAllClientLoginInfoByChid("5");
        if (loginInfos.isEmpty()) {
            if (isCache) {
                MIPushClientManager.addPendingMessages(packageName, payload);
            }
        } else if (((ClientLoginInfo) loginInfos.iterator().next()).status == ClientStatus.binded) {
            executeJob(new Job(4) {
                public void process() {
                    try {
                        MIPushHelper.sendPacket(XMPushService.this, packageName, payload);
                    } catch (Throwable e) {
                        MyLog.e(e);
                        XMPushService.this.disconnect(10, e);
                    }
                }

                public String getDesc() {
                    return "send mi push message";
                }
            });
        } else if (isCache) {
            MIPushClientManager.addPendingMessages(packageName, payload);
        }
    }

    public void registerForMiPushApp(byte[] payload, String packageName) {
        if (payload == null) {
            MIPushClientManager.notifyError(this, packageName, payload, 70000003, "null payload");
            MyLog.w("register request without payload");
            return;
        }
        XmPushActionContainer container = new XmPushActionContainer();
        try {
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(container, payload);
            if (container.action == ActionType.Registration) {
                XmPushActionRegistration registerPacket = new XmPushActionRegistration();
                try {
                    XmPushThriftSerializeUtils.convertByteArrayToThriftObject(registerPacket, container.getPushAction());
                    MIPushClientManager.registerApp(container.getPackageName(), payload);
                    executeJob(new MIPushAppRegisterJob(this, container.getPackageName(), registerPacket.getAppId(), registerPacket.getToken(), payload));
                    return;
                } catch (Throwable e) {
                    MyLog.e(e);
                    MIPushClientManager.notifyError(this, packageName, payload, 70000003, " data action error.");
                    return;
                }
            }
            MIPushClientManager.notifyError(this, packageName, payload, 70000003, " registration action required.");
            MyLog.w("register request with invalid payload");
        } catch (Throwable e2) {
            MyLog.e(e2);
            MIPushClientManager.notifyError(this, packageName, payload, 70000003, " data container error.");
        }
    }

    private Packet preparePacket(Packet packet, String sourcePackage, String session) {
        PushClientsManager pcm = PushClientsManager.getInstance();
        List<String> ids = pcm.queryChannelIdByPackage(sourcePackage);
        if (ids.isEmpty()) {
            MyLog.w("open channel should be called first before sending a packet, pkg=" + sourcePackage);
        } else {
            packet.setPackageName(sourcePackage);
            String chid = packet.getChannelId();
            if (TextUtils.isEmpty(chid)) {
                chid = (String) ids.get(0);
                packet.setChannelId(chid);
            }
            ClientLoginInfo loginInfo = pcm.getClientLoginInfoByChidAndUserId(chid, packet.getFrom());
            if (!isConnected()) {
                MyLog.w("drop a packet as the channel is not connected, chid=" + chid);
            } else if (loginInfo == null || loginInfo.status != ClientStatus.binded) {
                MyLog.w("drop a packet as the channel is not opened, chid=" + chid);
            } else if (TextUtils.equals(session, loginInfo.session)) {
                return packet;
            } else {
                MyLog.w("invalid session. " + session);
            }
        }
        return null;
    }

    private boolean shouldRebind(String chid, Intent intent) {
        ClientLoginInfo cLoginInfo = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, intent.getStringExtra(PushConstants.EXTRA_USER_ID));
        boolean needRebind = false;
        if (cLoginInfo == null || chid == null) {
            return false;
        }
        String session = intent.getStringExtra(PushConstants.EXTRA_SESSION);
        String security = intent.getStringExtra(PushConstants.EXTRA_SECURITY);
        if (!(TextUtils.isEmpty(cLoginInfo.session) || TextUtils.equals(session, cLoginInfo.session))) {
            needRebind = true;
            MyLog.w("session changed. old session=" + cLoginInfo.session + ", new session=" + session + " chid = " + chid);
        }
        if (security.equals(cLoginInfo.security)) {
            return needRebind;
        }
        MyLog.w("security changed. chid = " + chid + " sechash = " + MD5.MD5_32(security));
        return true;
    }

    private ClientLoginInfo updatePushClient(String chid, Intent intent) {
        ClientLoginInfo cLoginInfo = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, intent.getStringExtra(PushConstants.EXTRA_USER_ID));
        if (cLoginInfo == null) {
            cLoginInfo = new ClientLoginInfo(this);
        }
        cLoginInfo.chid = intent.getStringExtra(PushConstants.EXTRA_CHANNEL_ID);
        cLoginInfo.userId = intent.getStringExtra(PushConstants.EXTRA_USER_ID);
        cLoginInfo.token = intent.getStringExtra(PushConstants.EXTRA_TOKEN);
        cLoginInfo.pkgName = intent.getStringExtra(PushConstants.EXTRA_PACKAGE_NAME);
        cLoginInfo.clientExtra = intent.getStringExtra(PushConstants.EXTRA_CLIENT_ATTR);
        cLoginInfo.cloudExtra = intent.getStringExtra(PushConstants.EXTRA_CLOUD_ATTR);
        cLoginInfo.kick = intent.getBooleanExtra(PushConstants.EXTRA_KICK, false);
        cLoginInfo.security = intent.getStringExtra(PushConstants.EXTRA_SECURITY);
        cLoginInfo.session = intent.getStringExtra(PushConstants.EXTRA_SESSION);
        cLoginInfo.authMethod = intent.getStringExtra(PushConstants.EXTRA_AUTH_METHOD);
        cLoginInfo.mClientEventDispatcher = this.mClientEventDispatcher;
        cLoginInfo.watch((Messenger) intent.getParcelableExtra(PushConstants.EXTRA_MESSENGER));
        cLoginInfo.context = getApplicationContext();
        PushClientsManager.getInstance().addActiveClient(cLoginInfo);
        return cLoginInfo;
    }

    public void closeChannel(String chid, String userId, int notifyType, String reasonMsg, String kickType) {
        ClientLoginInfo loginInfo = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, userId);
        if (loginInfo != null) {
            executeJob(new UnbindJob(loginInfo, notifyType, kickType, reasonMsg));
        }
        PushClientsManager.getInstance().deactivateClient(chid, userId);
    }

    private void closeAllChannelByChid(String chid, int notifyType) {
        Collection<ClientLoginInfo> loginInfos = PushClientsManager.getInstance().getAllClientLoginInfoByChid(chid);
        if (loginInfos != null) {
            for (ClientLoginInfo loginInfo : loginInfos) {
                if (loginInfo != null) {
                    executeJob(new UnbindJob(loginInfo, notifyType, null, null));
                }
            }
        }
        PushClientsManager.getInstance().deactivateAllClientByChid(chid);
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        onStart(intent, startId);
        return START_STICKY;
    }

    public IBinder onBind(Intent arg0) {
        return this.messenger.getBinder();
    }

    private void executeJobNow(Job job) {
        this.mJobController.executeJobNow(job);
    }

    public void executeJob(Job job) {
        executeJobDelayed(job, 0);
    }

    public void executeJobDelayed(Job job, long delay) {
        try {
            this.mJobController.executeJobDelayed(job, delay);
        } catch (IllegalStateException e) {
        }
    }

    public void onDestroy() {
        if (this.mConnectionChangeReceiver != null) {
            unregisterReceiver(this.mConnectionChangeReceiver);
        }
        if ("com.xiaomi.xmsf".equals(getPackageName()) && this.mExtremePowerModeObserver != null) {
            try {
                getContentResolver().unregisterContentObserver(this.mExtremePowerModeObserver);
            } catch (Throwable e) {
                MyLog.w("unregister observer err:" + e.getMessage());
            }
        }
        this.mJobController.removeAllJobs();
        executeJob(new Job(2) {
            public void process() {
                if (XMPushService.this.mCurrentConnection != null) {
                    XMPushService.this.mCurrentConnection.disconnect(15, null);
                    XMPushService.this.mCurrentConnection = null;
                }
            }

            public String getDesc() {
                return "disconnect for service destroy.";
            }
        });
        executeJob(new KillJob());
        PushClientsManager.getInstance().removeAllClientChangeListeners();
        PushClientsManager.getInstance().resetAllClients(this, 15);
        PushClientsManager.getInstance().removeActiveClients();
        this.mSlimConnection.removeConnectionListener(this);
        ServiceConfig.getInstance().clear();
        Alarm.stop();
        clearPingCallbacks();
        super.onDestroy();
        MyLog.w("Service destroyed");
    }

    public void sendPacket(Blob blob) throws XMPPException {
        if (this.mCurrentConnection != null) {
            this.mCurrentConnection.send(blob);
            return;
        }
        throw new XMPPException("try send msg while connection is null.");
    }

    public void batchSendPacket(Blob[] blobs) throws XMPPException {
        if (this.mCurrentConnection != null) {
            this.mCurrentConnection.batchSend(blobs);
            return;
        }
        throw new XMPPException("try send msg while connection is null.");
    }

    public void scheduleConnect(boolean rightNow) {
        this.mReconnManager.tryReconnect(rightNow);
    }

    public void scheduleRebindChannel(ClientLoginInfo info) {
        if (info != null) {
            long interval = info.getNextRetryInterval();
            MyLog.w("schedule rebind job in " + (interval / 1000));
            executeJobDelayed(new BindJob(info), interval);
        }
    }

    public void disconnect(int reason, Exception e) {
        MyLog.w("disconnect " + hashCode() + ", " + (this.mCurrentConnection == null ? null : Integer.valueOf(this.mCurrentConnection.hashCode())));
        if (this.mCurrentConnection != null) {
            this.mCurrentConnection.disconnect(reason, e);
            this.mCurrentConnection = null;
        }
        removeJobs(7);
        removeJobs(4);
        PushClientsManager.getInstance().resetAllClients(this, reason);
    }

    private boolean isExtremePowerSaveMode() {
        if (!"com.xiaomi.xmsf".equals(getPackageName())) {
            return false;
        }
        if (Secure.getInt(getContentResolver(), "EXTREME_POWER_MODE_ENABLE", 0) == 1) {
            return true;
        }
        return false;
    }

    public boolean shouldReconnect() {
        return Network.hasNetwork(this) && PushClientsManager.getInstance().getActiveClientCount() > 0 && !isPushDisabled() && isPushEnabled() && !isExtremePowerSaveMode();
    }

    private boolean isPushEnabled() {
        return "com.xiaomi.xmsf".equals(getPackageName()) || !MIPushAppInfo.getInstance(this).isPushDisabled(getPackageName());
    }

    public boolean isPushDisabled() {
        try {
            Class cc = Class.forName("miui.os.Build");
            Field cmccField = cc.getField("IS_CM_CUSTOMIZATION_TEST");
            Field cuccField = cc.getField("IS_CU_CUSTOMIZATION_TEST");
            Field ctccFiled = cc.getField("IS_CT_CUSTOMIZATION_TEST");
            if (cmccField.getBoolean(null) || cuccField.getBoolean(null) || ctccFiled.getBoolean(null)) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    private void updateAlarmTimer() {
        if (!shouldReconnect()) {
            Alarm.stop();
        } else if (!Alarm.isAlive()) {
            Alarm.registerPing(true);
        }
    }

    private void connect() {
        if (this.mCurrentConnection != null && this.mCurrentConnection.isConnecting()) {
            MyLog.e("try to connect while connecting.");
        } else if (this.mCurrentConnection == null || !this.mCurrentConnection.isConnected()) {
            this.connConfig.setConnectionPoint(Network.getActiveConnPoint(this));
            connectBySlim();
            if (this.mCurrentConnection == null) {
                PushClientsManager.getInstance().notifyConnectionFailed(this);
                broadcastNetworkAvailable(false);
            }
        } else {
            MyLog.e("try to connect while is connected.");
        }
    }

    private void broadcastNetworkAvailable(boolean available) {
        try {
            if (!SystemUtils.isBootCompleted()) {
                return;
            }
            if (available) {
                sendBroadcast(new Intent("miui.intent.action.NETWORK_CONNECTED"));
            } else {
                sendBroadcast(new Intent("miui.intent.action.NETWORK_BLOCKED"));
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    private void connectBySlim() {
        try {
            this.mSlimConnection.addPacketListener(this.mPacketListener, new PacketFilter() {
                public boolean accept(Packet packet) {
                    return true;
                }
            });
            this.mSlimConnection.connect();
            this.mCurrentConnection = this.mSlimConnection;
        } catch (XMPPException e) {
            MyLog.e("fail to create Slim connection", e);
            this.mSlimConnection.disconnect(3, e);
        }
    }

    public ClientEventDispatcher createClientEventDispatcher() {
        return new ClientEventDispatcher();
    }

    public ClientEventDispatcher getClientEventDispatcher() {
        return this.mClientEventDispatcher;
    }

    public boolean isConnected() {
        return this.mCurrentConnection != null && this.mCurrentConnection.isConnected();
    }

    public boolean isConnecting() {
        return this.mCurrentConnection != null && this.mCurrentConnection.isConnecting();
    }

    public Connection getCurrentConnection() {
        return this.mCurrentConnection;
    }

    public void removeJobs(int jobType) {
        this.mJobController.removeJobs(jobType);
    }

    public boolean hasJob(int jobType) {
        return this.mJobController.hasJob(jobType);
    }

    public void removeJobs(Job job) {
        this.mJobController.removeJobs(job.type, job);
    }

    public void connectionStarted(Connection conn) {
        MyLog.v("begin to connect...");
        StatsHandler.getContext().connectionStarted(conn);
    }

    public void connectionClosed(Connection conn, int reason, Exception e) {
        StatsHandler.getContext().connectionClosed(conn, reason, e);
        scheduleConnect(false);
    }

    public void reconnectionSuccessful(Connection conn) {
        StatsHandler.getContext().reconnectionSuccessful(conn);
        broadcastNetworkAvailable(true);
        this.mReconnManager.onConnectSucceeded();
        Iterator it = PushClientsManager.getInstance().getAllClients().iterator();
        while (it.hasNext()) {
            executeJob(new BindJob((ClientLoginInfo) it.next()));
        }
    }

    public void reconnectionFailed(Connection conn, Exception e) {
        StatsHandler.getContext().reconnectionFailed(conn, e);
        broadcastNetworkAvailable(false);
        scheduleConnect(false);
    }

    private boolean canOpenForegroundService() {
        if (TextUtils.equals(getPackageName(), "com.xiaomi.xmsf")) {
            return false;
        }
        return OnlineConfig.getInstance(this).getBooleanValue(ConfigKey.ForegroundServiceSwitch.getValue(), false);
    }

    private void enableForegroundService() {
        if (VERSION.SDK_INT < 18) {
            startForeground(PID, new Notification());
        } else {
            bindService(new Intent(this, this.mJobClazz), new ServiceConnection() {
                public void onServiceConnected(ComponentName name, IBinder service) {
                    MyLog.i("onServiceConnected " + service);
                    Service innerService = XMJobService.getRunningService();
                    if (innerService != null) {
                        XMPushService.this.startForeground(XMPushService.PID, XMPushService.getPushServiceNotification(XMPushService.this));
                        innerService.startForeground(XMPushService.PID, XMPushService.getPushServiceNotification(XMPushService.this));
                        innerService.stopForeground(true);
                        XMPushService.this.unbindService(this);
                        return;
                    }
                    MyLog.w("XMService connected but innerService is null " + service);
                }

                public void onServiceDisconnected(ComponentName name) {
                }
            }, 1);
        }
    }

    @TargetApi(11)
    public static Notification getPushServiceNotification(Context context) {
        Intent intent = new Intent(context, XMPushService.class);
        if (VERSION.SDK_INT >= 11) {
            Builder builder = new Builder(context);
            builder.setSmallIcon(context.getApplicationInfo().icon);
            builder.setContentTitle("Push Service");
            builder.setContentText("Push Service");
            builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 0));
            return builder.getNotification();
        }
        Notification notification = new Notification();
        PendingIntent pendingIntent = PendingIntent.getService(context, 0, intent, 0);
        try {
            notification.getClass().getMethod("setLatestEventInfo", new Class[]{Context.class, CharSequence.class, CharSequence.class, PendingIntent.class}).invoke(notification, new Object[]{context, "Push Service", "Push Service", pendingIntent});
            return notification;
        } catch (Throwable e) {
            MyLog.e(e);
            return notification;
        }
    }

    void onPong() {
        Iterator it = new ArrayList(this.pingCallBacks).iterator();
        while (it.hasNext()) {
            ((PingCallBack) it.next()).pingFollowUpAction();
        }
    }

    public void addPingCallBack(PingCallBack pingCallBack) {
        synchronized (this.pingCallBacks) {
            this.pingCallBacks.add(pingCallBack);
        }
    }

    private void clearPingCallbacks() {
        synchronized (this.pingCallBacks) {
            this.pingCallBacks.clear();
        }
    }
}
