package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.smack.util.StringUtils;

public class Message extends Packet {
    private String fseq = "";
    private String language;
    private String mAppId;
    private String mBody;
    private String mBodyEncoding;
    private boolean mEncrypted = false;
    private String mSubject;
    private boolean mTransient = false;
    private String mseq = "";
    private String seq = "";
    private String status = "";
    private String thread = null;
    private String type = null;

    public Message(Bundle bundle) {
        super(bundle);
        this.type = bundle.getString("ext_msg_type");
        this.language = bundle.getString("ext_msg_lang");
        this.thread = bundle.getString("ext_msg_thread");
        this.mSubject = bundle.getString("ext_msg_sub");
        this.mBody = bundle.getString("ext_msg_body");
        this.mBodyEncoding = bundle.getString("ext_body_encode");
        this.mAppId = bundle.getString("ext_msg_appid");
        this.mTransient = bundle.getBoolean("ext_msg_trans", false);
        this.mEncrypted = bundle.getBoolean("ext_msg_encrypt", false);
        this.seq = bundle.getString("ext_msg_seq");
        this.mseq = bundle.getString("ext_msg_mseq");
        this.fseq = bundle.getString("ext_msg_fseq");
        this.status = bundle.getString("ext_msg_status");
    }

    public String getType() {
        return this.type;
    }

    public void setIsTransient(boolean isTransient) {
        this.mTransient = isTransient;
    }

    public String getAppId() {
        return this.mAppId;
    }

    public void setAppId(String appId) {
        this.mAppId = appId;
    }

