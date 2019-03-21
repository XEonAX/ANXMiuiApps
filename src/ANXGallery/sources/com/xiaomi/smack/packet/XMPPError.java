package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class XMPPError {
    private List<CommonPacketExtension> applicationExtensions = null;
    private int code;
    private String condition;
    private String message;
    private String reason;
    private String type;

    public static class Condition {
        public static final Condition bad_request = new Condition("bad-request");
        public static final Condition conflict = new Condition("conflict");
        public static final Condition feature_not_implemented = new Condition("feature-not-implemented");
        public static final Condition forbidden = new Condition("forbidden");
        public static final Condition gone = new Condition("gone");
        public static final Condition interna_server_error = new Condition("internal-server-error");
        public static final Condition item_not_found = new Condition("item-not-found");
        public static final Condition jid_malformed = new Condition("jid-malformed");
        public static final Condition no_acceptable = new Condition("not-acceptable");
        public static final Condition not_allowed = new Condition("not-allowed");
        public static final Condition not_authorized = new Condition("not-authorized");
        public static final Condition payment_required = new Condition("payment-required");
        public static final Condition recipient_unavailable = new Condition("recipient-unavailable");
        public static final Condition redirect = new Condition("redirect");
        public static final Condition registration_required = new Condition("registration-required");
        public static final Condition remote_server_error = new Condition("remote-server-error");
        public static final Condition remote_server_not_found = new Condition("remote-server-not-found");
        public static final Condition remote_server_timeout = new Condition("remote-server-timeout");
        public static final Condition request_timeout = new Condition("request-timeout");
        public static final Condition resource_constraint = new Condition("resource-constraint");
        public static final Condition service_unavailable = new Condition("service-unavailable");
        public static final Condition subscription_required = new Condition("subscription-required");
        public static final Condition undefined_condition = new Condition("undefined-condition");
        public static final Condition unexpected_request = new Condition("unexpected-request");
        private String value;

        public Condition(String value) {
            this.value = value;
        }

        public String toString() {
            return this.value;
        }
    }

    public XMPPError(Condition condition) {
        init(condition);
        this.message = null;
    }

    public XMPPError(int code, String type, String reason, String condition, String message, List<CommonPacketExtension> extension) {
        this.code = code;
        this.type = type;
        this.reason = reason;
        this.condition = condition;
        this.message = message;
        this.applicationExtensions = extension;
    }

    public XMPPError(Bundle bundle) {
        this.code = bundle.getInt("ext_err_code");
        if (bundle.containsKey("ext_err_type")) {
            this.type = bundle.getString("ext_err_type");
        }
        this.condition = bundle.getString("ext_err_cond");
        this.reason = bundle.getString("ext_err_reason");
        this.message = bundle.getString("ext_err_msg");
        Parcelable[] extBundles = bundle.getParcelableArray("ext_exts");
        if (extBundles != null) {
            this.applicationExtensions = new ArrayList(extBundles.length);
            for (Parcelable p : extBundles) {
                CommonPacketExtension ext = CommonPacketExtension.parseFromBundle((Bundle) p);
                if (ext != null) {
                    this.applicationExtensions.add(ext);
                }
            }
        }
    }

    private void init(Condition condition) {
        this.condition = condition.value;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.type != null) {
            bundle.putString("ext_err_type", this.type);
        }
        bundle.putInt("ext_err_code", this.code);
        if (this.reason != null) {
            bundle.putString("ext_err_reason", this.reason);
        }
        if (this.condition != null) {
            bundle.putString("ext_err_cond", this.condition);
        }
        if (this.message != null) {
            bundle.putString("ext_err_msg", this.message);
        }
        if (this.applicationExtensions != null) {
            Bundle[] extBundle = new Bundle[this.applicationExtensions.size()];
            int i = 0;
            for (CommonPacketExtension ext : this.applicationExtensions) {
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

    public String toXML() {
        StringBuilder buf = new StringBuilder();
        buf.append("<error code=\"").append(this.code).append("\"");
        if (this.type != null) {
            buf.append(" type=\"");
            buf.append(this.type);
            buf.append("\"");
        }
        if (this.reason != null) {
            buf.append(" reason=\"");
            buf.append(this.reason);
            buf.append("\"");
        }
        buf.append(">");
        if (this.condition != null) {
            buf.append("<").append(this.condition);
            buf.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
        }
        if (this.message != null) {
            buf.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
            buf.append(this.message);
            buf.append("</text>");
        }
        for (PacketExtension element : getExtensions()) {
            buf.append(element.toXML());
        }
        buf.append("</error>");
        return buf.toString();
    }

    public String toString() {
        StringBuilder txt = new StringBuilder();
        if (this.condition != null) {
            txt.append(this.condition);
        }
        txt.append("(").append(this.code).append(")");
        if (this.message != null) {
            txt.append(" ").append(this.message);
        }
        return txt.toString();
    }

    public synchronized List<CommonPacketExtension> getExtensions() {
        List<CommonPacketExtension> emptyList;
        if (this.applicationExtensions == null) {
            emptyList = Collections.emptyList();
        } else {
            emptyList = Collections.unmodifiableList(this.applicationExtensions);
        }
        return emptyList;
    }
}
