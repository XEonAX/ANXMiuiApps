.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;
.super Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLockRef"
.end annotation


# instance fields
.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .line 100
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;-><init>(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onAcquire()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 107
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 109
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 110
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 118
    :cond_0
    return-void
.end method
