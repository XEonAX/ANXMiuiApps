.class final Lcom/miui/gallery/ui/SyncBar$SyncManager;
.super Lcom/miui/gallery/ui/SyncBar$ChildManager;
.source "SyncBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SyncBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncManager"
.end annotation


# static fields
.field private static sMemoryShowOnceStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersistentShowOnceStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static sWarnStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field private mDispatchTask:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sMemoryShowOnceStatus:Ljava/util/List;

    .line 207
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sMemoryShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING_METADATA:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sMemoryShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sMemoryShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CTA_NOT_ALLOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    .line 213
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_ACCOUNT:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sWarnStatus:Ljava/util/List;

    .line 221
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sWarnStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sWarnStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CTA_NOT_ALLOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sWarnStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sWarnStatus:Ljava/util/List;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/SyncBar;I)V
    .locals 0
    .param p1, "bar"    # Lcom/miui/gallery/ui/SyncBar;
    .param p2, "key"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/SyncBar$ChildManager;-><init>(Lcom/miui/gallery/ui/SyncBar;I)V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SyncBar$SyncManager;Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SyncBar$SyncManager;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->canAutoOpenDrawer(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SyncBar$SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SyncBar$SyncManager;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needRequestSync()Z

    move-result v0

    return v0
.end method

.method private canAutoOpenDrawer(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 3
    .param p1, "syncStatus"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->isPermanent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    sget-object v2, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sMemoryShowOnceStatus:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget-object v2, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 357
    :cond_2
    sget-object v2, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 358
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->hasShowSyncStatusPersistent(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 360
    goto :goto_0
.end method

.method private getTitleDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "warning"    # Z

    .prologue
    .line 377
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasShowSyncStatusPersistent()Z
    .locals 3

    .prologue
    .line 328
    sget-object v1, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 329
    .local v0, "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->hasShowedSyncStatusTip(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const/4 v1, 0x1

    .line 333
    .end local v0    # "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasShowSyncStatusPersistent(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 2
    .param p1, "status"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 343
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->hasShowedSyncStatusTip(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v0

    .line 344
    .local v0, "hasShowed":Z
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->setHasShowedSyncStatusTip(Lcom/miui/gallery/cloud/syncstate/SyncStatus;Z)V

    .line 347
    :cond_0
    return v0
.end method

.method private needRequestSync()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 232
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 233
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 234
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 235
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncState()Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    move-result-object v3

    .line 236
    .local v3, "info":Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v5

    .line 237
    .local v5, "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 238
    .local v4, "isPendingDispatch":Z
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getDirtyCount()[I

    move-result-object v2

    .line 240
    .local v2, "dirtyCount":[I
    aget v7, v2, v6

    aget v8, v2, v1

    add-int/2addr v7, v8

    if-lez v7, :cond_0

    sget-object v7, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v5, v7, :cond_0

    if-nez v4, :cond_0

    .line 242
    const-string v6, "SyncBar"

    const-string v7, "has dirty data & no pending request"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v2    # "dirtyCount":[I
    .end local v3    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .end local v4    # "isPendingDispatch":Z
    .end local v5    # "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    :goto_0
    return v1

    .line 246
    .restart local v2    # "dirtyCount":[I
    .restart local v3    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .restart local v4    # "isPendingDispatch":Z
    .restart local v5    # "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    :cond_0
    sget-object v7, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v5, v7, :cond_2

    if-eqz v4, :cond_2

    .line 247
    const-string v7, "SyncBar"

    const-string v8, "no dirty data & has pending request"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 253
    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 254
    .local v1, "cancelSuccess":Z
    :goto_1
    const-string v6, "SyncBar"

    const-string v7, "cancel pending result %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "cancelSuccess":Z
    :cond_1
    move v1, v6

    .line 253
    goto :goto_1

    .end local v2    # "dirtyCount":[I
    .end local v3    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .end local v4    # "isPendingDispatch":Z
    .end local v5    # "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    :cond_2
    move v1, v6

    .line 259
    goto :goto_0
.end method

.method private needShowSyncBar(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 1
    .param p1, "syncStatus"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 368
    sget-boolean v0, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_ACCOUNT:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne p1, v0, :cond_1

    .line 370
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isGuideCloudInternational()Z

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needShowWarning(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 1
    .param p1, "status"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 364
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sWarnStatus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSyncBar(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 19
    .param p1, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 383
    .local v3, "desc":Ljava/lang/String;
    const/4 v5, 0x1

    .line 384
    .local v5, "canClick":Z
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 385
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getDirtyCount()[I

    move-result-object v8

    .line 386
    .local v8, "dirtyCount":[I
    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v4, 0x1

    aget v4, v8, v4

    add-int v9, v1, v4

    .line 387
    .local v9, "dirtys":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v15

    .line 388
    .local v15, "syncStatus":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    sget-object v1, Lcom/miui/gallery/ui/SyncBar$1;->$SwitchMap$com$miui$gallery$cloud$syncstate$SyncStatus:[I

    invoke-virtual {v15}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 440
    if-lez v9, :cond_9

    .line 441
    const v1, 0x7f0e0041

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v6

    invoke-virtual {v12, v1, v9, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->canAutoOpenDrawer(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v7

    .line 450
    .local v7, "autoShow":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShowWarning(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v14

    .line 451
    .local v14, "showWarning":Z
    new-instance v1, Lcom/miui/gallery/ui/SyncBar$PanelData;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getTitleDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v5, :cond_b

    move-object/from16 v6, p0

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/ui/SyncBar$PanelData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;Z)Z

    move-result v13

    .line 452
    .local v13, "show":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShowSyncBar(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 453
    if-eqz v13, :cond_1

    .line 454
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 455
    if-eqz v7, :cond_1

    .line 456
    invoke-virtual {v15}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->statSyncBarAutoShowEvent(Ljava/lang/String;)V

    .line 462
    :cond_1
    :goto_2
    const-string v1, "SyncBar"

    const-string v4, "refresh sync bar: %s, showBar: %s"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v4, v6, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    return-void

    .line 390
    .end local v7    # "autoShow":Z
    .end local v13    # "show":Z
    .end local v14    # "showWarning":Z
    :pswitch_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez v9, :cond_5

    .line 391
    :cond_2
    const v1, 0x7f0c04cf

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    :goto_3
    :pswitch_1
    if-nez v2, :cond_3

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v1

    sget-object v4, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne v1, v4, :cond_6

    .line 398
    const v1, 0x7f0c04d2

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    :cond_3
    :goto_4
    if-lez v9, :cond_4

    .line 404
    const-string v1, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->hasShowSyncStatusPersistent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->removeSyncStatusPersistent()V

    .line 409
    :cond_4
    if-lez v9, :cond_7

    const/4 v5, 0x1

    .line 410
    :goto_5
    goto/16 :goto_0

    .line 393
    :cond_5
    const v1, 0x7f0c04cc

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 400
    :cond_6
    const v1, 0x7f0c04d4

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 409
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 412
    :pswitch_2
    const v1, 0x7f0c04d3

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncedCount()[I

    move-result-object v11

    .line 414
    .local v11, "hasSyncedCount":[I
    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v4, 0x1

    aget v4, v11, v4

    add-int v10, v1, v4

    .line 415
    .local v10, "hasSynced":I
    if-lez v10, :cond_8

    .line 416
    const-string v1, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 418
    :cond_8
    const/4 v5, 0x0

    .line 419
    goto/16 :goto_0

    .line 421
    .end local v10    # "hasSynced":I
    .end local v11    # "hasSyncedCount":[I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncedCount()[I

    move-result-object v16

    .line 422
    .local v16, "syncedCount":[I
    const/4 v1, 0x0

    aget v1, v16, v1

    const/4 v4, 0x1

    aget v4, v16, v4

    add-int v17, v1, v4

    .line 423
    .local v17, "synceds":I
    const v1, 0x7f0c04d1

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 424
    if-lez v17, :cond_0

    .line 425
    const-string v1, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 431
    .end local v16    # "syncedCount":[I
    .end local v17    # "synceds":I
    :pswitch_4
    const v1, 0x7f0c04ce

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    goto/16 :goto_0

    .line 434
    :pswitch_5
    const v1, 0x7f0c04cd

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    goto/16 :goto_0

    .line 437
    :pswitch_6
    const v1, 0x7f0e0042

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v6

    invoke-virtual {v12, v1, v9, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 438
    goto/16 :goto_0

    .line 442
    :cond_9
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v1

    if-nez v1, :cond_a

    .line 443
    const v1, 0x7f0c04cc

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 445
    :cond_a
    const v1, 0x7f0c04d0

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 451
    .restart local v7    # "autoShow":Z
    .restart local v14    # "showWarning":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 460
    .restart local v13    # "show":Z
    :cond_c
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_2

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private removeSyncStatusPersistent()V
    .locals 3

    .prologue
    .line 337
    sget-object v1, Lcom/miui/gallery/ui/SyncBar$SyncManager;->sPersistentShowOnceStatus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 338
    .local v0, "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->setHasShowedSyncStatusTip(Lcom/miui/gallery/cloud/syncstate/SyncStatus;Z)V

    goto :goto_0

    .line 340
    .end local v0    # "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    :cond_0
    return-void
.end method

.method private statSyncBarAutoShowEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 476
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "sync_bar_show_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "event":Ljava/lang/String;
    const-string v1, "home_sync_bar"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method private statSyncBarClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "sync_bar_click_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "event":Ljava/lang/String;
    const-string v1, "home_sync_bar"

    invoke-static {v1, v0, p2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    return-void
.end method


# virtual methods
.method public getCurSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncState()Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    return-object v0
.end method

.method public needShow()Z
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncState()Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->needShowSyncBar(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v0

    return v0
.end method

.method public onAppFocused()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/SyncBar$SyncManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager$1;-><init>(Lcom/miui/gallery/ui/SyncBar$SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar$SyncManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 306
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncState()Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v2

    .line 307
    .local v2, "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/miui/gallery/ui/SyncBar$1;->$SwitchMap$com$miui$gallery$cloud$syncstate$SyncStatus:[I

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 321
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/gallery/activity/BackupDetailActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 324
    :goto_0
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->statSyncBarClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 325
    return-void

    .line 310
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/gallery/activity/CloudSpaceStatusActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    :pswitch_1
    const-string v3, "permanent"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->isPermanent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v3, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->TOPBAR:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-static {v0, v3}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;)V

    goto :goto_0

    .line 318
    :pswitch_2
    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->gotoTurnOnSyncSwitch(Landroid/content/Context;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->unregisterSyncStateObserver(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V

    .line 271
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->registerSyncStateObserver(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V

    .line 266
    return-void
.end method

.method public onSyncStateChanged(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p1, "newValue"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SyncBar$SyncManager;->refreshSyncBar(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 301
    return-void
.end method
