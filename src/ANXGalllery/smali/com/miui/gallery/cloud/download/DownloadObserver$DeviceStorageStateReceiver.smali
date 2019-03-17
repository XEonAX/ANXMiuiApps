.class Lcom/miui/gallery/cloud/download/DownloadObserver$DeviceStorageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/download/DownloadObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStorageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/download/DownloadObserver;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/gallery/cloud/download/DownloadObserver$DeviceStorageStateReceiver;->this$0:Lcom/miui/gallery/cloud/download/DownloadObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/download/DownloadObserver;Lcom/miui/gallery/cloud/download/DownloadObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/download/DownloadObserver;
    .param p2, "x1"    # Lcom/miui/gallery/cloud/download/DownloadObserver$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/DownloadObserver$DeviceStorageStateReceiver;-><init>(Lcom/miui/gallery/cloud/download/DownloadObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DownloadObserver"

    const-string v2, "DeviceStorageStateReceiver %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setDeviceStorageLow(Z)V

    .line 182
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onConditionChanged(Landroid/content/Context;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setDeviceStorageLow(Z)V

    .line 185
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onConditionChanged(Landroid/content/Context;)V

    goto :goto_0
.end method
