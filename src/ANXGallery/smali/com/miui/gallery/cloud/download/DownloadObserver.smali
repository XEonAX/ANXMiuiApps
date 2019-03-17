.class final Lcom/miui/gallery/cloud/download/DownloadObserver;
.super Ljava/lang/Object;
.source "DownloadObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/download/DownloadObserver$DeviceStorageStateReceiver;,
        Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;,
        Lcom/miui/gallery/cloud/download/DownloadObserver$NetworkReceiver;,
        Lcom/miui/gallery/cloud/download/DownloadObserver$CTAReceiver;
    }
.end annotation


# instance fields
.field private mCtaReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mRegisterCount:I

    .line 31
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/download/DownloadObserver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/DownloadObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/DownloadObserver;->doRegister(Landroid/content/Context;)V

    return-void
.end method

.method private doRegister(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/DownloadObserver;->ensureObservers()V

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.miui.gallery.action.CTA_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "ctaFilter":Landroid/content/IntentFilter;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "netFilter":Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v5

    invoke-virtual {p1, v4, v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "powFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "deviceFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v5

    invoke-virtual {p1, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method private ensureObservers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Lcom/miui/gallery/cloud/download/DownloadObserver$CTAReceiver;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/download/DownloadObserver$CTAReceiver;-><init>(Lcom/miui/gallery/cloud/download/DownloadObserver;Lcom/miui/gallery/cloud/download/DownloadObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    new-instance v0, Lcom/miui/gallery/cloud/download/DownloadObserver$NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/download/DownloadObserver$NetworkReceiver;-><init>(Lcom/miui/gallery/cloud/download/DownloadObserver;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    new-instance v0, Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/download/DownloadObserver$PowerChangedReceiver;-><init>(Lcom/miui/gallery/cloud/download/DownloadObserver;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    new-instance v0, Lcom/miui/gallery/cloud/download/DownloadObserver$DeviceStorageStateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/download/DownloadObserver$DeviceStorageStateReceiver;-><init>(Lcom/miui/gallery/cloud/download/DownloadObserver;Lcom/miui/gallery/cloud/download/DownloadObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method


# virtual methods
.method register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v1, "DownloadObserver"

    const-string v2, "register %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget v1, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mRegisterCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/miui/gallery/cloud/download/DownloadObserver;->mRegisterCount:I

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "application":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/download/DownloadObserver$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/cloud/download/DownloadObserver$1;-><init>(Lcom/miui/gallery/cloud/download/DownloadObserver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .end local v0    # "application":Landroid/content/Context;
    :cond_0
    return-void
.end method
