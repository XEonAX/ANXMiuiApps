package com.xiaomi.push.service;

import android.content.Context;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMPushService.Job;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class PushClientsManager {
    private static PushClientsManager sInstance;
    private List<ClientChangeListener> clientChangeListeners = new ArrayList();
    private ConcurrentHashMap<String, HashMap<String, ClientLoginInfo>> mActiveClients = new ConcurrentHashMap();

    public interface ClientChangeListener {
        void onChange();
    }

    public static class ClientLoginInfo {
        public String authMethod;
        public String chid;
        public String clientExtra;
        public String cloudExtra;
        public Context context;
        private int currentRetrys = 0;
        private boolean hasPeerSupport = false;
        public boolean kick;
        public ClientEventDispatcher mClientEventDispatcher;
        private XMPushService mPushService;
        ClientStatus notifiedStatus = null;
        final NotifyClientJob notifyClientJob = new NotifyClientJob();
        Messenger peer;
        DeathRecipient peerWatcher = null;
        public String pkgName;
        public String security;
        public String session;
        ClientStatus status = ClientStatus.unbind;
        private List<ClientStatusListener> statusChangeListeners = new ArrayList();
        private BindTimeoutJob timeOutJob = new BindTimeoutJob(this);
        public String token;
        public String userId;

        public interface ClientStatusListener {
            void onChange(ClientStatus clientStatus, ClientStatus clientStatus2, int i);
        }

        class NotifyClientJob extends Job {
            String errorType;
            int notifyType;
            int reason;
            String reasonMessage;

            public NotifyClientJob() {
                super(0);
            }

            public void process() {
                if (ClientLoginInfo.this.shouldNotifyClient(this.notifyType, this.reason, this.errorType)) {
                    ClientLoginInfo.this.notifyClientStatus(this.notifyType, this.reason, this.reasonMessage, this.errorType);
                } else {
                    MyLog.i(" ignore notify client :" + ClientLoginInfo.this.chid);
                }
            }

            public String getDesc() {
                return "notify job";
            }

            public Job build(int notifyType, int reason, String reasonMessage, String errorType) {
                this.notifyType = notifyType;
                this.reason = reason;
                this.errorType = errorType;
                this.reasonMessage = reasonMessage;
                return this;
            }
        }

        class PeerWatcher implements DeathRecipient {
            final ClientLoginInfo info;
            final Messenger peer;

            PeerWatcher(ClientLoginInfo info, Messenger peer) {
                this.info = info;
                this.peer = peer;
            }

            public void binderDied() {
                MyLog.i("peer died, chid = " + this.info.chid);
                ClientLoginInfo.this.mPushService.executeJobDelayed(new Job(0) {
                    public void process() {
                        if (PeerWatcher.this.peer == PeerWatcher.this.info.peer) {
                            MyLog.i("clean peer, chid = " + PeerWatcher.this.info.chid);
                            PeerWatcher.this.info.peer = null;
                        }
                    }

                    public String getDesc() {
                        return "clear peer job";
                    }
                }, 0);
                if ("9".equals(this.info.chid) && "com.xiaomi.xmsf".equals(ClientLoginInfo.this.mPushService.getPackageName())) {
                    ClientLoginInfo.this.mPushService.executeJobDelayed(new Job(0) {
                        public void process() {
                            if (PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(PeerWatcher.this.info.chid, PeerWatcher.this.info.userId).peer == null) {
                                ClientLoginInfo.this.mPushService.closeChannel(PeerWatcher.this.info.chid, PeerWatcher.this.info.userId, 2, null, null);
                            }
                        }

                        public String getDesc() {
                            return "check peer job";
                        }
                    }, 60000);
                }
            }
        }

        public ClientLoginInfo(XMPushService pushService) {
            this.mPushService = pushService;
            addClientStatusListener(new ClientStatusListener() {
                public void onChange(ClientStatus oldStatus, ClientStatus newStatus, int reason) {
                    if (newStatus == ClientStatus.binding) {
                        ClientLoginInfo.this.mPushService.executeJobDelayed(ClientLoginInfo.this.timeOutJob, 60000);
                    } else {
                        ClientLoginInfo.this.mPushService.removeJobs(ClientLoginInfo.this.timeOutJob);
                    }
                }
            });
        }

        void unwatch() {
            try {
                Messenger client = this.peer;
                if (!(client == null || this.peerWatcher == null)) {
                    client.getBinder().unlinkToDeath(this.peerWatcher, 0);
                }
            } catch (Exception e) {
            }
            this.notifiedStatus = null;
        }

        void watch(Messenger peer) {
            unwatch();
            if (peer != null) {
                try {
                    this.peer = peer;
                    this.hasPeerSupport = true;
                    this.peerWatcher = new PeerWatcher(this, peer);
                    peer.getBinder().linkToDeath(this.peerWatcher, 0);
                    return;
                } catch (Exception e) {
                    MyLog.i("peer linkToDeath err: " + e.getMessage());
                    this.peer = null;
                    this.hasPeerSupport = false;
                    return;
                }
            }
            MyLog.i("peer linked with old sdk chid = " + this.chid);
        }

        public void setStatus(ClientStatus status, int notifyType, int reason, String reasonMessage, String errorType) {
            synchronized (this.statusChangeListeners) {
                for (ClientStatusListener listener : this.statusChangeListeners) {
                    listener.onChange(this.status, status, reason);
                }
            }
            if (this.status != status) {
                MyLog.w(String.format("update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s", new Object[]{this.status, status, getDesc(notifyType), PushConstants.getErrorDesc(reason), reasonMessage, errorType, this.chid}));
                this.status = status;
            }
            if (this.mClientEventDispatcher == null) {
                MyLog.e("status changed while the client dispatcher is missing");
            } else if (status != ClientStatus.binding) {
                int NOTIFY_TIME_OUT = 10100;
                if (this.notifiedStatus == null || !this.hasPeerSupport) {
                    NOTIFY_TIME_OUT = 0;
                } else if (this.peer != null && this.hasPeerSupport) {
                    NOTIFY_TIME_OUT = 1000;
                }
                this.mPushService.removeJobs(this.notifyClientJob);
                if (isSpeicalErr(notifyType, reason, errorType)) {
                    notifyClientStatus(notifyType, reason, reasonMessage, errorType);
                } else {
                    this.mPushService.executeJobDelayed(this.notifyClientJob.build(notifyType, reason, reasonMessage, errorType), (long) NOTIFY_TIME_OUT);
                }
            }
        }

        private void notifyClientStatus(int notifyType, int reason, String reasonMessage, String errorType) {
            boolean succeeded = true;
            this.notifiedStatus = this.status;
            if (notifyType == 2) {
                this.mClientEventDispatcher.notifyChannelClosed(this.context, this, reason);
            } else if (notifyType == 3) {
                this.mClientEventDispatcher.notifyKickedByServer(this.context, this, errorType, reasonMessage);
            } else if (notifyType == 1) {
                if (this.status != ClientStatus.binded) {
                    succeeded = false;
                }
                if (!succeeded && "wait".equals(errorType)) {
                    this.currentRetrys++;
                } else if (succeeded) {
                    this.currentRetrys = 0;
                    if (this.peer != null) {
                        try {
                            this.peer.send(Message.obtain(null, 16, this.mPushService.messenger));
                        } catch (RemoteException e) {
                        }
                    }
                }
                this.mClientEventDispatcher.notifyChannelOpenResult(this.mPushService, this, succeeded, reason, reasonMessage);
            }
        }

        private boolean shouldNotifyClient(int notifyType, int reason, String errorType) {
            if (this.notifiedStatus == null || !this.hasPeerSupport) {
                return true;
            }
            if (this.notifiedStatus == this.status) {
                MyLog.i(" status recovered, don't notify client:" + this.chid);
                return false;
            } else if (this.peer == null || !this.hasPeerSupport) {
                MyLog.i("peer died, ignore notify " + this.chid);
                return false;
            } else {
                MyLog.i("Peer alive notify status to client:" + this.chid);
                return true;
            }
        }

        private boolean isSpeicalErr(int notifyType, int reason, String errorType) {
            boolean z = true;
            switch (notifyType) {
                case 1:
                    if (this.status == ClientStatus.binded || !this.mPushService.isConnected() || reason == 21) {
                        return false;
                    }
                    if (reason == 7 && "wait".equals(errorType)) {
                        return false;
                    }
                    return true;
                case 2:
                    return this.mPushService.isConnected();
                case 3:
                    if ("wait".equals(errorType)) {
                        z = false;
                    }
                    return z;
                default:
                    return false;
            }
        }

        public String getDesc(int notifyType) {
            switch (notifyType) {
                case 1:
                    return "OPEN";
                case 2:
                    return "CLOSE";
                case 3:
                    return "KICK";
                default:
                    return "unknown";
            }
        }

        public void addClientStatusListener(ClientStatusListener statusListener) {
            synchronized (this.statusChangeListeners) {
                this.statusChangeListeners.add(statusListener);
            }
        }

        public void removeClientStatusListener(ClientStatusListener statusListener) {
            synchronized (this.statusChangeListeners) {
                this.statusChangeListeners.remove(statusListener);
            }
        }

        public long getNextRetryInterval() {
            return 1000 * (((long) ((Math.random() * 20.0d) - 10.0d)) + ((long) ((this.currentRetrys + 1) * 15)));
        }

        public static String getResource(String account) {
            String result = "";
            if (TextUtils.isEmpty(account)) {
                return result;
            }
            int index = account.lastIndexOf("/");
            if (index != -1) {
                result = account.substring(index + 1);
            }
            return result;
        }
    }

    public enum ClientStatus {
        unbind,
        binding,
        binded
    }

    public static synchronized PushClientsManager getInstance() {
        PushClientsManager pushClientsManager;
        synchronized (PushClientsManager.class) {
            if (sInstance == null) {
                sInstance = new PushClientsManager();
            }
            pushClientsManager = sInstance;
        }
        return pushClientsManager;
    }

    private PushClientsManager() {
    }

    public synchronized void addActiveClient(ClientLoginInfo info) {
        HashMap<String, ClientLoginInfo> infos = (HashMap) this.mActiveClients.get(info.chid);
        if (infos == null) {
            infos = new HashMap();
            this.mActiveClients.put(info.chid, infos);
        }
        infos.put(getSmtpLocalPart(info.userId), info);
        for (ClientChangeListener client : this.clientChangeListeners) {
            client.onChange();
        }
    }

    public synchronized void deactivateClient(String chid, String userId) {
        HashMap<String, ClientLoginInfo> infos = (HashMap) this.mActiveClients.get(chid);
        if (infos != null) {
            ClientLoginInfo info = (ClientLoginInfo) infos.get(getSmtpLocalPart(userId));
            if (info != null) {
                info.unwatch();
            }
            infos.remove(getSmtpLocalPart(userId));
            if (infos.isEmpty()) {
                this.mActiveClients.remove(chid);
            }
        }
        for (ClientChangeListener client : this.clientChangeListeners) {
            client.onChange();
        }
    }

    public synchronized void deactivateAllClientByChid(String chid) {
        HashMap<String, ClientLoginInfo> infos = (HashMap) this.mActiveClients.get(chid);
        if (infos != null) {
            for (ClientLoginInfo info : infos.values()) {
                info.unwatch();
            }
            infos.clear();
            this.mActiveClients.remove(chid);
        }
        for (ClientChangeListener client : this.clientChangeListeners) {
            client.onChange();
        }
    }

    public synchronized List<String> queryChannelIdByPackage(String pkgName) {
        List<String> result;
        result = new ArrayList();
        for (HashMap<String, ClientLoginInfo> infos : this.mActiveClients.values()) {
            for (ClientLoginInfo info : infos.values()) {
                if (pkgName.equals(info.pkgName)) {
                    result.add(info.chid);
                }
            }
        }
        return result;
    }

    public synchronized ArrayList<ClientLoginInfo> getAllClients() {
        ArrayList<ClientLoginInfo> clients;
        clients = new ArrayList();
        for (HashMap<String, ClientLoginInfo> infos : this.mActiveClients.values()) {
            clients.addAll(infos.values());
        }
        return clients;
    }

    public synchronized Collection<ClientLoginInfo> getAllClientLoginInfoByChid(String chid) {
        Collection<ClientLoginInfo> values;
        if (this.mActiveClients.containsKey(chid)) {
            values = ((HashMap) ((HashMap) this.mActiveClients.get(chid)).clone()).values();
        } else {
            values = new ArrayList();
        }
        return values;
    }

    public synchronized ClientLoginInfo getClientLoginInfoByChidAndUserId(String chid, String userId) {
        ClientLoginInfo clientLoginInfo;
        HashMap<String, ClientLoginInfo> infos = (HashMap) this.mActiveClients.get(chid);
        if (infos == null) {
            clientLoginInfo = null;
        } else {
            clientLoginInfo = (ClientLoginInfo) infos.get(getSmtpLocalPart(userId));
        }
        return clientLoginInfo;
    }

    public synchronized void resetAllClients(Context context, int reason) {
        for (HashMap<String, ClientLoginInfo> infos : this.mActiveClients.values()) {
            for (ClientLoginInfo info : infos.values()) {
                info.setStatus(ClientStatus.unbind, 2, reason, null, null);
            }
        }
    }

    public synchronized int getActiveClientCount() {
        return this.mActiveClients.size();
    }

    public synchronized void removeActiveClients() {
        Iterator it = getAllClients().iterator();
        while (it.hasNext()) {
            ((ClientLoginInfo) it.next()).unwatch();
        }
        this.mActiveClients.clear();
    }

    public synchronized void notifyConnectionFailed(Context context) {
        for (HashMap<String, ClientLoginInfo> infos : this.mActiveClients.values()) {
            for (ClientLoginInfo info : infos.values()) {
                info.setStatus(ClientStatus.unbind, 1, 3, null, null);
            }
        }
    }

    private String getSmtpLocalPart(String smtp) {
        if (TextUtils.isEmpty(smtp)) {
            return null;
        }
        int iAt = smtp.indexOf("@");
        if (iAt > 0) {
            return smtp.substring(0, iAt);
        }
        return smtp;
    }

    public synchronized void addClientChangeListener(ClientChangeListener clientChange) {
        this.clientChangeListeners.add(clientChange);
    }

    public synchronized void removeAllClientChangeListeners() {
        this.clientChangeListeners.clear();
    }
}
