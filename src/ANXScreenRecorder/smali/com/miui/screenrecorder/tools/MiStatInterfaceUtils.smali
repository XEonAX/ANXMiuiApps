.class public Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;
.super Ljava/lang/Object;
.source "MiStatInterfaceUtils.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517546984"

.field private static final APP_KEY:Ljava/lang/String; = "5881754667984"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 16
    const-string v0, "2882303761517546984"

    const-string v1, "5881754667984"

    const/4 v2, 0x0

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 17
    invoke-static {v4}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(Z)Z

    .line 18
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUploadNetworkType(I)V

    .line 19
    invoke-static {v4}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    .line 20
    return-void
.end method

.method public static final recordPageEnd(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v0, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isMonkeyMode:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackPageEnd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final recordPageStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-boolean v0, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isMonkeyMode:Z

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackPageStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventGroup"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-boolean v0, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isMonkeyMode:Z

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {p1, p0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "eventGroup"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 33
    sget-boolean v0, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isMonkeyMode:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInEURegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p2}, Lcom/xiaomi/stat/MiStatParams;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    invoke-static {p1, p0, p2}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1, p0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
