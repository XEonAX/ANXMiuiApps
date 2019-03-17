.class public Lcom/ut/mini/core/appstatus/UTMCAppStatusRegHelper;
.super Ljava/lang/Object;
.source "UTMCAppStatusRegHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registeActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p0, "aApplicationInstance"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 32
    invoke-static {}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->getInstance()Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V
    .locals 1
    .param p0, "aCallbacks"    # Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-static {}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->getInstance()Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static unRegisterAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V
    .locals 1
    .param p0, "aCallbacks"    # Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    invoke-static {}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->getInstance()Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->unregisterAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static unregisterActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p0, "aApplicationInstance"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->getInstance()Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    :cond_0
    return-void
.end method
