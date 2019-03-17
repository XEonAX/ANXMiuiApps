.class public abstract Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.super Lcom/miui/gallery/ui/PhotoListFragmentBase;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;,
        Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;
    }
.end annotation


# static fields
.field private static final SELECTION_ONLY_LOCAL:Ljava/lang/String;


# instance fields
.field protected mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field protected mAlbumLocalPath:Ljava/lang/String;

.field private mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

.field private mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

.field protected mDailyAlbumDate:I

.field private mDialog:Landroid/app/Dialog;

.field private mEnableAutoUploadPending:Z

.field protected mIsDailyAlbum:Z

.field protected mIsFavoritesAlbum:Z

.field protected mIsLocalAlbum:Z

.field protected mIsOtherShareAlbum:Z

.field protected mIsPanoAlbum:Z

.field protected mIsScreenshotAlbum:Z

.field private mIsShareAlbum:Z

.field protected mScreenshotAppName:Ljava/lang/String;

.field private mSharePending:Z

.field private mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_MEDIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->SELECTION_ONLY_LOCAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;-><init>()V

    .line 625
    new-instance v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .line 888
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->recordCopyMoveAction(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mEnableAutoUploadPending:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mSharePending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->canAddSecret()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Landroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doDelete(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onSend(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private canAddSecret()Z
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVideoAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOthersShareAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAddPhotos([J)V
    .locals 8
    .param p1, "ids"    # [J

    .prologue
    const/4 v5, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOthersShareAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const-string v1, "AlbumDetailFragmentBase"

    const-string v2, "Is other shared album, do copy operation for default"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    const/4 v7, 0x0

    move-object v4, p1

    move v6, v5

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V

    .line 366
    invoke-direct {p0, v5}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->recordCopyMoveAction(Z)V

    .line 392
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/CopyOrMoveDialog;

    invoke-direct {v0}, Lcom/miui/gallery/ui/CopyOrMoveDialog;-><init>()V

    .line 369
    .local v0, "dialog":Lcom/miui/gallery/ui/CopyOrMoveDialog;
    new-instance v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;[J)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->setOnOperationSelectedListener(Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CopyOrMoveDialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doDelete(Landroid/view/ActionMode;)V
    .locals 17
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 790
    const/4 v11, 0x0

    .line 791
    .local v11, "ids":[J
    const/4 v2, 0x0

    .line 793
    .local v2, "containsOthersShareMedias":Z
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOthersShareAlbum()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 796
    const/4 v12, 0x0

    .line 797
    .local v12, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v15

    .line 798
    .local v15, "positions":Landroid/util/SparseBooleanArray;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 799
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 800
    invoke-virtual {v15, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    invoke-virtual {v15, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 802
    .local v14, "position":I
    if-nez v12, :cond_0

    .line 803
    new-instance v12, Ljava/util/HashMap;

    .end local v12    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 805
    .restart local v12    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getMediaIdByPosition(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getCreatorIdByPosition(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .end local v14    # "position":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 810
    .end local v13    # "i":I
    :cond_2
    if-eqz v12, :cond_3

    .line 811
    invoke-static {v12}, Lcom/miui/gallery/provider/ShareMediaManager;->getOwnerSharedImageIds(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v16

    .line 812
    .local v16, "selectedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 813
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    new-array v11, v3, [J

    .line 814
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_3

    .line 815
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v11, v13

    .line 814
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 819
    .end local v13    # "i":I
    .end local v16    # "selectedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v11, :cond_4

    array-length v3, v11

    .line 820
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 826
    .end local v12    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v15    # "positions":Landroid/util/SparseBooleanArray;
    :goto_2
    if-eqz v11, :cond_7

    array-length v3, v11

    if-lez v3, :cond_7

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v4, "AlbumDetailFragmentBaseDeleteMediaDialogFragment"

    new-instance v5, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$9;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Landroid/view/ActionMode;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumName:Ljava/lang/String;

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getDupType()I

    move-result v9

    const/16 v10, 0x17

    .line 827
    invoke-static/range {v3 .. v11}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V

    .line 851
    :goto_3
    return-void

    .line 820
    .restart local v12    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v15    # "positions":Landroid/util/SparseBooleanArray;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 823
    .end local v12    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v15    # "positions":Landroid/util/SparseBooleanArray;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v11

    goto :goto_2

    .line 846
    :cond_7
    if-eqz v2, :cond_8

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0159

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 849
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_3
.end method

.method private doShare()V
    .locals 6

    .prologue
    .line 402
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v3, Lcom/miui/gallery/share/Path;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    .line 403
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v0

    :goto_0
    iget-boolean v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    .line 404
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isBabyAlbum()Z

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/miui/gallery/share/Path;-><init>(JZZ)V

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 402
    :goto_1
    invoke-static {v2, v3, v0}, Lcom/miui/gallery/share/UIHelper;->showAlbumShareInfo(Landroid/app/Activity;Lcom/miui/gallery/share/Path;I)V

    .line 406
    return-void

    .line 403
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    goto :goto_0

    .line 404
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isOnlyShowLocal()Z
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    return v0
.end method

.method private onSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 899
    const v9, 0x7fffffff

    .line 900
    .local v9, "initPos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v23

    .line 901
    .local v23, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 902
    .local v22, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 903
    .local v19, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 904
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v20

    .line 905
    .local v20, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemKey(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    move/from16 v0, v20

    if-ge v0, v9, :cond_0

    .line 909
    move/from16 v9, v20

    .line 903
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    .end local v20    # "key":I
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 948
    :goto_1
    return-void

    .line 918
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 919
    .local v16, "selectedPos":[I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v15, v4, [J

    .line 920
    .local v15, "selectedId":[J
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 921
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v16, v2

    .line 922
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v15, v2

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 925
    :cond_3
    const v4, 0x7fffffff

    if-ne v9, v4, :cond_4

    .line 926
    const/4 v9, 0x0

    .line 928
    :cond_4
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemKey(I)J

    move-result-wide v4

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v6

    .line 931
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v10

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemSecretKey(I)[B

    move-result-object v11

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getFileLength(I)J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 938
    .local v3, "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getSelection()Ljava/lang/String;

    move-result-object v11

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v12

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getCurrentSortOrder()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object v14, v3

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    .line 937
    invoke-static/range {v7 .. v18}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[ILjava/lang/String;Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->stopActionMode()V

    .line 945
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 946
    .local v21, "map":Ljava/util/Map;
    const-string v4, "count"

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v4, "album_detail"

    const-string v5, "send"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method private pickPhotos()V
    .locals 3

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v2, Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pick-upper-bound"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v1, "pick-need-id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 359
    return-void
.end method

.method private recordCopyMoveAction(Z)V
    .locals 3
    .param p1, "deleteOrigin"    # Z

    .prologue
    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "move"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "from"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "organize_photos"

    const-string v2, "move_or_copy"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 399
    return-void
.end method

.method private scanAlbumFolderIfNeeded()V
    .locals 6

    .prologue
    .line 136
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVirtualAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumLocalPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumLocalPath:Ljava/lang/String;

    .line 138
    .local v0, "scanPath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;

    iget-wide v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-direct {v2, v0, v4, v5}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 140
    .end local v0    # "scanPath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showAlbumShareInfo()V
    .locals 4

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->needEnableAutoUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const v0, 0x7f0c0076

    const v1, 0x7f0c0075

    const v2, 0x104000a

    new-instance v3, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$2;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->showDialog(IIILandroid/content/DialogInterface$OnClickListener;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doShare()V

    goto :goto_0
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f0b01ff

    const v3, 0x7f0b0200

    .line 595
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 596
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsScreenshotAlbum:Z

    if-eqz v1, :cond_0

    .line 597
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbScreenshotColumnsLand:I

    .line 598
    .local v0, "columns":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 599
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 618
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 619
    return-void

    .line 600
    .end local v0    # "columns":I
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsPanoAlbum:Z

    if-eqz v1, :cond_1

    .line 601
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 602
    .restart local v0    # "columns":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 604
    .end local v0    # "columns":I
    :cond_1
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    .restart local v0    # "columns":I
    goto :goto_0

    .line 607
    .end local v0    # "columns":I
    :cond_2
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsScreenshotAlbum:Z

    if-eqz v1, :cond_3

    .line 608
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbScreenshotColumnsPortrait:I

    .line 609
    .restart local v0    # "columns":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 610
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    goto :goto_0

    .line 611
    .end local v0    # "columns":I
    :cond_3
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsPanoAlbum:Z

    if-eqz v1, :cond_4

    .line 612
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 613
    .restart local v0    # "columns":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 615
    .end local v0    # "columns":I
    :cond_4
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    .restart local v0    # "columns":I
    goto :goto_0
.end method


# virtual methods
.method protected consumePendingEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mEnableAutoUploadPending:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doChangeAutoUpload(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mSharePending:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doShare()V

    .line 209
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mEnableAutoUploadPending:Z

    .line 210
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mSharePending:Z

    .line 211
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0c04cb

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0c0583

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected disableAutoUpload()V
    .locals 7

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0160

    const v2, 0x7f0c0161

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$7;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$7;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 530
    return-void
.end method

.method protected doChangeAutoUpload(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsShareAlbum:Z

    if-eqz v3, :cond_1

    .line 534
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v3, 0x7f0c0490

    invoke-static {v2, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 553
    :cond_0
    :goto_0
    return v1

    .line 538
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 539
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 540
    if-eqz p1, :cond_2

    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 541
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, v2}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->updateGalleryCloudSyncableState()V

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-static {v1, v4, v5, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeAutoUpload(Landroid/content/Context;JZ)V

    .line 548
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz p1, :cond_3

    const v1, 0x7f0c0079

    :goto_1
    invoke-static {v3, v1}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;I)V

    move v1, v2

    .line 550
    goto :goto_0

    .line 548
    :cond_3
    const v1, 0x7f0c0078

    goto :goto_1
.end method

.method protected doChangeShowInOtherAlbums(Z)V
    .locals 4
    .param p1, "showInOtherAlbums"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeShowInOtherAlbums(Landroid/content/Context;JZ)V

    .line 500
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0499

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;I)V

    .line 502
    return-void

    .line 500
    :cond_0
    const v0, 0x7f0c0498

    goto :goto_0
.end method

.method protected enableAutoUpload()V
    .locals 7

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0182

    const v2, 0x7f0c0183

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$4;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$4;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 464
    return-void
.end method

.method protected abstract getCreatorIdByPosition(I)Ljava/lang/String;
.end method

.method protected getDupType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVideoAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isPanoAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isDailyAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isFavoritesAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 781
    :cond_0
    const/4 v0, 0x3

    .line 785
    :cond_1
    :goto_0
    return v0

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected abstract getMediaIdByPosition(I)J
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOthersShareAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 284
    :goto_0
    return-object v1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVideoAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    const-string v1, "serverType = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "alias_hidden = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOnlyShowLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isSecretAlbum()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    sget-object v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->SELECTION_ONLY_LOCAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isPanoAlbum()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    const-string/jumbo v1, "title LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "alias_hidden = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isDailyAlbum()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    const-string v1, "alias_create_date = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "alias_hidden = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "localGroupId != ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isFavoritesAlbum()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    const-string v1, "alias_is_favorite = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "alias_hidden = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "localGroupId != ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :cond_5
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsScreenshotAlbum:Z

    if-eqz v1, :cond_7

    .line 270
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mScreenshotAppName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 271
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "title"

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Screenshot"

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_6
    const-string v1, "localGroupId = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 277
    :cond_7
    const-string v1, "localGroupId = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, -0x3e8

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVideoAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 318
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 337
    :goto_0
    return-object v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "PANO_.*"

    aput-object v1, v0, v4

    .line 321
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOthersShareAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isDailyAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    new-array v0, v1, [Ljava/lang/String;

    iget v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDailyAlbumDate:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 326
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 327
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isFavoritesAlbum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    new-array v0, v1, [Ljava/lang/String;

    .line 330
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 331
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 332
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 334
    :cond_4
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsScreenshotAlbum:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mScreenshotAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 335
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mScreenshotAppName:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 337
    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;->NONE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;
    .locals 4
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isOthersShareAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 296
    :cond_1
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    .line 299
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVirtualAlbum()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 303
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isSecretAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isDailyAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "generate_headers"

    const/4 v3, 0x1

    .line 307
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public isDailyAlbum()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsDailyAlbum:Z

    return v0
.end method

.method protected isFavoritesAlbum()Z
    .locals 4

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    const-wide/32 v2, 0x7ffffffa

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOthersShareAlbum()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    return v0
.end method

.method protected isPanoAlbum()Z
    .locals 4

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    const-wide/32 v2, 0x7ffffffd

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSecretAlbum()Z
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVideoAlbum()Z
    .locals 4

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVirtualAlbum()Z
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVideoAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isPanoAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isSecretAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isDailyAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isFavoritesAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveToOtherAlbums()V
    .locals 4

    .prologue
    .line 505
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f0c0315

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02b3

    .line 507
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$6;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$6;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    .line 508
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 514
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 516
    return-void
.end method

.method protected abstract needEnableAutoUpload()Z
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 558
    packed-switch p1, :pswitch_data_0

    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 560
    :pswitch_0
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 561
    const-string v3, "pick-result-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 563
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 568
    .local v2, "ids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 569
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doAddPhotos([J)V

    goto :goto_0

    .line 576
    .end local v0    # "i":I
    .end local v1    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "ids":[J
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->finish()V

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAppFocused()V
    .locals 2

    .prologue
    .line 855
    const-string v0, "AlbumDetailFragmentBase"

    const-string v1, "onAppFocused"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->scanAlbumFolderIfNeeded()V

    .line 857
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 587
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 588
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 589
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 590
    .local v0, "firstVisibleItemPosition":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 591
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "album_local_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumLocalPath:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;-><init>(Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->onDestroy()V

    .line 185
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 190
    :cond_0
    return-void
.end method

.method protected onEnableAutoUpload(Z)V
    .locals 5
    .param p1, "sharePending"    # Z

    .prologue
    const/4 v4, 0x1

    .line 467
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->AUTOBACKUP:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 470
    const-string v1, "autobackup_album_id"

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 471
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 472
    iput-boolean v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mEnableAutoUploadPending:Z

    .line 473
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mSharePending:Z

    .line 496
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    const v1, 0x7f0c04fb

    const v2, 0x7f0c04f9

    const v3, 0x7f0c04fa

    new-instance v4, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$5;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)V

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->showDialog(IIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doChangeAutoUpload(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    if-eqz p1, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doShare()V

    goto :goto_0
.end method

.method protected abstract onEnterActionMode()V
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "album_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumName:Ljava/lang/String;

    .line 103
    const-string v2, "album_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    .line 104
    const-string v2, "other_share_album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    .line 105
    const-string v2, "is_local_album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsLocalAlbum:Z

    .line 106
    const-string v2, "screenshot_album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsScreenshotAlbum:Z

    .line 107
    const-string v2, "screenshot_app_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mScreenshotAppName:Ljava/lang/String;

    .line 108
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsOtherShareAlbum:Z

    if-nez v2, :cond_0

    const-string v2, "owner_share_album"

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsShareAlbum:Z

    .line 110
    const-string v2, "pano_album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsPanoAlbum:Z

    .line 111
    const-string v2, "daily_album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsDailyAlbum:Z

    .line 112
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsDailyAlbum:Z

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "daily_album_date"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDailyAlbumDate:I

    .line 114
    iget v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDailyAlbumDate:I

    if-gtz v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->finish()V

    .line 118
    :cond_1
    const-string v2, "favorites_album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsFavoritesAlbum:Z

    .line 120
    new-instance v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-direct {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setEmptyView(Landroid/view/View;)V

    .line 122
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsScreenshotAlbum:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mIsPanoAlbum:Z

    if-eqz v2, :cond_3

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 124
    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->disableScaleImageViewAniWhenInActionMode()V

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mEmptyView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setChoiceMode(I)V

    .line 130
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 132
    return-object v1

    :cond_4
    move v2, v3

    .line 109
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 350
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 344
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->pickPhotos()V

    goto :goto_0

    .line 347
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->showAlbumShareInfo()V

    goto :goto_0

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1202e5 -> :sswitch_0
        0x7f1202ec -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    .line 180
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->consumePendingEvent()V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$VoiceAssistantReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onStart()V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->onStart()V

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onStop()V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->onStop()V

    .line 159
    return-void
.end method

.method protected removeFromOtherAlbums()V
    .locals 4

    .prologue
    .line 439
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f0c031b

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c040c

    .line 441
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$3;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V

    .line 442
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 448
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 450
    return-void
.end method

.method protected showDialog(IIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "msgId"    # I
    .param p3, "positiveBottonTextId"    # I
    .param p4, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 429
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 432
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    .line 435
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 436
    return-void
.end method
