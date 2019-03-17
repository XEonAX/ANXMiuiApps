.class Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
.super Ljava/lang/Object;
.source "SyncStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$FirstPulledReceiver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncContentObserver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$UploadingObserver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncRequestDispatchedReceiver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$DeviceStorageStateReceiver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;,
        Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$CTAReceiver;
    }
.end annotation


# instance fields
.field private mCtaReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mFirstPulledReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaObserver:Landroid/database/ContentObserver;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterCount:I

.field private mSyncCommandDispatchedReceiver:Landroid/content/BroadcastReceiver;

.field private mSyncOnlyWifiObeserver:Landroid/database/ContentObserver;

.field private mSyncSettingObserver:Ljava/lang/Object;

.field private mUploadingObserver:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mRegisterCount:I

    .line 45
    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->doRegister(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->doUnregister(Landroid/content/Context;)V

    return-void
.end method

.method private doRegister(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->ensureObservers()V

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->initState(Landroid/content/Context;)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "com.miui.gallery.action.CTA_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "ctaFilter":Landroid/content/IntentFilter;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "netFilter":Landroid/content/IntentFilter;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v6, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v7

    invoke-virtual {p1, v6, v3, v11, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "powFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v7

    invoke-virtual {p1, v6, v4, v11, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "deviceFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v7

    invoke-virtual {p1, v6, v1, v11, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.miui.gallery.SYNC_COMMAND_DISPATCHED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, "syncRequestFilter":Landroid/content/IntentFilter;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncCommandDispatchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->UPLOAD_STATE_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mUploadingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mMediaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mMediaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SYNC_SETTINGS_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncOnlyWifiObeserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    new-instance v6, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;

    invoke-direct {v6, p0, v11}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V

    invoke-static {v10, v6}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncSettingObserver:Ljava/lang/Object;

    .line 109
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "com.miui.gallery.action.FIRST_SYNC_FINISHED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "firstPulledReceiver":Landroid/content/IntentFilter;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mFirstPulledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 111
    return-void
.end method

.method private doUnregister(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncCommandDispatchedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 145
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncCommandDispatchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncCommandDispatchedReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mUploadingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mUploadingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mUploadingObserver:Landroid/database/ContentObserver;

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mMediaObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mMediaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mMediaObserver:Landroid/database/ContentObserver;

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncOnlyWifiObeserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_7

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncOnlyWifiObeserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncOnlyWifiObeserver:Landroid/database/ContentObserver;

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncSettingObserver:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncSettingObserver:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 162
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncSettingObserver:Ljava/lang/Object;

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mFirstPulledReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 165
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mFirstPulledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    iput-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mFirstPulledReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    :cond_9
    return-void
.end method

.method private ensureObservers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$CTAReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$CTAReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mCtaReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$NetworkReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$PowerChangedReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mPowerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$DeviceStorageStateReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$DeviceStorageStateReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mDeviceStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncRequestDispatchedReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncRequestDispatchedReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncCommandDispatchedReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$UploadingObserver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$UploadingObserver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mUploadingObserver:Landroid/database/ContentObserver;

    .line 55
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncContentObserver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncContentObserver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mMediaObserver:Landroid/database/ContentObserver;

    .line 56
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncContentObserver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncContentObserver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncOnlyWifiObeserver:Landroid/database/ContentObserver;

    .line 57
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$SyncSettingObserver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mSyncSettingObserver:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$FirstPulledReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$FirstPulledReceiver;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mFirstPulledReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    :cond_0
    return-void
.end method

.method private initState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setPowerCanSync(Z)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v1, "SyncStateObserver"

    const-string v2, "register %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mRegisterCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mRegisterCount:I

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "application":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$1;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .end local v0    # "application":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method unregister(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const-string v1, "SyncStateObserver"

    const-string/jumbo v2, "unregister %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mRegisterCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->mRegisterCount:I

    if-gtz v1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    .local v0, "application":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver$2;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .end local v0    # "application":Landroid/content/Context;
    :cond_0
    return-void
.end method
