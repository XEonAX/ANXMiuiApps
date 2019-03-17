.class public Lcom/miui/gallery/ui/AIAlbumDisplayHelper;
.super Ljava/lang/Object;
.source "AIAlbumDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;,
        Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;,
        Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;


# instance fields
.field private mAIAlbumSwitchObserver:Landroid/content/BroadcastReceiver;

.field private mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

.field private mSearchCloudControlStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

.field private mStatusValueCache:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mStatusValueCache:Landroid/util/SparseBooleanArray;

    .line 134
    new-instance v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$1;-><init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mSearchCloudControlStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .line 144
    new-instance v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$2;-><init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mAIAlbumSwitchObserver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->requeryStatusAndNotifyStatusChange()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->sInstance:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->sInstance:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->sInstance:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->sInstance:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private requeryStatusAndNotifyStatusChange()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 102
    iget-object v5, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mStatusValueCache:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_2

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 103
    .local v1, "changedStatus":Landroid/util/SparseBooleanArray;
    :goto_0
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mStatusValueCache:Landroid/util/SparseBooleanArray;

    .line 105
    invoke-static {v3}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchBarOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 107
    .local v2, "searchBarStatus":Z
    :goto_1
    invoke-direct {p0, v1, v3, v2}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->updateNewValue(Landroid/util/SparseBooleanArray;IZ)V

    .line 109
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->useNewAIAlbumSwitch()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v0, v3

    .line 111
    .local v0, "aiAlbumStatus":Z
    :goto_2
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3, v0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->updateNewValue(Landroid/util/SparseBooleanArray;IZ)V

    .line 113
    iget-object v3, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;->onUpdateStatus(Landroid/util/SparseBooleanArray;)V

    .line 116
    :cond_1
    return-void

    .line 102
    .end local v0    # "aiAlbumStatus":Z
    .end local v1    # "changedStatus":Landroid/util/SparseBooleanArray;
    .end local v2    # "searchBarStatus":Z
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mStatusValueCache:Landroid/util/SparseBooleanArray;

    goto :goto_0

    .restart local v1    # "changedStatus":Landroid/util/SparseBooleanArray;
    :cond_3
    move v2, v4

    .line 106
    goto :goto_1

    .restart local v2    # "searchBarStatus":Z
    :cond_4
    move v0, v4

    .line 110
    goto :goto_2
.end method

.method private updateNewValue(Landroid/util/SparseBooleanArray;IZ)V
    .locals 1
    .param p1, "changedStatus"    # Landroid/util/SparseBooleanArray;
    .param p2, "key"    # I
    .param p3, "newValue"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mStatusValueCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 120
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eq v0, p3, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method


# virtual methods
.method public registerAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)Landroid/util/SparseBooleanArray;
    .locals 5
    .param p1, "observer"    # Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;-><init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;Lcom/miui/gallery/ui/AIAlbumDisplayHelper$1;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->requeryStatusAndNotifyStatusChange()V

    .line 74
    iget-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;->countObservers()I

    move-result v1

    .line 75
    .local v1, "oldObserverCount":I
    iget-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;->addObserver(Ljava/util/Observer;)V

    .line 77
    if-gtz v1, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;->countObservers()I

    move-result v2

    if-lez v2, :cond_1

    .line 78
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v2

    const-string v3, "search"

    iget-object v4, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mSearchCloudControlStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->registerStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mAIAlbumSwitchObserver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mStatusValueCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v2

    return-object v2
.end method

.method public unregisterAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mObservable:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$AIAlbumDisplayStatusObservable;->countObservers()I

    move-result v0

    if-gtz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "search"

    iget-object v2, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mSearchCloudControlStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->unregisterStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)V

    .line 95
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->mAIAlbumSwitchObserver:Landroid/content/BroadcastReceiver;

    .line 96
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_0
    return-void
.end method
