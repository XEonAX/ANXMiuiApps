.class public Lcom/miui/gallery/search/SearchStatusLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SearchStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;,
        Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastStatus:I

.field private mStatusReportDelegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadingObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mLastStatus:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mStatusReportDelegateRef:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Integer;

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mLastStatus:I

    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/SearchStatusLoader;->deliverResult(Ljava/lang/Integer;)V

    return-void
.end method

.method public loadInBackground()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "status":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/SearchStatusLoader;->shouldReportStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const/4 v0, 0x2

    .line 80
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 59
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/SearchStatusLoader;->shouldReportStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/SearchStatusLoader;->shouldReportStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    const/4 v0, 0x3

    goto :goto_0

    .line 66
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/SearchStatusLoader;->shouldReportStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 69
    const/4 v0, 0x4

    goto :goto_0

    .line 70
    :cond_4
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/SearchStatusLoader;->shouldReportStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    const/16 v0, 0xa

    goto :goto_0

    .line 77
    :cond_5
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->loadInBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->onStopLoading()V

    .line 173
    return-void
.end method

.method protected onStartLoading()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 101
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 103
    iget v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mLastStatus:I

    if-eq v2, v6, :cond_0

    .line 104
    iget v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mLastStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/SearchStatusLoader;->deliverResult(Ljava/lang/Integer;)V

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    if-nez v2, :cond_1

    .line 108
    new-instance v2, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;-><init>(Lcom/miui/gallery/search/SearchStatusLoader;Lcom/miui/gallery/search/SearchStatusLoader$1;)V

    iput-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mUploadingObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 114
    new-instance v2, Lcom/miui/gallery/search/SearchStatusLoader$1;

    iget-object v3, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/search/SearchStatusLoader$1;-><init>(Lcom/miui/gallery/search/SearchStatusLoader;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mUploadingObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->UPLOAD_STATE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mUploadingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    :cond_2
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v2

    if-nez v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_3

    .line 125
    new-instance v2, Lcom/miui/gallery/search/SearchStatusLoader$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/search/SearchStatusLoader$2;-><init>(Lcom/miui/gallery/search/SearchStatusLoader;)V

    iput-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 135
    .local v1, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.miui.gallery.action.FIRST_SYNC_FINISHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    iget-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 141
    .end local v1    # "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->takeContentChanged()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mLastStatus:I

    if-ne v2, v6, :cond_5

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->forceLoad()V

    .line 146
    :cond_5
    return-void
.end method

.method protected onStopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->cancelLoad()Z

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iput-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mConnectivityReceiver:Lcom/miui/gallery/search/SearchStatusLoader$ConnectivityReceiver;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mUploadingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mUploadingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchStatusLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iput-object v2, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    :cond_2
    return-void
.end method

.method protected shouldReportStatus(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mStatusReportDelegateRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/search/SearchStatusLoader;->mStatusReportDelegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;

    move-object v0, v1

    .line 85
    .local v0, "delegate":Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;->shouldReportStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 84
    .end local v0    # "delegate":Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0    # "delegate":Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
