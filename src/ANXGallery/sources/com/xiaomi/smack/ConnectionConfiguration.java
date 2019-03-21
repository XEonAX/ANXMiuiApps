package com.xiaomi.smack;

import com.xiaomi.channel.commonutils.misc.BuildSettings;
import com.xiaomi.channel.commonutils.misc.DebugSwitch;
import java.util.Map;

public class ConnectionConfiguration implements Cloneable {
    public static final String XMPP_SERVER_HOST_ONEBOX = DebugSwitch.sOneboxServerHost;
    public static String XMPP_SERVER_HOST_T = "wcc-ml-test10.bj";
    public static String xmppHost = null;
    private String connectionPoint;
    private boolean debuggerEnabled = Connection.DEBUG_ENABLED;
    private String host;
    private HttpRequestProxy httpProxy;
    private int port;
    private boolean reconnectionAllowed = true;
    private String serviceName;

    public static final String getXmppServerHost() {
        if (xmppHost != null) {
            return xmppHost;
        }
        if (BuildSettings.IsSandBoxBuild()) {
            return "sandbox.xmpush.xiaomi.com";
        }
        if (BuildSettings.IsOneBoxBuild()) {
            return XMPP_SERVER_HOST_ONEBOX;
        }
        return "app.chat.xiaomi.net";
    }

    public static final void setXmppServerHost(String host) {
        xmppHost = host;
    }

    public ConnectionConfiguration(Map<String, Integer> hosts, int port, String serviceName, HttpRequestProxy httpProxy) {
        init(hosts, port, serviceName, httpProxy);
    }

    private void init(Map<String, Integer> map, int port, String serviceName, HttpRequestProxy httpProxy) {
        this.port = port;
        this.serviceName = serviceName;
        this.httpProxy = httpProxy;
    }

    public void setConnectionPoint(String connPt) {
        this.connectionPoint = connPt;
    }

    public String getConnectionPoint() {
        return this.connectionPoint;
    }

    public byte[] getConnectionBlob() {
        return null;
    }

    public int getPort() {
        return this.port;
    }

    public String getHost() {
        if (this.host == null) {
            this.host = getXmppServerHost();
        }
        return this.host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public boolean isDebuggerEnabled() {
        return this.debuggerEnabled;
    }

    public void setDebuggerEnabled(boolean debuggerEnabled) {
        this.debuggerEnabled = debuggerEnabled;
    }
}
