package com.xiaomi.network;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Fallback {
    public String city;
    public String country;
    private long effectDuration = 86400000;
    private ArrayList<WeightedHost> fallbackHosts = new ArrayList();
    public String host;
    public String ip;
    public String isp;
    private String mDomain = "s.mi1.cc";
    private String mISP;
    private double mPercent = 0.1d;
    public String networkLabel = "";
    public String province;
    private long timestamp;
    protected String xforward;

    public Fallback(String host) {
        if (TextUtils.isEmpty(host)) {
            throw new IllegalArgumentException("the host is empty");
        }
        this.timestamp = System.currentTimeMillis();
        this.fallbackHosts.add(new WeightedHost(host, -1));
        this.networkLabel = HostManager.getActiveNetworkLabel();
        this.host = host;
    }

    public boolean match() {
        return TextUtils.equals(this.networkLabel, HostManager.getActiveNetworkLabel());
    }

    public boolean match(Fallback fbs) {
        return TextUtils.equals(this.networkLabel, fbs.networkLabel);
    }

    public boolean isEffective() {
        return System.currentTimeMillis() - this.timestamp < this.effectDuration;
    }

    public void setEffectiveDuration(long duration) {
        if (duration <= 0) {
            throw new IllegalArgumentException("the duration is invalid " + duration);
        }
        this.effectDuration = duration;
    }

    boolean isExpired() {
        long maxDuration = 864000000;
        if (864000000 < this.effectDuration) {
            maxDuration = this.effectDuration;
        }
        long now = System.currentTimeMillis();
        return now - this.timestamp > maxDuration || (now - this.timestamp > this.effectDuration && this.networkLabel.startsWith("WIFI-"));
    }

    public ArrayList<String> getUrls(String url) throws MalformedURLException {
        if (TextUtils.isEmpty(url)) {
            throw new IllegalArgumentException("the url is empty.");
        }
        URL urlObj = new URL(url);
        if (TextUtils.equals(urlObj.getHost(), this.host)) {
            ArrayList<String> urls = new ArrayList();
            Iterator it = getHosts(true).iterator();
            while (it.hasNext()) {
                Host hostObj = Host.parse((String) it.next(), urlObj.getPort());
                urls.add(new URL(urlObj.getProtocol(), hostObj.getHost(), hostObj.getPort(), urlObj.getFile()).toString());
            }
            return urls;
        }
        throw new IllegalArgumentException("the url is not supported by the fallback");
    }

    public void succeedUrl(String url, long cost, long size) {
        try {
            succeedHost(new URL(url).getHost(), cost, size);
        } catch (MalformedURLException e) {
        }
    }

    public void succeedHost(String host, long cost, long size) {
        accessHost(host, 0, cost, size, null);
    }

    public void failedUrl(String url, long cost, long size, Exception exception) {
        try {
            failedHost(new URL(url).getHost(), cost, size, exception);
        } catch (MalformedURLException e) {
        }
    }

    public void failedHost(String host, long cost, long size, Exception exception) {
        accessHost(host, -1, cost, size, exception);
    }

    public void accessHost(String host, int weight, long cost, long size, Exception exception) {
        accessHost(host, new AccessHistory(weight, cost, size, exception));
    }

    public synchronized void accessHost(String host, AccessHistory ah) {
        Iterator it = this.fallbackHosts.iterator();
        while (it.hasNext()) {
            WeightedHost weightHost = (WeightedHost) it.next();
            if (TextUtils.equals(host, weightHost.host)) {
                weightHost.addAccessHistory(ah);
                break;
            }
        }
    }

    public synchronized ArrayList<String> getHosts() {
        return getHosts(false);
    }

    public synchronized ArrayList<String> getHosts(boolean usePort) {
        ArrayList<String> hosts;
        synchronized (this) {
            WeightedHost[] wHosts = new WeightedHost[this.fallbackHosts.size()];
            this.fallbackHosts.toArray(wHosts);
            Arrays.sort(wHosts);
            hosts = new ArrayList();
            for (WeightedHost wHost : wHosts) {
                if (usePort) {
                    hosts.add(wHost.host);
                } else {
                    int pos = wHost.host.indexOf(":");
                    if (pos != -1) {
                        hosts.add(wHost.host.substring(0, pos));
                    } else {
                        hosts.add(wHost.host);
                    }
                }
            }
        }
        return hosts;
    }

    public synchronized void addHost(String host) {
        addHost(new WeightedHost(host));
    }

    synchronized void addHost(WeightedHost weightedHost) {
        deleteWeightedHost(weightedHost.host);
        this.fallbackHosts.add(weightedHost);
    }

    public synchronized void addPreferredHost(String[] hosts) {
        int i;
        for (i = this.fallbackHosts.size() - 1; i >= 0; i--) {
            for (String host : hosts) {
                if (TextUtils.equals(((WeightedHost) this.fallbackHosts.get(i)).host, host)) {
                    this.fallbackHosts.remove(i);
                    break;
                }
            }
        }
        int maxWeight = 0;
        Iterator it = this.fallbackHosts.iterator();
        while (it.hasNext()) {
            WeightedHost wh = (WeightedHost) it.next();
            if (wh.weight > maxWeight) {
                maxWeight = wh.weight;
            }
        }
        for (i = 0; i < hosts.length; i++) {
            addHost(new WeightedHost(hosts[i], (hosts.length + maxWeight) - i));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.networkLabel);
        sb.append("\n");
        sb.append(getISP());
        Iterator it = this.fallbackHosts.iterator();
        while (it.hasNext()) {
            WeightedHost wh = (WeightedHost) it.next();
            sb.append("\n");
            sb.append(wh.toString());
        }
        sb.append("\n");
        return sb.toString();
    }

    public synchronized String getISP() {
        String str;
        if (!TextUtils.isEmpty(this.mISP)) {
            str = this.mISP;
        } else if (TextUtils.isEmpty(this.isp)) {
            str = "hardcode_isp";
        } else {
            this.mISP = XMStringUtils.join(new String[]{this.isp, this.province, this.city, this.country, this.ip}, "_");
            str = this.mISP;
        }
        return str;
    }

    public void setDomainName(String domainName) {
        this.mDomain = domainName;
    }

    public void setPercent(double percent) {
        this.mPercent = percent;
    }

    public synchronized JSONObject toJSON() throws JSONException {
        JSONObject jsonObject;
        jsonObject = new JSONObject();
        jsonObject.put("net", this.networkLabel);
        jsonObject.put("ttl", this.effectDuration);
        jsonObject.put("pct", this.mPercent);
        jsonObject.put("ts", this.timestamp);
        jsonObject.put("city", this.city);
        jsonObject.put("prv", this.province);
        jsonObject.put("cty", this.country);
        jsonObject.put("isp", this.isp);
        jsonObject.put("ip", this.ip);
        jsonObject.put("host", this.host);
        jsonObject.put("xf", this.xforward);
        JSONArray ja = new JSONArray();
        Iterator it = this.fallbackHosts.iterator();
        while (it.hasNext()) {
            ja.put(((WeightedHost) it.next()).toJSON());
        }
        jsonObject.put("fbs", ja);
        return jsonObject;
    }

    public synchronized Fallback fromJSON(JSONObject jsonObject) throws JSONException {
        this.networkLabel = jsonObject.optString("net");
        this.effectDuration = jsonObject.getLong("ttl");
        this.mPercent = jsonObject.getDouble("pct");
        this.timestamp = jsonObject.getLong("ts");
        this.city = jsonObject.optString("city");
        this.province = jsonObject.optString("prv");
        this.country = jsonObject.optString("cty");
        this.isp = jsonObject.optString("isp");
        this.ip = jsonObject.optString("ip");
        this.host = jsonObject.optString("host");
        this.xforward = jsonObject.optString("xf");
        JSONArray ja = jsonObject.getJSONArray("fbs");
        for (int i = 0; i < ja.length(); i++) {
            addHost(new WeightedHost().fromJSON(ja.getJSONObject(i)));
        }
        return this;
    }

    private synchronized void deleteWeightedHost(String host) {
        Iterator<WeightedHost> iter = this.fallbackHosts.iterator();
        while (iter.hasNext()) {
            if (TextUtils.equals(((WeightedHost) iter.next()).host, host)) {
                iter.remove();
            }
        }
    }
}
