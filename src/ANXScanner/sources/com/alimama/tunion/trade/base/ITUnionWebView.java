package com.alimama.tunion.trade.base;

public interface ITUnionWebView {
    String getUrl();

    String getUserAgent();

    void loadUrl(String str);

    void reload();

    void setUserAgent(String str);
}
