package com.miui.gallery.share;

import android.text.TextUtils;

public class UserInfo {
    private String mAliasNick;
    private final String mId;
    private String mMiliaoIconUrl;
    private String mMiliaoNick;

    public UserInfo(String id) {
        if (TextUtils.isEmpty(id)) {
            throw new IllegalArgumentException("Bad id");
        }
        this.mId = id;
    }

    public String getUserId() {
        return this.mId;
    }

    public String getAliasNick() {
        return this.mAliasNick;
    }

    public String getMiliaoNick() {
        return this.mMiliaoNick;
    }

    public String getMiliaoIconUrl() {
        return this.mMiliaoIconUrl;
    }

    public String getMiliaoIconUrl150() {
        return convertUrl("150");
    }

    private String convertUrl(String suffix) {
        String url = this.mMiliaoIconUrl;
        if (url == null) {
            return null;
        }
        if (url.lastIndexOf(".") <= 0) {
            return url;
        }
        return String.format("%s_%s%s", new Object[]{url.substring(0, url.lastIndexOf(".")), suffix, url.substring(url.lastIndexOf("."))});
    }

    public String getDisplayName() {
        String readable = getReadableName();
        return !TextUtils.isEmpty(readable) ? readable : this.mId;
    }

    public String getReadableName() {
        if (!TextUtils.isEmpty(this.mMiliaoNick)) {
            return this.mMiliaoNick;
        }
        if (TextUtils.isEmpty(this.mAliasNick)) {
            return null;
        }
        return this.mAliasNick;
    }

    public void setAliasNick(String aliasNick) {
        if (aliasNick != null) {
            this.mAliasNick = aliasNick.trim();
        } else {
            this.mAliasNick = null;
        }
    }

    public void setMiliaoNick(String miliaoNick) {
        if (miliaoNick != null) {
            this.mMiliaoNick = miliaoNick.trim();
        } else {
            this.mMiliaoNick = null;
        }
    }

    public void setMiliaoIconUrl(String miliaoIconUrl) {
        if (miliaoIconUrl != null) {
            this.mMiliaoIconUrl = miliaoIconUrl.trim();
        } else {
            this.mMiliaoIconUrl = null;
        }
    }
}
