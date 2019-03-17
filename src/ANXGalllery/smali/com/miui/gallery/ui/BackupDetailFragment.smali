.class public Lcom/miui/gallery/ui/BackupDetailFragment;
.super Lcom/miui/gallery/ui/PhotoListFragmentBase;
.source "BackupDetailFragment.java"

# interfaces
.implements Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;
.implements Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy$UploadStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;,
        Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;
    }
.end annotation


# instance fields
.field private mBackUpTitle:Lcom/miui/gallery/ui/BackupTitle;

.field private mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

.field protected mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

.field private mUploadedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mUploadedItems:Ljava/util/List;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BackupDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupDetailFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mUploadedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupDetailFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    return-object v0
.end method

.method private getSyncStateDisplayOptions()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0xc

    return v0
.end method

.method private refreshOnUploadStatusChanged(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V
    .locals 2
    .param p1, "statusItem"    # Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    .prologue
    .line 164
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/BackupDetailFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/BackupDetailFragment$2;-><init>(Lcom/miui/gallery/ui/BackupDetailFragment;Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    return-object v0
.end method

.method protected getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BackupDetailFragment$3;-><init>(Lcom/miui/gallery/ui/BackupDetailFragment;)V

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f040031

    return v0
.end method

.method protected getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;-><init>(Lcom/miui/gallery/ui/BackupDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "backup_detail"

    return-object v0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    sget-object v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alias_sync_state = 3 OR alias_sync_state = 2 OR (alias_sync_state = 0 AND _id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mUploadedItems:Ljava/util/List;

    .line 142
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSupportOperationMask()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x400

    return v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    return-object v0
.end method

.method protected mayDoAdditionalWork(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "o"    # Landroid/database/Cursor;

    .prologue
    .line 189
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 232
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, -0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    .line 239
    invoke-virtual {v2}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getSecretCount()I

    move-result v7

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v9

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getCurrentSortOrder()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/gallery/ui/BackupDetailFragment;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/BackupDetailFragment;->mAlbumName:Ljava/lang/String;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSupportOperationMask()I

    move-result v15

    move-object/from16 v3, p0

    .line 237
    invoke-static/range {v3 .. v15}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "click_micro_thumb"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 111
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;->addUploadStatusChangedListener(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy$UploadStatusChangedListener;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onDetach()V

    .line 118
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;->removeUploadStatusChangedListener(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy$UploadStatusChangedListener;)V

    .line 119
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1200df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    .local v0, "barContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040034

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/BackupTitle;

    iput-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackUpTitle:Lcom/miui/gallery/ui/BackupTitle;

    .line 76
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackUpTitle:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    new-instance v2, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    sget-object v4, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_ALWAYS:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSyncStateDisplayOptions()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V

    iput-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    .line 78
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    sget-object v3, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 79
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    sget-object v3, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackupDetailAdapter:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    new-instance v2, Lcom/miui/gallery/ui/BackupDetailFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/ui/BackupDetailFragment$1;-><init>(Lcom/miui/gallery/ui/BackupDetailFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onPause()V

    .line 99
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->unregisterSyncStateObserver(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onResume()V

    .line 93
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->registerSyncStateObserver(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V

    .line 94
    return-void
.end method

.method public onSyncStateChanged(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 1
    .param p1, "newValue"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment;->mBackUpTitle:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/BackupTitle;->refreshSyncState(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 105
    return-void
.end method

.method public onUploadStatusChanged(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V
    .locals 2
    .param p1, "statusItem"    # Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    .prologue
    .line 156
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mStatus:Lcom/miui/gallery/sdk/SyncStatus;

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->getItemType()Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->getItemType()Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->SHARER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupDetailFragment;->refreshOnUploadStatusChanged(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V

    .line 160
    :cond_1
    return-void
.end method
