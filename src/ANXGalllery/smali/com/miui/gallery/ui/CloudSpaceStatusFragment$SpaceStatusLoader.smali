.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CloudSpaceStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpaceStatusLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final deliverResult(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->mData:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    .line 209
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->deliverResult(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V

    return-void
.end method

.method public loadInBackground()Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    new-instance v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V

    .line 156
    .local v0, "data":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getSyncedCount(Landroid/content/Context;)[I

    move-result-object v2

    .line 157
    .local v2, "syncedCount":[I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getSyncedSize(Landroid/content/Context;)[J

    move-result-object v3

    .line 158
    .local v3, "syncedSize":[J
    aget v4, v2, v5

    iput v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedPhotoCount:I

    .line 159
    aget-wide v4, v3, v5

    iput-wide v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedPhotoSize:J

    .line 160
    aget v4, v2, v6

    iput v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedVideoCount:I

    .line 161
    aget-wide v4, v3, v6

    iput-wide v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedVideoSize:J

    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getCloudSpaceInfo(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;

    move-result-object v1

    .line 164
    .local v1, "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getTotal()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mTotalCloudSpace:J

    .line 165
    iget-wide v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mTotalCloudSpace:J

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getUsed()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mLeftCloudSpace:J

    .line 166
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->isSpaceLow()Z

    move-result v4

    iput-boolean v4, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mIsSpaceLow:Z

    .line 168
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->loadInBackground()Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    .prologue
    .line 189
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->onCanceled(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 196
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->onStopLoading()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->mData:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    .line 199
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->mData:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->mData:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->deliverResult(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->mData:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    if-nez v0, :cond_2

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->forceLoad()V

    .line 179
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;->cancelLoad()Z

    .line 185
    return-void
.end method
