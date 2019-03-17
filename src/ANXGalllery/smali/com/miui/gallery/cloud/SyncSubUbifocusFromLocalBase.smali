.class public abstract Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncSubUbifocusFromLocalBase.java"


# instance fields
.field private mAutoCreateImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mManualCreateImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDelay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "noDelay"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 29
    iput-boolean p4, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mNoDelay:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected handleRequestCloudItemList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mManualCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    const-string v0, "SyncUbifocusFromLocal"

    const-string/jumbo v1, "start upload manual create images"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mManualCreateImageItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    const-string v0, "SyncUbifocusFromLocal"

    const-string/jumbo v1, "start upload auto create images"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 91
    :cond_1
    return-void
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mManualCreateImageItems:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mAutoCreateImageItems:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/data/DBItem;

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    .line 41
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 71
    const-string v2, "SyncUbifocusFromLocal"

    const-string/jumbo v3, "unsupport local flag %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 51
    const-string v2, "SyncUbifocusFromLocal"

    const-string/jumbo v3, "unsupport local flag= %d serverType= %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :pswitch_1
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mNoDelay:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 47
    .local v1, "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mManualCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 65
    const-string v2, "SyncUbifocusFromLocal"

    const-string/jumbo v3, "unsupport local flag=%d serverType=%d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :pswitch_3
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mNoDelay:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 61
    .restart local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 43
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 57
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
