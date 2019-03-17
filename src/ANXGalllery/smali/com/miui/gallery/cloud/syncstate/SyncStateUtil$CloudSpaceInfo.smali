.class public Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
.super Ljava/lang/Object;
.source "SyncStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudSpaceInfo"
.end annotation


# instance fields
.field private mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v1, 0x0

    .line 203
    .local v1, "statusInfo":Lmiui/cloud/sync/MiCloudStatusInfo;
    :try_start_0
    invoke-static {p1}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getTotal()J
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUsed()J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isSpaceLow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->mInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceLowPercent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
