package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.smack.util.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class Packet {
    protected static final String DEFAULT_LANGUAGE = Locale.getDefault().getLanguage().toLowerCase();
    private static String DEFAULT_XML_NS = null;
    public static final DateFormat XEP_0082_UTC_FORMAT = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    private static long id = 0;
    private static String prefix = (StringUtils.randomString(5) + "-");
    private String chId = null;
    private XMPPError error = null;
    private String from = null;
    private String packageName = null;
    private List<CommonPacketExtension> packetExtensions = new CopyOnWriteArrayList();
    private String packetID = null;
    private final Map<String, Object> properties = new HashMap();
    private String to = null;
    private String xmlns = DEFAULT_XML_NS;

    public abstract String toXML();

    static {
        XEP_0082_UTC_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static synchronized String nextID() {
        String stringBuilder;
        synchronized (Packet.class) {
            StringBuilder append = new StringBuilder().append(prefix);
            long j = id;
            id = 1 + j;
            stringBuilder = append.append(Long.toString(j)).toString();
        }
        return stringBuilder;
    }

    public Packet(Bundle b) {
        this.to = b.getString("ext_to");
        this.from = b.getString("ext_from");
        this.chId = b.getString("ext_chid");
        this.packetID = b.getString("ext_pkt_id");
        Parcelable[] extBundles = b.getParcelableArray("ext_exts");
        if (extBundles != null) {
            this.packetExtensions = new ArrayList(extBundles.length);
            for (Parcelable p : extBundles) {
                CommonPacketExtension ext = CommonPacketExtension.parseFromBundle((Bundle) p);
                if (ext != null) {
                    this.packetExtensions.add(ext);
                }
            }
        }
        Bundle errBundle = b.getBundle("ext_ERROR");
        if (errBundle != null) {
            this.error = new XMPPError(errBundle);
        }
    }

    public String getPacketID() {
        if ("ID_NOT_AVAILABLE".equals(this.packetID)) {
            return null;
        }
        if (this.packetID == null) {
            this.packetID = nextID();
        }
        return this.packetID;
    }

    public void setPacketID(String packetID) {
        this.packetID = packetID;
    }

    public String getChannelId() {
        return this.chId;
    }

    public void setChannelId(String appId) {
        this.chId = appId;
    }

    public String getTo() {
        return this.to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public XMPPError getError() {
        return this.error;
    }

    public void setError(XMPPError error) {
        this.error = error;
    }

    public synchronized Collection<CommonPacketExtension> getExtensions() {
        Collection<CommonPacketExtension> emptyList;
        if (this.packetExtensions == null) {
            emptyList = Collections.emptyList();
        } else {
            emptyList = Collections.unmodifiableList(new ArrayList(this.packetExtensions));
        }
        return emptyList;
    }

    public CommonPacketExtension getExtension(String elementName) {
        return getExtension(elementName, null);
    }

    public CommonPacketExtension getExtension(String elementName, String namespace) {
        for (CommonPacketExtension ext : this.packetExtensions) {
            if ((namespace == null || namespace.equals(ext.getNamespace())) && elementName.equals(ext.getElementName())) {
                return ext;
            }
        }
        return null;
    }

    public void addExtension(CommonPacketExtension extension) {
        this.packetExtensions.add(extension);
    }

    public synchronized Object getProperty(String name) {
        Object obj;
        if (this.properties == null) {
            obj = null;
        } else {
            obj = this.properties.get(name);
        }
        return obj;
    }

    public synchronized Collection<String> getPropertyNames() {
        Collection<String> emptySet;
        if (this.properties == null) {
            emptySet = Collections.emptySet();
        } else {
            emptySet = Collections.unmodifiableSet(new HashSet(this.properties.keySet()));
        }
        return emptySet;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.xmlns)) {
            bundle.putString("ext_ns", this.xmlns);
        }
        if (!TextUtils.isEmpty(this.from)) {
            bundle.putString("ext_from", this.from);
        }
        if (!TextUtils.isEmpty(this.to)) {
            bundle.putString("ext_to", this.to);
        }
        if (!TextUtils.isEmpty(this.packetID)) {
            bundle.putString("ext_pkt_id", this.packetID);
        }
        if (!TextUtils.isEmpty(this.chId)) {
            bundle.putString("ext_chid", this.chId);
        }
        if (this.error != null) {
            bundle.putBundle("ext_ERROR", this.error.toBundle());
        }
        if (this.packetExtensions != null) {
            Bundle[] extBundle = new Bundle[this.packetExtensions.size()];
            int i = 0;
            for (CommonPacketExtension ext : this.packetExtensions) {
                Bundle subBundle = ext.toBundle();
                if (subBundle != null) {
                    int i2 = i + 1;
                    extBundle[i] = subBundle;
                    i = i2;
                }
            }
            bundle.putParcelableArray("ext_exts", extBundle);
        }
        return bundle;
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x0127 A:{SYNTHETIC, Splitter: B:55:0x0127} */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x007e A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x012c A:{SYNTHETIC, Splitter: B:58:0x012c} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0127 A:{SYNTHETIC, Splitter: B:55:0x0127} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x012c A:{SYNTHETIC, Splitter: B:58:0x012c} */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x007e A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x013c A:{SYNTHETIC, Splitter: B:66:0x013c} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected synchronized String getExtensionsXML() {
        StringBuilder buf;
        ByteArrayOutputStream byteStream;
        ObjectOutputStream out;
        Exception e;
        Throwable th;
        buf = new StringBuilder();
        for (PacketExtension extension : getExtensions()) {
            buf.append(extension.toXML());
        }
        if (!(this.properties == null || this.properties.isEmpty())) {
            buf.append("<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">");
            for (String name : getPropertyNames()) {
                Object value = getProperty(name);
                buf.append("<property>");
                buf.append("<name>").append(StringUtils.escapeForXML(name)).append("</name>");
                buf.append("<value type=\"");
                if (value instanceof Integer) {
                    buf.append("integer\">").append(value).append("</value>");
                } else if (value instanceof Long) {
                    buf.append("long\">").append(value).append("</value>");
                } else if (value instanceof Float) {
                    buf.append("float\">").append(value).append("</value>");
                } else if (value instanceof Double) {
                    buf.append("double\">").append(value).append("</value>");
                } else if (value instanceof Boolean) {
                    buf.append("boolean\">").append(value).append("</value>");
                } else if (value instanceof String) {
                    buf.append("string\">");
                    buf.append(StringUtils.escapeForXML((String) value));
                    buf.append("</value>");
                } else {
                    byteStream = null;
                    out = null;
                    try {
                        ByteArrayOutputStream byteStream2 = new ByteArrayOutputStream();
                        try {
                            ObjectOutputStream out2 = new ObjectOutputStream(byteStream2);
                            try {
                                out2.writeObject(value);
                                buf.append("java-object\">");
                                buf.append(StringUtils.encodeBase64(byteStream2.toByteArray())).append("</value>");
                                if (out2 != null) {
                                    try {
                                        out2.close();
                                    } catch (Exception e2) {
                                    }
                                }
                                if (byteStream2 != null) {
                                    try {
                                        byteStream2.close();
                                    } catch (Exception e3) {
                                    }
                                }
                            } catch (Exception e4) {
                                e = e4;
                                out = out2;
                                byteStream = byteStream2;
                                try {
                                    e.printStackTrace();
                                    if (out != null) {
                                    }
                                    if (byteStream != null) {
                                    }
                                    buf.append("</property>");
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                out = out2;
                                byteStream = byteStream2;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            byteStream = byteStream2;
                            e.printStackTrace();
                            if (out != null) {
                            }
                            if (byteStream != null) {
                            }
                            buf.append("</property>");
                        } catch (Throwable th4) {
                            th = th4;
                            byteStream = byteStream2;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        e.printStackTrace();
                        if (out != null) {
                            try {
                                out.close();
                            } catch (Exception e7) {
                            }
                        }
                        if (byteStream != null) {
                            try {
                                byteStream.close();
                            } catch (Exception e8) {
                            }
                        }
                        buf.append("</property>");
                    }
                }
                buf.append("</property>");
            }
            buf.append("</properties>");
        }
        return buf.toString();
        if (out != null) {
            try {
                out.close();
            } catch (Exception e9) {
            }
        }
        if (byteStream != null) {
            try {
                byteStream.close();
            } catch (Exception e10) {
            }
        }
        throw th;
        if (byteStream != null) {
        }
        throw th;
        throw th;
    }

    public String getXmlns() {
        return this.xmlns;
    }

    public static String getDefaultLanguage() {
        return DEFAULT_LANGUAGE;
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Packet packet = (Packet) o;
        if (this.error != null) {
            if (!this.error.equals(packet.error)) {
                return false;
            }
        } else if (packet.error != null) {
            return false;
        }
        if (this.from != null) {
            if (!this.from.equals(packet.from)) {
                return false;
            }
        } else if (packet.from != null) {
            return false;
        }
        if (!this.packetExtensions.equals(packet.packetExtensions)) {
            return false;
        }
        if (this.packetID != null) {
            if (!this.packetID.equals(packet.packetID)) {
                return false;
            }
        } else if (packet.packetID != null) {
            return false;
        }
        if (this.chId != null) {
            if (!this.chId.equals(packet.chId)) {
                return false;
            }
        } else if (packet.chId != null) {
            return false;
        }
        if (this.properties != null) {
            if (!this.properties.equals(packet.properties)) {
                return false;
            }
        } else if (packet.properties != null) {
            return false;
        }
        if (this.to != null) {
            if (!this.to.equals(packet.to)) {
                return false;
            }
        } else if (packet.to != null) {
            return false;
        }
        if (this.xmlns == null ? packet.xmlns != null : !this.xmlns.equals(packet.xmlns)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int result;
        int hashCode;
        int i = 0;
        if (this.xmlns != null) {
            result = this.xmlns.hashCode();
        } else {
            result = 0;
        }
        int i2 = result * 31;
        if (this.packetID != null) {
            hashCode = this.packetID.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.to != null) {
            hashCode = this.to.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.from != null) {
            hashCode = this.from.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.chId != null) {
            hashCode = this.chId.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (((((i2 + hashCode) * 31) + this.packetExtensions.hashCode()) * 31) + this.properties.hashCode()) * 31;
        if (this.error != null) {
            i = this.error.hashCode();
        }
        return hashCode + i;
    }
}
