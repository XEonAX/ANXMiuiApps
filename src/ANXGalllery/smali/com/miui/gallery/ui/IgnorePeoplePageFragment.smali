.class public Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "IgnorePeoplePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewStub:Landroid/view/ViewStub;

.field private mHandler:Landroid/os/Handler;

.field private mIgnorePeopleGridView:Landroid/widget/GridView;

.field private mIgnorePeoplePageLoaderCallback:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;

.field private mPeopleToRecovery:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

.field private mRecoveryDialog:Landroid/app/AlertDialog;

.field private mRecoveryListener:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

.field private mRenameOrMergeDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRecoveryListener:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRecoveryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRecoveryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/app/AlertDialog;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->recoveryPeople(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->doRecovery(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->showMergeOrRenameDialog(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mergeWhenRecovery(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mPeopleToRecovery:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mPeopleToRecovery:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mEmptyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method private doRecovery(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 6
    .param p1, "recoveryPeople"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "recoveryName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "localId":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/miui/gallery/provider/FaceManager;->getPeopleLocalFlagByLocalID(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "flag":I
    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 159
    const-string v4, "localFlag"

    const/16 v5, 0xe

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 159
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v4, "visibilityType"

    const/4 v5, 0x4

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 161
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    :goto_0
    const-string v4, "peopleName"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {v3, v1}, Lcom/miui/gallery/provider/FaceManager;->safeUpdatePeopleFaceByIds(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 173
    return-void

    .line 165
    :cond_0
    const-string/jumbo v4, "visibilityType"

    const/4 v5, 0x1

    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 165
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private mergeWhenRecovery(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 8
    .param p1, "recoveryPeople"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "existPeopleName"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v3, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    monitor-enter v3

    .line 209
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/provider/FaceManager;->getPeopleLocalFlagByLocalID(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "flag":I
    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 212
    const-string v2, "localFlag"

    const/16 v4, 0xe

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 212
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string/jumbo v2, "visibilityType"

    const/4 v4, 0x4

    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 214
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :goto_0
    const-string v2, "%s = ? and %s != ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    .line 225
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 228
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 223
    invoke-static {v1, v2, v4}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 229
    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, p2, v4}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 230
    monitor-exit v3

    .line 231
    return-void

    .line 218
    :cond_0
    const-string/jumbo v2, "visibilityType"

    const/4 v4, 0x1

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 218
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 230
    .end local v0    # "flag":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private recoveryPeople(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 7
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 120
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v6

    new-instance v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 150
    return-void
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c025a

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method private showMergeOrRenameDialog(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 4
    .param p1, "recoveryPeople"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "existPeopleName"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    .line 188
    .local v0, "mergeListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$4;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    .line 198
    .local v1, "renameListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c03ee

    .line 199
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03ef

    .line 200
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03ed

    .line 201
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03f0

    .line 202
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRenameOrMergeDialog:Landroid/app/AlertDialog;

    .line 204
    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRenameOrMergeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 205
    return-void
.end method


# virtual methods
.method public dismissDialog(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 337
    :cond_0
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "ignore_people"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 241
    invoke-direct {p0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->setTitle()V

    .line 242
    new-instance v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeoplePageLoaderCallback:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;

    .line 243
    invoke-virtual {p0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeoplePageLoaderCallback:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 245
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 287
    :pswitch_0
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mPeopleToRecovery:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    if-eqz v3, :cond_0

    .line 288
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, v2}, Lcom/miui/gallery/cloud/CreateGroupItem;->checkFileNameValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "errorTips":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    .end local v0    # "errorTips":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "is_repeat_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 297
    .local v1, "isRepeat":Z
    if-nez v1, :cond_2

    .line 298
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;

    invoke-direct {v4, p0, v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0

    .line 306
    :cond_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$6;

    invoke-direct {v4, p0, v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$6;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 343
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 349
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRenameOrMergeDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 331
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const v1, 0x7f040095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    .line 73
    new-instance v1, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mRecoveryListener:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->setRecoveryListener(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mIgnorePeopleGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mAdapter:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    const v1, 0x7f120189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 77
    return-object v0
.end method
