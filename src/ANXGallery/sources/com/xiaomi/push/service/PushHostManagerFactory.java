package com.xiaomi.push.service;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import com.miui.internal.vip.VipConstants;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.network.Fallback;
import com.xiaomi.network.HostFilter;
import com.xiaomi.network.HostManager;
import com.xiaomi.network.HostManager.HostManagerFactory;
import com.xiaomi.network.HostManager.HttpGet;
import com.xiaomi.push.protobuf.ChannelConfig.PushServiceConfig;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.push.service.ServiceConfig.Listener;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.util.StringUtils;
import com.xiaomi.stats.StatsHandler;
import com.xiaomi.stats.StatsHelper;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import miui.content.ExtraIntent;

public class PushHostManagerFactory extends Listener implements HostManagerFactory {
    private long lastFetchTime;
    private XMPushService pushService;

    static class GslbHttpGet implements HttpGet {
        GslbHttpGet() {
        }

        public String doGet(String url) throws IOException {
            Builder uri = Uri.parse(url).buildUpon();
            uri.appendQueryParameter("sdkver", String.valueOf(38));
            uri.appendQueryParameter("osver", String.valueOf(VERSION.SDK_INT));
            uri.appendQueryParameter("os", StringUtils.escapeForXML(Build.MODEL + ":" + VERSION.INCREMENTAL));
            uri.appendQueryParameter("mi", String.valueOf(SystemUtils.getMIUIType()));
            String newUrl = uri.toString();
            MyLog.v("fetch bucket from : " + newUrl);
            URL host = new URL(newUrl);
            int port = host.getPort() == -1 ? 80 : host.getPort();
            try {
                long now = System.currentTimeMillis();
                String ret = Network.downloadXml(SystemUtils.getContext(), host);
                StatsHelper.statsGslb(host.getHost() + ":" + port, (int) (System.currentTimeMillis() - now), null);
                return ret;
            } catch (IOException e) {
                StatsHelper.statsGslb(host.getHost() + ":" + port, -1, e);
                throw e;
            }
        }
    }

    static class PushHostManager extends HostManager {
        protected PushHostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String userId) {
            super(context, hostFilter, httpGet, userId);
        }

        protected String getRemoteFallbackJSON(ArrayList<String> hosts, String networkType, String userId, boolean fetchReserved) throws IOException {
            try {
                if (StatsHandler.getInstance().isAllowStats()) {
                    userId = ServiceConfig.getDeviceUUID();
                }
                return super.getRemoteFallbackJSON(hosts, networkType, userId, fetchReserved);
            } catch (IOException e) {
                int causedByNetwork;
                if (Network.hasNetwork(sAppContext)) {
                    causedByNetwork = 1;
                } else {
                    causedByNetwork = 0;
                }
                StatsHelper.stats(0, ChannelStatsType.GSLB_ERR.getValue(), 1, null, causedByNetwork);
                throw e;
            }
        }
    }

    public static void init(XMPushService pushService) {
        PushHostManagerFactory factory = new PushHostManagerFactory(pushService);
        ServiceConfig.getInstance().addListener(factory);
        synchronized (HostManager.class) {
            HostManager.setHostManagerFactory(factory);
            HostManager.init(pushService, null, new GslbHttpGet(), "0", ExtraIntent.EXTRA_FIND_DEVICE_V2_COMMAND_TYPE_PUSH, "2.2");
        }
    }

    PushHostManagerFactory(XMPushService pushService) {
        this.pushService = pushService;
    }

    public void onConfigMsgReceive(PushServiceConfigMsg config) {
        if (config.hasFetchBucket() && config.getFetchBucket() && System.currentTimeMillis() - this.lastFetchTime > VipConstants.HOUR) {
            MyLog.w("fetch bucket :" + config.getFetchBucket());
            this.lastFetchTime = System.currentTimeMillis();
            HostManager hostManager = HostManager.getInstance();
            hostManager.clear();
            hostManager.refreshFallbacks();
            Connection con = this.pushService.getCurrentConnection();
            if (con != null) {
                Fallback fallback = hostManager.getFallbacksByHost(con.getConfiguration().getHost());
                if (fallback != null) {
                    ArrayList<String> hosts = fallback.getHosts();
                    boolean changed = true;
                    Iterator it = hosts.iterator();
                    while (it.hasNext()) {
                        if (((String) it.next()).equals(con.getHost())) {
                            changed = false;
                            break;
                        }
                    }
                    if (changed && !hosts.isEmpty()) {
                        MyLog.w("bucket changed, force reconnect");
                        this.pushService.disconnect(0, null);
                        this.pushService.scheduleConnect(false);
                    }
                }
            }
        }
    }

    public void onConfigChange(PushServiceConfig config) {
    }

    public HostManager createHostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String userId) {
        return new PushHostManager(context, hostFilter, httpGet, userId);
    }
}
