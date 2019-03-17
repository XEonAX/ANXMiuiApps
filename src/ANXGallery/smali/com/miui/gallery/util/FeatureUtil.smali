.class public Lcom/miui/gallery/util/FeatureUtil;
.super Ljava/lang/Object;
.source "FeatureUtil.java"


# direct methods
.method public static isSupportBackupOnlyWifi()Z
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isSupportBackupOnlyWifi()Z

    move-result v0

    return v0
.end method
