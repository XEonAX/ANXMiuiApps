package com.xiaomi.clientreport.data;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.clientreport.util.ClientReportUtil;

public class Config {
    private String mAESKey;
    private boolean mEventEncrypted;
    private long mEventUploadFrequency;
    private boolean mEventUploadSwitchOpen;
    private long mMaxFileLength;
    private long mPerfUploadFrequency;
    private boolean mPerfUploadSwitchOpen;

    public static class Builder {
        private String mAESKey = null;
        private int mEventEncrypted = -1;
        private long mEventUploadFrequency = -1;
        private int mEventUploadSwitchOpen = -1;
        private long mMaxFileLength = -1;
        private long mPerfUploadFrequency = -1;
        private int mPerfUploadSwitchOpen = -1;

        public Builder setEventEncrypted(boolean mEventEncrypted) {
            this.mEventEncrypted = mEventEncrypted ? 1 : 0;
            return this;
        }

        public Builder setAESKey(String mAESKey) {
            this.mAESKey = mAESKey;
            return this;
        }

        public Builder setMaxFileLength(long mMaxFileLength) {
            this.mMaxFileLength = mMaxFileLength;
            return this;
        }

        public Builder setEventUploadSwitchOpen(boolean mEventUploadSwitchOpen) {
            this.mEventUploadSwitchOpen = mEventUploadSwitchOpen ? 1 : 0;
            return this;
        }

        public Builder setPerfUploadSwitchOpen(boolean mPerfUploadSwitchOpen) {
            this.mPerfUploadSwitchOpen = mPerfUploadSwitchOpen ? 1 : 0;
            return this;
        }

        public Builder setEventUploadFrequency(long mEventUploadFrequency) {
            this.mEventUploadFrequency = mEventUploadFrequency;
            return this;
        }

        public Builder setPerfUploadFrequency(long mPerfUploadFrequency) {
            this.mPerfUploadFrequency = mPerfUploadFrequency;
            return this;
        }

        public Config build(Context context) {
            return new Config(context, this);
        }
    }

    private Config() {
        this.mEventEncrypted = true;
        this.mEventUploadSwitchOpen = false;
        this.mPerfUploadSwitchOpen = false;
        this.mMaxFileLength = 1048576;
        this.mEventUploadFrequency = 86400;
        this.mPerfUploadFrequency = 86400;
    }

    private Config(Context context, Builder builder) {
        this.mEventEncrypted = true;
        this.mEventUploadSwitchOpen = false;
        this.mPerfUploadSwitchOpen = false;
        this.mMaxFileLength = 1048576;
        this.mEventUploadFrequency = 86400;
        this.mPerfUploadFrequency = 86400;
        if (builder.mEventEncrypted == 0) {
            this.mEventEncrypted = false;
        } else if (builder.mEventEncrypted == 1) {
            this.mEventEncrypted = true;
        } else {
            this.mEventEncrypted = true;
        }
        if (TextUtils.isEmpty(builder.mAESKey)) {
            this.mAESKey = ClientReportUtil.getEventKeyWithDefault(context);
        } else {
            this.mAESKey = builder.mAESKey;
        }
        if (builder.mMaxFileLength > -1) {
            this.mMaxFileLength = builder.mMaxFileLength;
        } else {
            this.mMaxFileLength = 1048576;
        }
        if (builder.mEventUploadFrequency > -1) {
            this.mEventUploadFrequency = builder.mEventUploadFrequency;
        } else {
            this.mEventUploadFrequency = 86400;
        }
        if (builder.mPerfUploadFrequency > -1) {
            this.mPerfUploadFrequency = builder.mPerfUploadFrequency;
        } else {
            this.mPerfUploadFrequency = 86400;
        }
        if (builder.mEventUploadSwitchOpen == 0) {
            this.mEventUploadSwitchOpen = false;
        } else if (builder.mEventUploadSwitchOpen == 1) {
            this.mEventUploadSwitchOpen = true;
        } else {
            this.mEventUploadSwitchOpen = false;
        }
        if (builder.mPerfUploadSwitchOpen == 0) {
            this.mPerfUploadSwitchOpen = false;
        } else if (builder.mPerfUploadSwitchOpen == 1) {
            this.mPerfUploadSwitchOpen = true;
        } else {
            this.mPerfUploadSwitchOpen = false;
        }
    }

    public static Config defaultConfig(Context context) {
        return getBuilder().setEventEncrypted(true).setAESKey(ClientReportUtil.getEventKeyWithDefault(context)).setMaxFileLength(1048576).setEventUploadSwitchOpen(false).setEventUploadFrequency(86400).setPerfUploadSwitchOpen(false).setPerfUploadFrequency(86400).build(context);
    }

    public static Builder getBuilder() {
        return new Builder();
    }

    public boolean isEventEncrypted() {
        return this.mEventEncrypted;
    }

    public boolean isEventUploadSwitchOpen() {
        return this.mEventUploadSwitchOpen;
    }

    public boolean isPerfUploadSwitchOpen() {
        return this.mPerfUploadSwitchOpen;
    }

    public long getMaxFileLength() {
        return this.mMaxFileLength;
    }

    public long getEventUploadFrequency() {
        return this.mEventUploadFrequency;
    }

    public long getPerfUploadFrequency() {
        return this.mPerfUploadFrequency;
    }

    public String toString() {
        return "Config{mEventEncrypted=" + this.mEventEncrypted + ", mAESKey='" + this.mAESKey + '\'' + ", mMaxFileLength=" + this.mMaxFileLength + ", mEventUploadSwitchOpen=" + this.mEventUploadSwitchOpen + ", mPerfUploadSwitchOpen=" + this.mPerfUploadSwitchOpen + ", mEventUploadFrequency=" + this.mEventUploadFrequency + ", mPerfUploadFrequency=" + this.mPerfUploadFrequency + '}';
    }
}
