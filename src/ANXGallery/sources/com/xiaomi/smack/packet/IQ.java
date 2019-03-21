package com.xiaomi.smack.packet;

import android.os.Bundle;
import com.xiaomi.smack.util.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class IQ extends Packet {
    private final Map<String, String> attributes = new HashMap();
    private Type type = Type.GET;

    public static class Type {
        public static final Type COMMAND = new Type("command");
        public static final Type ERROR = new Type("error");
        public static final Type GET = new Type("get");
        public static final Type RESULT = new Type("result");
        public static final Type SET = new Type("set");
        private String value;

        public static Type fromString(String type) {
            if (type == null) {
                return null;
            }
            type = type.toLowerCase();
            if (GET.toString().equals(type)) {
                return GET;
            }
            if (SET.toString().equals(type)) {
                return SET;
            }
            if (ERROR.toString().equals(type)) {
                return ERROR;
            }
            if (RESULT.toString().equals(type)) {
                return RESULT;
            }
            if (COMMAND.toString().equals(type)) {
                return COMMAND;
            }
            return null;
        }

        private Type(String value) {
            this.value = value;
        }

        public String toString() {
            return this.value;
        }
    }

    public IQ(Bundle bundle) {
        super(bundle);
        if (bundle.containsKey("ext_iq_type")) {
            this.type = Type.fromString(bundle.getString("ext_iq_type"));
        }
    }

    public synchronized void setAttributes(Map<String, String> attrs) {
        this.attributes.putAll(attrs);
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        if (type == null) {
            this.type = Type.GET;
        } else {
            this.type = type;
        }
    }

    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        if (this.type != null) {
            bundle.putString("ext_iq_type", this.type.toString());
        }
        return bundle;
    }

    public String toXML() {
        StringBuilder buf = new StringBuilder();
        buf.append("<iq ");
        if (getPacketID() != null) {
            buf.append("id=\"" + getPacketID() + "\" ");
        }
        if (getTo() != null) {
            buf.append("to=\"").append(StringUtils.escapeForXML(getTo())).append("\" ");
        }
        if (getFrom() != null) {
            buf.append("from=\"").append(StringUtils.escapeForXML(getFrom())).append("\" ");
        }
        if (getChannelId() != null) {
            buf.append("chid=\"").append(StringUtils.escapeForXML(getChannelId())).append("\" ");
        }
        for (Entry<String, String> entry : this.attributes.entrySet()) {
            buf.append(StringUtils.escapeForXML((String) entry.getKey())).append("=\"");
            buf.append(StringUtils.escapeForXML((String) entry.getValue())).append("\" ");
        }
        if (this.type == null) {
            buf.append("type=\"get\">");
        } else {
            buf.append("type=\"").append(getType()).append("\">");
        }
        String queryXML = getChildElementXML();
        if (queryXML != null) {
            buf.append(queryXML);
        }
        buf.append(getExtensionsXML());
        XMPPError error = getError();
        if (error != null) {
            buf.append(error.toXML());
        }
        buf.append("</iq>");
        return buf.toString();
    }

    public String getChildElementXML() {
        return null;
    }
}
