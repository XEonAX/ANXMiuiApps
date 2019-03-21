package com.miui.gallery.model;

public class DiscoveryMessage {
    private boolean isConsumed;
    private String mActionUri;
    private long mExpireTime;
    private String mMessage;
    private BaseMessageDetail mMessageDetail;
    private long mMessageId;
    private String mMessageSource;
    private int mPriority;
    private long mReceiveTime;
    private String mSubTitle;
    private String mTitle;
    private long mTriggerTime;
    private int mType;
    private long mUpdateTime;

    public static abstract class BaseMessageDetail {
        public abstract String toJson();
    }

    public static class Builder {
        private String actionUri = "";
        private long expireTime = 0;
        private boolean isConsumed = false;
        private String message = "";
        private BaseMessageDetail messageDetail = null;
        private long messageId = -1;
        private String messageSource = "";
        private int priority = 5;
        private long receiveTime = 0;
        private String subTitle = "";
        private String title = "";
        private long triggerTime = 0;
        private int type = 1;
        private long updateTime = 0;

        public Builder messageId(long messageId) {
            this.messageId = messageId;
            return this;
        }

        public Builder message(String message) {
            this.message = message;
            return this;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder subTitle(String subTitle) {
            this.subTitle = subTitle;
            return this;
        }

        public Builder type(int type) {
            this.type = type;
            return this;
        }

        public Builder priority(int priority) {
            this.priority = priority;
            return this;
        }

        public Builder receiveTime(long receiveTime) {
            this.receiveTime = receiveTime;
            return this;
        }

        public Builder updateTime(long updateTime) {
            this.updateTime = updateTime;
            return this;
        }

        public Builder triggerTime(long triggerTime) {
            this.triggerTime = triggerTime;
            return this;
        }

        public Builder expireTime(long expireTime) {
            this.expireTime = expireTime;
            return this;
        }

        public Builder consumed(boolean consumed) {
            this.isConsumed = consumed;
            return this;
        }

        public Builder actionUri(String actionUri) {
            this.actionUri = actionUri;
            return this;
        }

        public Builder messageSource(String messageSource) {
            this.messageSource = messageSource;
            return this;
        }

        public DiscoveryMessage build() {
            return new DiscoveryMessage(this);
        }
    }

    private DiscoveryMessage(Builder builder) {
        long currentTimeMillis = System.currentTimeMillis();
        this.mMessageId = builder.messageId;
        this.mMessage = builder.message;
        this.mTitle = builder.title;
        this.mSubTitle = builder.subTitle;
        this.mType = builder.type;
        this.mPriority = builder.priority;
        if (builder.receiveTime != 0) {
            this.mReceiveTime = builder.receiveTime;
        } else {
            this.mReceiveTime = currentTimeMillis;
        }
        if (builder.updateTime != 0) {
            this.mUpdateTime = builder.updateTime;
        } else {
            this.mUpdateTime = currentTimeMillis;
        }
        if (builder.updateTime != 0) {
            this.mTriggerTime = builder.triggerTime;
        } else {
            this.mTriggerTime = currentTimeMillis;
        }
        if (builder.updateTime != 0) {
            this.mExpireTime = builder.expireTime;
        } else {
            this.mExpireTime = currentTimeMillis;
        }
        this.isConsumed = builder.isConsumed;
        this.mActionUri = builder.actionUri;
        this.mMessageSource = builder.messageSource;
        this.mMessageDetail = builder.messageDetail;
    }

    public void setMessage(String message) {
        this.mMessage = message;
    }

    public void setConsumed(boolean consumed) {
        this.isConsumed = consumed;
    }

    public void setMessageDetail(BaseMessageDetail messageDetail) {
        this.mMessageDetail = messageDetail;
    }

    public long getMessageId() {
        return this.mMessageId;
    }

    public String getMessage() {
        return this.mMessage;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getSubTitle() {
        return this.mSubTitle;
    }

    public int getType() {
        return this.mType;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public long getReceiveTime() {
        return this.mReceiveTime;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public long getTriggerTime() {
        return this.mTriggerTime;
    }

    public long getExpireTime() {
        return this.mExpireTime;
    }

    public boolean isConsumed() {
        return this.isConsumed;
    }

    public String getActionUri() {
        return this.mActionUri;
    }

    public String getMessageSource() {
        return this.mMessageSource;
    }

    public BaseMessageDetail getMessageDetail() {
        return this.mMessageDetail;
    }
}
