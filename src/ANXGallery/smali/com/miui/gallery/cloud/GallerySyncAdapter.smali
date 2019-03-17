.class public Lcom/miui/gallery/cloud/GallerySyncAdapter;
.super Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.source "GallerySyncAdapter.java"


# instance fields
.field mImpl:Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z

    .prologue
    .line 21
    const-string v0, "micgallery"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mImpl:Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;

    .line 23
    new-instance v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;

    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mImpl:Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;

    .line 24
    return-void
.end method


# virtual methods
.method protected onPerformMiCloudSync(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/gallery/agreement/AgreementsUtils;->isNetworkingAgreementAccepted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const-string v2, "GallerySyncAdapter"

    const-string v3, "gallery cta can\'t connect network"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v3, -0x2711

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(II)V

    throw v2

    .line 34
    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;-><init>(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 35
    .local v1, "galleryExtendedAuthToken":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mImpl:Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncResult:Landroid/content/SyncResult;

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->onPerformMiCloudSync(Landroid/os/Bundle;Landroid/accounts/Account;Landroid/content/SyncResult;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    :try_end_0
    .catch Lcom/miui/gallery/cloud/GalleryMiCloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 36
    .end local v1    # "galleryExtendedAuthToken":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    throw v2
.end method

.method public onSyncCanceled()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "GallerySyncAdapter"

    const-string v1, "on sync canceled"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mImpl:Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->onSyncCanceled()V

    .line 68
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onSyncCanceled()V

    .line 69
    return-void
.end method