    public String getSeq() {
        return this.seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getMSeq() {
        return this.mseq;
    }

    public void setMSeq(String mseq) {
        this.mseq = mseq;
    }

    public String getFSeq() {
        return this.fseq;
    }

    public void setFSeq(String fseq) {
        this.fseq = fseq;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setEncrypted(boolean encrypted) {
        this.mEncrypted = encrypted;
    }

    public void setSubject(String subject) {
        this.mSubject = subject;
    }

    public void setBody(String body) {
        this.mBody = body;
    }

    public void setBody(String body, String encoding) {
        this.mBody = body;
        this.mBodyEncoding = encoding;
    }

    public void setThread(String thread) {
        this.thread = thread;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        if (!TextUtils.isEmpty(this.type)) {
            bundle.putString("ext_msg_type", this.type);
        }
        if (this.language != null) {
            bundle.putString("ext_msg_lang", this.language);
        }
        if (this.mSubject != null) {
            bundle.putString("ext_msg_sub", this.mSubject);
        }
        if (this.mBody != null) {
            bundle.putString("ext_msg_body", this.mBody);
        }
        if (!TextUtils.isEmpty(this.mBodyEncoding)) {
            bundle.putString("ext_body_encode", this.mBodyEncoding);
        }
        if (this.thread != null) {
            bundle.putString("ext_msg_thread", this.thread);
        }
        if (this.mAppId != null) {
            bundle.putString("ext_msg_appid", this.mAppId);
        }
        if (this.mTransient) {
            bundle.putBoolean("ext_msg_trans", true);
        }
        if (!TextUtils.isEmpty(this.seq)) {
            bundle.putString("ext_msg_seq", this.seq);
        }
        if (!TextUtils.isEmpty(this.mseq)) {
            bundle.putString("ext_msg_mseq", this.mseq);
        }
        if (!TextUtils.isEmpty(this.fseq)) {
            bundle.putString("ext_msg_fseq", this.fseq);
        }
        if (this.mEncrypted) {
            bundle.putBoolean("ext_msg_encrypt", true);
        }
        if (!TextUtils.isEmpty(this.status)) {
            bundle.putString("ext_msg_status", this.status);
        }
        return bundle;
    }

    public String toXML() {
        StringBuilder buf = new StringBuilder();
        buf.append("<message");
        if (getXmlns() != null) {
            buf.append(" xmlns=\"").append(getXmlns()).append("\"");
        }
        if (this.language != null) {
            buf.append(" xml:lang=\"").append(getLanguage()).append("\"");
        }
        if (getPacketID() != null) {
            buf.append(" id=\"").append(getPacketID()).append("\"");
        }
        if (getTo() != null) {
            buf.append(" to=\"").append(StringUtils.escapeForXML(getTo())).append("\"");
        }
        if (!TextUtils.isEmpty(getSeq())) {
            buf.append(" seq=\"").append(getSeq()).append("\"");
        }
        if (!TextUtils.isEmpty(getMSeq())) {
            buf.append(" mseq=\"").append(getMSeq()).append("\"");
        }
        if (!TextUtils.isEmpty(getFSeq())) {
            buf.append(" fseq=\"").append(getFSeq()).append("\"");
        }
        if (!TextUtils.isEmpty(getStatus())) {
            buf.append(" status=\"").append(getStatus()).append("\"");
        }
        if (getFrom() != null) {
            buf.append(" from=\"").append(StringUtils.escapeForXML(getFrom())).append("\"");
        }
        if (getChannelId() != null) {
            buf.append(" chid=\"").append(StringUtils.escapeForXML(getChannelId())).append("\"");
        }
        if (this.mTransient) {
            buf.append(" transient=\"true\"");
        }
        if (!TextUtils.isEmpty(this.mAppId)) {
            buf.append(" appid=\"").append(getAppId()).append("\"");
        }
        if (!TextUtils.isEmpty(this.type)) {
            buf.append(" type=\"").append(this.type).append("\"");
        }
        if (this.mEncrypted) {
            buf.append(" s=\"1\"");
        }
        buf.append(">");
        if (this.mSubject != null) {
            buf.append("<subject>").append(StringUtils.escapeForXML(this.mSubject));
            buf.append("</subject>");
        }
        if (this.mBody != null) {
            buf.append("<body");
            if (!TextUtils.isEmpty(this.mBodyEncoding)) {
                buf.append(" encode=\"").append(this.mBodyEncoding).append("\"");
            }
            buf.append(">").append(StringUtils.escapeForXML(this.mBody)).append("</body>");
        }
        if (this.thread != null) {
            buf.append("<thread>").append(this.thread).append("</thread>");
        }
        if ("error".equalsIgnoreCase(this.type)) {
            XMPPError error = getError();
            if (error != null) {
                buf.append(error.toXML());
            }
        }
        buf.append(getExtensionsXML());
        buf.append("</message>");
        return buf.toString();
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Message message = (Message) o;
        if (!super.equals(message)) {
            return false;
        }
        if (this.mBody != null) {
            if (!this.mBody.equals(message.mBody)) {
                return false;
            }
        } else if (message.mBody != null) {
            return false;
        }
        if (this.language != null) {
            if (!this.language.equals(message.language)) {
                return false;
            }
        } else if (message.language != null) {
            return false;
        }
        if (this.mSubject != null) {
            if (!this.mSubject.equals(message.mSubject)) {
                return false;
            }
        } else if (message.mSubject != null) {
            return false;
        }
        if (this.thread != null) {
            if (!this.thread.equals(message.thread)) {
                return false;
            }
        } else if (message.thread != null) {
            return false;
        }
        if (this.type != message.type) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int result;
        int hashCode;
        int i = 0;
        if (this.type != null) {
            result = this.type.hashCode();
        } else {
            result = 0;
        }
        int i2 = result * 31;
        if (this.mBody != null) {
            hashCode = this.mBody.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.thread != null) {
            hashCode = this.thread.hashCode();
        } else {
            hashCode = 0;
        }
        i2 = (i2 + hashCode) * 31;
        if (this.language != null) {
            hashCode = this.language.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (i2 + hashCode) * 31;
        if (this.mSubject != null) {
            i = this.mSubject.hashCode();
        }
        return hashCode + i;
    }
}
