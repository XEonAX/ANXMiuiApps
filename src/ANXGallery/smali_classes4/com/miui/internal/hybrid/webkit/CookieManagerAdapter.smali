.class public Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;
.super Lmiui/hybrid/CookieManager;
.source "SourceFile"


# instance fields
.field private gh:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmiui/hybrid/CookieManager;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    .line 14
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .line 23
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .locals 1

    .line 58
    invoke-static {}, Landroid/webkit/CookieManager;->allowFileSchemeCookies()Z

    move-result v0

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasCookies()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookie()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 44
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 54
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 39
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 19
    return-void
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .locals 0

    .line 63
    invoke-static {p1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 64
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/CookieManagerAdapter;->gh:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
