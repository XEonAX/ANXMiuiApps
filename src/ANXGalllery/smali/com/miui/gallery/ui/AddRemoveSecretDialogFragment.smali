.class public Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "AddRemoveSecretDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;
    }
.end annotation


# instance fields
.field private mAlbumId:J

.field private mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

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

.field private mOperationType:I

.field private mProgressDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->startAddOrRemoveSecretTask()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mOperationType:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->enterSecret()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mAlbumId:J

    return-wide v0
.end method

.method public static add(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v1, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;-><init>()V

    .line 68
    .local v1, "dialog":Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_operation_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v2, "arg_media_uris"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AddRemoveSecretDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static varargs add(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "mediaIds"    # [J

    .prologue
    .line 57
    new-instance v1, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;-><init>()V

    .line 58
    .local v1, "dialog":Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_operation_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v2, "arg_media_ids"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AddRemoveSecretDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private addOrRemoveSecret()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "key_check_gallery_sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SECRET:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 189
    invoke-static {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method private checkPrivateGalleryEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 130
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 131
    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Lcom/miui/privacy/LockSettingsHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/privacy/LockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 138
    .local v1, "helper":Lcom/miui/privacy/LockSettingsHelper;
    invoke-virtual {v1}, Lcom/miui/privacy/LockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    invoke-static {v3}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->setIsFirstAddSecret(Z)V

    .line 141
    const/16 v2, 0x1c

    invoke-static {p0, v2}, Lcom/miui/privacy/LockSettingsHelper;->startSetPrivacyPasswordActivity(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->doAddOrRemoveSecret()V

    goto :goto_0
.end method

.method private doAddOrRemoveSecret()V
    .locals 7

    .prologue
    .line 152
    iget v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mOperationType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    if-nez v0, :cond_1

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->startAddOrRemoveSecretTask()V

    .line 178
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v1, Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;J[J)V

    .line 158
    .local v1, "helper":Lcom/miui/gallery/util/CheckDownloadOriginHelper;
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$1;-><init>(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)V

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->setListener(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;)V

    .line 177
    invoke-virtual {v1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->start()V

    goto :goto_0
.end method

.method private enterSecret()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->enterPrivateAlbum(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public static varargs remove(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;J[J)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "albumId"    # J
    .param p4, "mediaIds"    # [J

    .prologue
    .line 77
    new-instance v1, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;-><init>()V

    .line 78
    .local v1, "dialog":Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_operation_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "arg_media_ids"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 81
    const-string v2, "arg_album_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AddRemoveSecretDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private startAddOrRemoveSecretTask()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 182
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;-><init>(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)V

    sget-object v1, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->addOrRemoveSecret()V

    .line 126
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 201
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->doAddOrRemoveSecret()V

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->checkPrivateGalleryEnabled()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;->onComplete([J)V

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_operation_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mOperationType:I

    .line 92
    iget v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mOperationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_media_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_media_uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaUris:Ljava/util/ArrayList;

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaUris:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ids or uris can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mOperationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_album_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mAlbumId:J

    .line 100
    iget-wide v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mAlbumId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "albumId must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_media_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mMediaIds:[J

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ids can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupport operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->setCancelable(Z)V

    .line 112
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public setOnCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->mListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 217
    return-void
.end method
