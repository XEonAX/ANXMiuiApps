package com.xiaomi.network;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.wifi.WifiManager;
import android.os.Process;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.BasicNameValuePair;
import com.xiaomi.channel.commonutils.network.NameValuePair;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.push.service.AppRegionStorage;
import com.xiaomi.push.service.module.PushChannelRegion;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class HostManager {
    private static HostManagerFactory factory;
    protected static boolean hostLoaded = false;
    protected static Context sAppContext;
    private static String sAppName;
    private static String sAppVersion;
    private static HostManager sInstance;
    protected static Map<String, Fallback> sReservedHosts = new HashMap();
    private final long MAX_REQUEST_FAILURE_CNT;
    private String currentISP;
    private long lastRemoteRequestTimestamp;
    protected Map<String, Fallbacks> mHostsMapping;
    private long remoteRequestFailureCount;
    private HostFilter sHostFilter;
    protected HttpGet sHttpGetter;
    private String sUserId;

    public interface HostManagerFactory {
        HostManager createHostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String str);
    }

    public interface HttpGet {
        String doGet(String str) throws IOException;
    }

    public static synchronized HostManager getInstance() {
        HostManager hostManager;
        synchronized (HostManager.class) {
            if (sInstance == null) {
                throw new IllegalStateException("the host manager is not initialized yet.");
            }
            hostManager = sInstance;
        }
        return hostManager;
    }

    public static synchronized void setHostManagerFactory(HostManagerFactory factory) {
        synchronized (HostManager.class) {
            factory = factory;
            sInstance = null;
        }
    }

    public static synchronized void init(Context context, HostFilter hostFilter, HttpGet httpGet, String userId, String appName, String appVersion) {
        synchronized (HostManager.class) {
            sAppContext = context.getApplicationContext();
            if (sAppContext == null) {
                sAppContext = context;
            }
            if (sInstance == null) {
                if (factory == null) {
                    sInstance = new HostManager(context, hostFilter, httpGet, userId, appName, appVersion);
                } else {
                    sInstance = factory.createHostManager(context, hostFilter, httpGet, userId);
                }
            }
        }
    }

    protected HostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String userId) {
        this(context, hostFilter, httpGet, userId, null, null);
    }

    protected HostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String userId, String appName, String appVersion) {
        this.mHostsMapping = new HashMap();
        this.sUserId = "0";
        this.remoteRequestFailureCount = 0;
        this.MAX_REQUEST_FAILURE_CNT = 15;
        this.lastRemoteRequestTimestamp = 0;
        this.currentISP = "isp_prov_city_country_ip";
        this.sHttpGetter = httpGet;
        if (hostFilter == null) {
            this.sHostFilter = new HostFilter() {
                public boolean accept(String host) {
                    return true;
                }
            };
        } else {
            this.sHostFilter = hostFilter;
        }
        this.sUserId = userId;
        if (appName == null) {
            appName = context.getPackageName();
        }
        sAppName = appName;
        if (appVersion == null) {
            appVersion = getVersionName();
        }
        sAppVersion = appVersion;
    }

    static String getActiveNetworkLabel() {
        if (sAppContext == null) {
            return "unknown";
        }
        try {
            ConnectivityManager cm = (ConnectivityManager) sAppContext.getSystemService("connectivity");
            if (cm == null) {
                return "unknown";
            }
            NetworkInfo ni = cm.getActiveNetworkInfo();
            if (ni == null) {
                return "unknown";
            }
            if (ni.getType() != 1) {
                return ni.getTypeName() + "-" + ni.getSubtypeName();
            }
            WifiManager wifi = (WifiManager) sAppContext.getSystemService("wifi");
            if (!(wifi == null || wifi.getConnectionInfo() == null)) {
                return "WIFI-" + wifi.getConnectionInfo().getSSID();
            }
            return "unknown";
        } catch (Throwable th) {
        }
    }

    public Fallback getFallbacksByURL(String url) throws MalformedURLException {
        if (!TextUtils.isEmpty(url)) {
            return getFallbacksByHost(new URL(url).getHost(), true);
        }
        throw new IllegalArgumentException("the url is empty");
    }

    public Fallback getFallbacksByHost(String host) {
        return getFallbacksByHost(host, true);
    }

    public Fallback getFallbacksByHost(String host, boolean fetchRemoteIfNeed) {
        if (TextUtils.isEmpty(host)) {
            throw new IllegalArgumentException("the host is empty");
        } else if (!this.sHostFilter.accept(host)) {
            return null;
        } else {
            final Fallback localFB = getLocalFallback(host);
            if (localFB != null && localFB.isEffective()) {
                return localFB;
            }
            if (fetchRemoteIfNeed && Network.hasNetwork(sAppContext)) {
                Fallback remoteFallback = requestRemoteFallback(host);
                if (remoteFallback != null) {
                    return remoteFallback;
                }
            }
            return new Fallback(host) {
                Fallback local;

                public boolean isEffective() {
                    return false;
                }

                public synchronized ArrayList<String> getHosts(boolean usePort) {
                    ArrayList<String> hosts;
                    hosts = new ArrayList();
                    if (this.local != null) {
                        hosts.addAll(this.local.getHosts(true));
                    }
                    synchronized (HostManager.sReservedHosts) {
                        Fallback reserved = (Fallback) HostManager.sReservedHosts.get(this.host);
                        if (reserved != null) {
                            Iterator it = reserved.getHosts(true).iterator();
                            while (it.hasNext()) {
                                String addr = (String) it.next();
                                if (hosts.indexOf(addr) == -1) {
                                    hosts.add(addr);
                                }
                            }
                            hosts.remove(this.host);
                            hosts.add(this.host);
                        }
                    }
                    return hosts;
                }

                public synchronized void accessHost(String host, AccessHistory ah) {
                    if (this.local != null) {
                        this.local.accessHost(host, ah);
                    }
                }
            };
        }
    }

    protected Fallback getLocalFallback(String host) {
        Fallbacks fallbacks;
        synchronized (this.mHostsMapping) {
            checkHostMapping();
            fallbacks = (Fallbacks) this.mHostsMapping.get(host);
        }
        if (fallbacks != null) {
            Fallback cfb = fallbacks.getFallback();
            if (cfb != null) {
                return cfb;
            }
        }
        return null;
    }

    protected Fallback requestRemoteFallback(String host) {
        if (System.currentTimeMillis() - this.lastRemoteRequestTimestamp > (this.remoteRequestFailureCount * 60) * 1000) {
            this.lastRemoteRequestTimestamp = System.currentTimeMillis();
            ArrayList<String> hosts = new ArrayList();
            hosts.add(host);
            Fallback remoteFallback = (Fallback) requestRemoteFallbacks(hosts).get(0);
            if (remoteFallback != null) {
                this.remoteRequestFailureCount = 0;
                return remoteFallback;
            } else if (this.remoteRequestFailureCount < 15) {
                this.remoteRequestFailureCount++;
            }
        }
        return null;
    }

    private ArrayList<Fallback> requestRemoteFallbacks(ArrayList<String> hosts) {
        Fallback fb;
        int i;
        purge();
        synchronized (this.mHostsMapping) {
            checkHostMapping();
            for (String existHost : this.mHostsMapping.keySet()) {
                if (!hosts.contains(existHost)) {
                    hosts.add(existHost);
                }
            }
        }
        boolean fetchReserved = sReservedHosts.isEmpty();
        synchronized (sReservedHosts) {
            for (Object fbObj : sReservedHosts.values().toArray()) {
                fb = (Fallback) fbObj;
                if (!fb.isEffective()) {
                    fetchReserved = true;
                    sReservedHosts.remove(fb.host);
                }
            }
        }
        if (!hosts.contains(getHost())) {
            hosts.add(getHost());
        }
        ArrayList<Fallback> fallbacks = new ArrayList(hosts.size());
        for (i = 0; i < hosts.size(); i++) {
            fallbacks.add(null);
        }
        try {
            String networkType = Network.isWIFIConnected(sAppContext) ? "wifi" : "wap";
            String result = getRemoteFallbackJSON(hosts, networkType, this.sUserId, fetchReserved);
            if (!TextUtils.isEmpty(result)) {
                JSONObject jSONObject = new JSONObject(result);
                MyLog.i(result);
                if ("OK".equalsIgnoreCase(jSONObject.getString("S"))) {
                    String host;
                    int j;
                    String fallbackHost;
                    JSONObject response = jSONObject.getJSONObject("R");
                    String province = response.getString("province");
                    String city = response.getString("city");
                    String isp = response.getString("isp");
                    String ip = response.getString("ip");
                    String country = response.getString("country");
                    JSONObject wifiHosts = response.getJSONObject(networkType);
                    MyLog.v("get bucket: ip = " + ip + " net = " + isp + " hosts = " + wifiHosts.toString());
                    for (i = 0; i < hosts.size(); i++) {
                        host = (String) hosts.get(i);
                        JSONArray fallbackHosts = wifiHosts.optJSONArray(host);
                        if (fallbackHosts == null) {
                            MyLog.w("no bucket found for " + host);
                        } else {
                            fb = new Fallback(host);
                            for (j = 0; j < fallbackHosts.length(); j++) {
                                fallbackHost = fallbackHosts.getString(j);
                                if (!TextUtils.isEmpty(fallbackHost)) {
                                    fb.addHost(new WeightedHost(fallbackHost, fallbackHosts.length() - j));
                                }
                            }
                            fallbacks.set(i, fb);
                            fb.country = country;
                            fb.province = province;
                            fb.isp = isp;
                            fb.ip = ip;
                            fb.city = city;
                            if (response.has("stat-percent")) {
                                fb.setPercent(response.getDouble("stat-percent"));
                            }
                            if (response.has("stat-domain")) {
                                fb.setDomainName(response.getString("stat-domain"));
                            }
                            if (response.has("ttl")) {
                                fb.setEffectiveDuration(((long) response.getInt("ttl")) * 1000);
                            }
                            setCurrentISP(fb.getISP());
                        }
                    }
                    JSONObject reservedObjs = response.optJSONObject("reserved");
                    if (reservedObjs != null) {
                        long reserved_ttl = 604800000;
                        if (response.has("reserved-ttl")) {
                            reserved_ttl = ((long) response.getInt("reserved-ttl")) * 1000;
                        }
                        Iterator<String> it = reservedObjs.keys();
                        while (it.hasNext()) {
                            host = (String) it.next();
                            JSONArray reservedHosts = reservedObjs.optJSONArray(host);
                            if (reservedHosts == null) {
                                MyLog.w("no bucket found for " + host);
                            } else {
                                fb = new Fallback(host);
                                fb.setEffectiveDuration(reserved_ttl);
                                for (j = 0; j < reservedHosts.length(); j++) {
                                    fallbackHost = reservedHosts.getString(j);
                                    if (!TextUtils.isEmpty(fallbackHost)) {
                                        fb.addHost(new WeightedHost(fallbackHost, reservedHosts.length() - j));
                                    }
                                }
                                synchronized (sReservedHosts) {
                                    if (this.sHostFilter.accept(host)) {
                                        sReservedHosts.put(host, fb);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            MyLog.w("failed to get bucket " + e.getMessage());
        }
        for (i = 0; i < hosts.size(); i++) {
            fb = (Fallback) fallbacks.get(i);
            if (fb != null) {
                updateFallbacks((String) hosts.get(i), fb);
            }
        }
        persist();
        return fallbacks;
    }

    protected String getHost() {
        String appRegion = AppRegionStorage.getInstance(sAppContext).getRegion();
        if (TextUtils.isEmpty(appRegion)) {
            return "resolver.msg.xiaomi.net";
        }
        return PushChannelRegion.China.name().equals(appRegion) ? "resolver.msg.xiaomi.net" : "resolver.msg.global.xiaomi.net";
    }

    protected String getRemoteFallbackJSON(ArrayList<String> hosts, String networkType, String userId, boolean fetchReserved) throws IOException {
        Iterator it;
        ArrayList<String> urls = new ArrayList();
        List<NameValuePair> params = new ArrayList();
        params.add(new BasicNameValuePair(nexExportFormat.TAG_FORMAT_TYPE, networkType));
        if (networkType.equals("wap")) {
            params.add(new BasicNameValuePair("conpt", obfuscate(Network.getActiveConnPoint(sAppContext))));
        }
        if (fetchReserved) {
            params.add(new BasicNameValuePair("reserved", "1"));
        }
        params.add(new BasicNameValuePair(nexExportFormat.TAG_FORMAT_UUID, userId));
        params.add(new BasicNameValuePair("list", XMStringUtils.join((Collection) hosts, ",")));
        Fallback localFallback = getLocalFallback(getHost());
        String originalURL = String.format(Locale.US, "http://%1$s/gslb/?ver=4.0", new Object[]{getHost()});
        if (localFallback == null) {
            urls.add(originalURL);
            synchronized (sReservedHosts) {
                Fallback reservedHosts = (Fallback) sReservedHosts.get("resolver.msg.xiaomi.net");
                if (reservedHosts != null) {
                    it = reservedHosts.getHosts(true).iterator();
                    while (it.hasNext()) {
                        String host = (String) it.next();
                        urls.add(String.format(Locale.US, "http://%1$s/gslb/?ver=4.0", new Object[]{host}));
                    }
                }
            }
        } else {
            urls = localFallback.getUrls(originalURL);
        }
        IOException exception = null;
        it = urls.iterator();
        while (it.hasNext()) {
            Builder uri = Uri.parse((String) it.next()).buildUpon();
            for (NameValuePair pair : params) {
                uri.appendQueryParameter(pair.getName(), pair.getValue());
            }
            try {
                if (this.sHttpGetter == null) {
                    return Network.downloadXml(sAppContext, new URL(uri.toString()));
                }
                return this.sHttpGetter.doGet(uri.toString());
            } catch (IOException e) {
                exception = e;
            }
        }
        if (exception == null) {
            return null;
        }
        MyLog.w("network exception: " + exception.getMessage());
        throw exception;
    }

    public void clear() {
        synchronized (this.mHostsMapping) {
            this.mHostsMapping.clear();
        }
    }

    public String dump() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.mHostsMapping) {
            for (Entry<String, Fallbacks> entry : this.mHostsMapping.entrySet()) {
                sb.append((String) entry.getKey());
                sb.append(":\n");
                sb.append(((Fallbacks) entry.getValue()).toString());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public void updateFallbacks(String host, Fallback fb) {
        if (TextUtils.isEmpty(host) || fb == null) {
            throw new IllegalArgumentException("the argument is invalid " + host + ", " + fb);
        } else if (this.sHostFilter.accept(host)) {
            synchronized (this.mHostsMapping) {
                checkHostMapping();
                if (this.mHostsMapping.containsKey(host)) {
                    ((Fallbacks) this.mHostsMapping.get(host)).addFallback(fb);
                } else {
                    Fallbacks newfbs = new Fallbacks(host);
                    newfbs.addFallback(fb);
                    this.mHostsMapping.put(host, newfbs);
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:14:0x0035, code:
            r1 = requestRemoteFallbacks(r3);
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:16:0x003e, code:
            if (r4 >= r3.size()) goto L_0x005b;
     */
    /* JADX WARNING: Missing block: B:18:0x0044, code:
            if (r1.get(r4) == null) goto L_0x0055;
     */
    /* JADX WARNING: Missing block: B:19:0x0046, code:
            updateFallbacks((java.lang.String) r3.get(r4), (com.xiaomi.network.Fallback) r1.get(r4));
     */
    /* JADX WARNING: Missing block: B:20:0x0055, code:
            r4 = r4 + 1;
     */
    /* JADX WARNING: Missing block: B:25:0x005b, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void refreshFallbacks() {
        Throwable th;
        synchronized (this.mHostsMapping) {
            try {
                checkHostMapping();
                ArrayList<String> hosts = new ArrayList(this.mHostsMapping.keySet());
                try {
                    for (int i = hosts.size() - 1; i >= 0; i--) {
                        Fallbacks fbs = (Fallbacks) this.mHostsMapping.get(hosts.get(i));
                        if (!(fbs == null || fbs.getFallback() == null)) {
                            hosts.remove(i);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    ArrayList<String> arrayList = hosts;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }

    protected String loadHosts() {
        Throwable t;
        Throwable th;
        BufferedReader reader = null;
        try {
            File file = new File(sAppContext.getFilesDir(), getProcessName());
            if (file.isFile()) {
                BufferedReader reader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String str = reader2.readLine();
                        if (str != null) {
                            sb.append(str);
                        } else {
                            String stringBuilder = sb.toString();
                            IOUtils.closeQuietly(reader2);
                            reader = reader2;
                            return stringBuilder;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    reader = reader2;
                    IOUtils.closeQuietly(reader);
                    throw th;
                }
            }
            IOUtils.closeQuietly(null);
            return null;
        } catch (Throwable th3) {
            t = th3;
            MyLog.w("load host exception " + t.getMessage());
            IOUtils.closeQuietly(reader);
            return null;
        }
    }

    protected boolean checkHostMapping() {
        synchronized (this.mHostsMapping) {
            if (hostLoaded) {
                return true;
            }
            hostLoaded = true;
            this.mHostsMapping.clear();
            try {
                String str = loadHosts();
                if (!TextUtils.isEmpty(str)) {
                    fromJSON(str);
                    MyLog.i("loading the new hosts succeed");
                    return true;
                }
            } catch (Throwable t) {
                MyLog.w("load bucket failure: " + t.getMessage());
            }
        }
        return false;
    }

    public static void addReservedHost(String host, String fallback) {
        Throwable th;
        Fallback reserved = (Fallback) sReservedHosts.get(host);
        synchronized (sReservedHosts) {
            if (reserved == null) {
                try {
                    Fallback reserved2 = new Fallback(host);
                    try {
                        reserved2.setEffectiveDuration(604800000);
                        reserved2.addHost(fallback);
                        sReservedHosts.put(host, reserved2);
                        reserved = reserved2;
                    } catch (Throwable th2) {
                        th = th2;
                        reserved = reserved2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            }
            reserved.addHost(fallback);
        }
    }

    public void persist() {
        synchronized (this.mHostsMapping) {
            try {
                BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(sAppContext.openFileOutput(getProcessName(), 0)));
                String jsonStr = toJSON().toString();
                if (!TextUtils.isEmpty(jsonStr)) {
                    bw.write(jsonStr);
                }
                bw.close();
            } catch (Exception e) {
                MyLog.w("persist bucket failure: " + e.getMessage());
            }
        }
    }

    protected String getProcessName() {
        List<RunningAppProcessInfo> infos = ((ActivityManager) sAppContext.getSystemService("activity")).getRunningAppProcesses();
        if (infos != null) {
            for (RunningAppProcessInfo info : infos) {
                if (info.pid == Process.myPid()) {
                    return info.processName;
                }
            }
        }
        return "com.xiaomi";
    }

    private String getVersionName() {
        try {
            PackageInfo info = sAppContext.getPackageManager().getPackageInfo(sAppContext.getPackageName(), 16384);
            if (info != null) {
                return info.versionName;
            }
        } catch (Exception e) {
        }
        return "0";
    }

    public void purge() {
        synchronized (this.mHostsMapping) {
            for (Fallbacks fbs : this.mHostsMapping.values()) {
                fbs.purge(true);
            }
            boolean done = false;
            while (!done) {
                done = true;
                for (String host : this.mHostsMapping.keySet()) {
                    if (((Fallbacks) this.mHostsMapping.get(host)).getFallbacks().isEmpty()) {
                        this.mHostsMapping.remove(host);
                        done = false;
                        break;
                    }
                }
            }
        }
    }

    static String obfuscate(String s) {
        try {
            int len = s.length();
            byte[] b = s.getBytes(Keyczar.DEFAULT_ENCODING);
            for (int i = 0; i < b.length; i++) {
                byte v = b[i];
                if ((v & 240) != 240) {
                    b[i] = (byte) ((v & 240) | ((v & 15) ^ ((byte) (((v >> 4) + len) & 15))));
                }
            }
            return new String(b);
        } catch (UnsupportedEncodingException e) {
            return s;
        }
    }

    public void setCurrentISP(String currentISP) {
        this.currentISP = currentISP;
    }

    protected JSONObject toJSON() throws JSONException {
        JSONObject obj;
        synchronized (this.mHostsMapping) {
            obj = new JSONObject();
            obj.put("ver", 2);
            JSONArray jsonArray = new JSONArray();
            for (Fallbacks fbs : this.mHostsMapping.values()) {
                jsonArray.put(fbs.toJSON());
            }
            obj.put("data", jsonArray);
            JSONArray reserved = new JSONArray();
            for (Fallback fb : sReservedHosts.values()) {
                reserved.put(fb.toJSON());
            }
            obj.put("reserved", reserved);
        }
        return obj;
    }

    protected void fromJSON(String jsonStr) throws JSONException {
        synchronized (this.mHostsMapping) {
            this.mHostsMapping.clear();
            JSONObject obj = new JSONObject(jsonStr);
            if (obj.optInt("ver") != 2) {
                throw new JSONException("Bad version");
            }
            int i;
            JSONArray ja = obj.optJSONArray("data");
            for (i = 0; i < ja.length(); i++) {
                Fallbacks fbs = new Fallbacks().fromJSON(ja.getJSONObject(i));
                this.mHostsMapping.put(fbs.getHost(), fbs);
            }
            JSONArray reserved = obj.optJSONArray("reserved");
            for (i = 0; i < reserved.length(); i++) {
                Fallback fb = new Fallback("").fromJSON(reserved.getJSONObject(i));
                sReservedHosts.put(fb.host, fb);
            }
        }
    }
}
