package com.xiaomi.smack.packet;

import android.os.Bundle;
import com.xiaomi.smack.util.StringUtils;

public class Presence extends Packet {
    private Mode mode = null;
    private int priority = Integer.MIN_VALUE;
    private String status = null;
    private Type type = Type.available;

    public enum Mode {
        chat,
        available,
        away,
        xa,
        dnd
    }

    public enum Type {
        available,
        unavailable,
        subscribe,
        subscribed,
        unsubscribe,
        unsubscribed,
        error,
        probe
    }

    public Presence(Type type) {
        setType(type);
    }

    public Presence(Bundle b) {
        super(b);
        if (b.containsKey("ext_pres_type")) {
            this.type = Type.valueOf(b.getString("ext_pres_type"));
        }
        if (b.containsKey("ext_pres_status")) {
            this.status = b.getString("ext_pres_status");
        }
        if (b.containsKey("ext_pres_prio")) {
            this.priority = b.getInt("ext_pres_prio");
        }
        if (b.containsKey("ext_pres_mode")) {
            this.mode = Mode.valueOf(b.getString("ext_pres_mode"));
        }
    }

    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        if (this.type != null) {
            bundle.putString("ext_pres_type", this.type.toString());
        }
        if (this.status != null) {
            bundle.putString("ext_pres_status", this.status);
        }
        if (this.priority != Integer.MIN_VALUE) {
            bundle.putInt("ext_pres_prio", this.priority);
        }
        if (!(this.mode == null || this.mode == Mode.available)) {
            bundle.putString("ext_pres_mode", this.mode.toString());
        }
        return bundle;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new NullPointerException("Type cannot be null");
        }
        this.type = type;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setPriority(int priority) {
        if (priority < -128 || priority > 128) {
            throw new IllegalArgumentException("Priority value " + priority + " is not valid. Valid range is -128 through 128.");
        }
        this.priority = priority;
    }

    public void setMode(Mode mode) {
        this.mode = mode;
    }

    public String toXML() {
        StringBuilder buf = new StringBuilder();
        buf.append("<presence");
        if (getXmlns() != null) {
            buf.append(" xmlns=\"").append(getXmlns()).append("\"");
        }
        if (getPacketID() != null) {
            buf.append(" id=\"").append(getPacketID()).append("\"");
        }
        if (getTo() != null) {
            buf.append(" to=\"").append(StringUtils.escapeForXML(getTo())).append("\"");
        }
        if (getFrom() != null) {
            buf.append(" from=\"").append(StringUtils.escapeForXML(getFrom())).append("\"");
        }
        if (getChannelId() != null) {
            buf.append(" chid=\"").append(StringUtils.escapeForXML(getChannelId())).append("\"");
        }
        if (this.type != null) {
            buf.append(" type=\"").append(this.type).append("\"");
        }
        buf.append(">");
        if (this.status != null) {
            buf.append("<status>").append(StringUtils.escapeForXML(this.status)).append("</status>");
        }
        if (this.priority != Integer.MIN_VALUE) {
            buf.append("<priority>").append(this.priority).append("</priority>");
        }
        if (!(this.mode == null || this.mode == Mode.available)) {
            buf.append("<show>").append(this.mode).append("</show>");
        }
        buf.append(getExtensionsXML());
        XMPPError error = getError();
        if (error != null) {
            buf.append(error.toXML());
        }
        buf.append("</presence>");
        return buf.toString();
    }
}
