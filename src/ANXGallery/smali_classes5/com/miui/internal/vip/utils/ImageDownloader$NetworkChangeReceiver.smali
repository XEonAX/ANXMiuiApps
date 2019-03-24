.class Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChangeReceiver"
.end annotation


# static fields
.field static final sFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->sFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startWaitingDownloadTask()V
    .locals 3

    .line 329
    sget-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    .line 330
    .local v1, "task":Lcom/miui/internal/vip/utils/ImageDownloadTask;
    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->isWaitNetwork()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-static {v1}, Lcom/miui/internal/vip/utils/ImageDownloader;->startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z

    .line 333
    .end local v1    # "task":Lcom/miui/internal/vip/utils/ImageDownloadTask;
    :cond_0
    goto :goto_0

    .line 334
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 320
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 321
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->startWaitingDownloadTask()V

    .line 323
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->stopReceiver()V

    .line 326
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    return-void
.end method
