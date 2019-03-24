.class public abstract Lmiui/hybrid/CookieManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .locals 1

    .line 46
    invoke-static {}, Lmiui/hybrid/CookieManager;->getInstance()Lmiui/hybrid/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/CookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lmiui/hybrid/CookieManager;
    .locals 1

    .line 15
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->getCookieManager()Lmiui/hybrid/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .locals 1

    .line 54
    invoke-static {}, Lmiui/hybrid/CookieManager;->getInstance()Lmiui/hybrid/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/hybrid/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCookies()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllCookie()V
    .locals 0

    .line 36
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 0

    .line 43
    return-void
.end method

.method public removeSessionCookie()V
    .locals 0

    .line 33
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 0

    .line 19
    return-void
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .locals 0

    .line 58
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    return-void
.end method
