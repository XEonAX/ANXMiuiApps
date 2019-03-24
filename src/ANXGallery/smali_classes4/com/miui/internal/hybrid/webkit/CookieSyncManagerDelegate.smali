.class public Lcom/miui/internal/hybrid/webkit/CookieSyncManagerDelegate;
.super Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 21
    return-void
.end method

.method public getInstance()V
    .locals 0

    .line 15
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 16
    return-void
.end method

.method public sync()V
    .locals 1

    .line 25
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 26
    return-void
.end method
