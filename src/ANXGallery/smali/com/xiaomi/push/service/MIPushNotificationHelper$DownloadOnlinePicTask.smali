.class Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;
.super Ljava/lang/Object;
.source "MIPushNotificationHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/MIPushNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadOnlinePicTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isSizeLimited:Z

.field private picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isSizeLimited"    # Z

    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    iput-object p2, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->context:Landroid/content/Context;

    .line 1324
    iput-object p1, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->picUrl:Ljava/lang/String;

    .line 1325
    iput-boolean p3, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->isSizeLimited:Z

    .line 1326
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, "pic":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->picUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1332
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->picUrl:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1333
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->picUrl:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->isSizeLimited:Z

    invoke-static {v2, v3, v4}, Lcom/xiaomi/push/service/NotificationIconHelper;->getIconFromUrl(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;

    move-result-object v1

    .line 1334
    .local v1, "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    if-eqz v1, :cond_1

    .line 1335
    iget-object v0, v1, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;

    .line 1348
    .end local v1    # "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    :cond_0
    :goto_0
    return-object v0

    .line 1337
    .restart local v1    # "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    :cond_1
    const-string v2, "Failed get online picture/icon resource"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1340
    .end local v1    # "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->picUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/NotificationIconHelper;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1341
    if-nez v0, :cond_0

    .line 1342
    const-string v2, "Failed get online picture/icon resource"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1346
    :cond_3
    const-string v2, "Failed get online picture/icon resource cause picUrl is empty"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
