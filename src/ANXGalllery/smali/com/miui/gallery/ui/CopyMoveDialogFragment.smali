.class public Lcom/miui/gallery/ui/CopyMoveDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "CopyMoveDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlbumId:J

.field private mDeleteOrigin:Z

.field private mDupType:I

.field private mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

.field private mMediaIds:[J

.field private mMediaUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOperateSync:Z

.field private mProgressDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->doCopyMove()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mMediaUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->cancelAndFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mDeleteOrigin:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mMediaIds:[J

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mDupType:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mAlbumId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mOperateSync:Z

    return v0
.end method

.method private cancelAndFinish()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "CopyMoveDialogFragment"

    const-string v1, "cancelAndFinish"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mDeleteOrigin:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;->onComplete([JZ)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->dismissAllowingStateLoss()V

    .line 168
    return-void
.end method

.method private doCheckOrigin()V
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mMediaIds:[J

    if-nez v0, :cond_0

    .line 125
    const-string v0, "CopyMoveDialogFragment"

    const-string v2, "media ids is null"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->doCopyMove()V

    .line 148
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v1, Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mMediaIds:[J

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;J[J)V

    .line 131
    .local v1, "helper":Lcom/miui/gallery/util/CheckDownloadOriginHelper;
    new-instance v0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;-><init>(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->setListener(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;)V

    .line 147
    invoke-virtual {v1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->start()V

    goto :goto_0
.end method

.method private doCopyMove()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "CopyMoveDialogFragment"

    const-string v2, "doCopyMove"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    new-instance v1, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;-><init>(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V

    sget-object v2, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    :cond_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ignore":Ljava/lang/Exception;
    const-string v1, "CopyMoveDialogFragment"

    const-string/jumbo v2, "show dialog ignore %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;JLjava/util/ArrayList;ZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "albumId"    # J
    .param p4, "deleteOrigin"    # Z
    .param p5, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z",
            "Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v1, Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;-><init>()V

    .line 78
    .local v1, "dialog":Lcom/miui/gallery/ui/CopyMoveDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_album_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 80
    const-string v2, "arg_media_uris"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 81
    const-string v2, "arg_delete_origin"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {v1, p5}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CopyMoveDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "albumId"    # J
    .param p3, "mediaIds"    # [J
    .param p4, "dupType"    # I
    .param p5, "deleteOrigin"    # Z
    .param p6, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .prologue
    .line 55
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Z)V

    .line 56
    return-void
.end method

.method public static show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "albumId"    # J
    .param p3, "mediaIds"    # [J
    .param p4, "dupType"    # I
    .param p5, "deleteOrigin"    # Z
    .param p6, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;
    .param p7, "operateSync"    # Z

    .prologue
    .line 61
    new-instance v1, Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;-><init>()V

    .line 63
    .local v1, "dialog":Lcom/miui/gallery/ui/CopyMoveDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_album_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    const-string v2, "arg_media_ids"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 66
    const-string v2, "arg_delete_origin"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    const-string v2, "arg_dup_type"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v2, "arg_operate_sync"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {v1, p6}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CopyMoveDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-direct {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->doCheckOrigin()V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_album_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mAlbumId:J

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_media_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mMediaIds:[J

    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_dup_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mDupType:I

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_delete_origin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mDeleteOrigin:Z

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_operate_sync"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mOperateSync:Z

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_media_uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mMediaUris:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    .line 101
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->setCancelable(Z)V

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c001e

    .line 107
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .line 120
    return-void
.end method
