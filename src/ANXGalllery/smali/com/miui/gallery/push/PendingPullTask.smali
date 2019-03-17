.class public Lcom/miui/gallery/push/PendingPullTask;
.super Lcom/miui/gallery/pendingtask/base/PendingTask;
.source "PendingPullTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/pendingtask/base/PendingTask",
        "<",
        "Lcom/miui/gallery/push/GalleryPushMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTask;-><init>(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public parseData([B)Lcom/miui/gallery/push/GalleryPushMessage;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/push/GalleryPushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/miui/gallery/util/ParcelableUtil;->unmarshall([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/push/GalleryPushMessage;

    return-object v0
.end method

.method public bridge synthetic parseData([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/gallery/push/PendingPullTask;->parseData([B)Lcom/miui/gallery/push/GalleryPushMessage;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/miui/gallery/push/GalleryPushMessage;)Z
    .locals 5
    .param p1, "data"    # Lcom/miui/gallery/push/GalleryPushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-static {}, Lcom/miui/gallery/agreement/AgreementsUtils;->isNetworkingAgreementAccepted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const-string v3, "PendingPullTask"

    const-string v4, "CTA not confirmed, retry later"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return v2

    .line 52
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    const-string v3, "PendingPullTask"

    const-string v4, "Network is disconnected, retry later"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/push/GalleryPushMessage;->getBusinessModule()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "module":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/push/MessageHandlerFactory;->create(Ljava/lang/String;)Lcom/miui/gallery/push/messagehandler/MessageHandler;

    move-result-object v0

    .line 59
    .local v0, "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/miui/gallery/push/messagehandler/MessageHandler;->handlePull(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V

    .line 64
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "PendingPullTask"

    const-string v3, "MessageHandler is undefined: %s"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic process(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    check-cast p1, Lcom/miui/gallery/push/GalleryPushMessage;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/push/PendingPullTask;->process(Lcom/miui/gallery/push/GalleryPushMessage;)Z

    move-result v0

    return v0
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public wrapData(Lcom/miui/gallery/push/GalleryPushMessage;)[B
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/push/GalleryPushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lcom/miui/gallery/util/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic wrapData(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    check-cast p1, Lcom/miui/gallery/push/GalleryPushMessage;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/push/PendingPullTask;->wrapData(Lcom/miui/gallery/push/GalleryPushMessage;)[B

    move-result-object v0

    return-object v0
.end method
