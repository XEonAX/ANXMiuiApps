.class public abstract Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;
.super Lcom/miui/gallery/share/ShareAlbumBaseActivity;
.source "ShareAlbumOwnerBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;
    }
.end annotation


# instance fields
.field protected mFutureCreateItem:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mFutureSms:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mObserver:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->tryToCreateCloudItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;ILcom/miui/gallery/share/CloudUserCacheEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->addSharer(ILcom/miui/gallery/share/CloudUserCacheEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->kickUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mObserver:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;

    return-object v0
.end method

.method private addSharer(ILcom/miui/gallery/share/CloudUserCacheEntry;)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 138
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;I)V

    .line 155
    .local v0, "urlRequestListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;"
    invoke-virtual {p0, p2, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->requestInvitation(Lcom/miui/gallery/share/CloudUserCacheEntry;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 156
    return-void
.end method

.method private kickUser(Ljava/lang/String;)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v1, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$5;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V

    .line 192
    .local v1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v3, 0x0

    const v4, 0x7f0c0278

    .line 194
    invoke-virtual {p0, v4}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 192
    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v2

    .line 196
    .local v2, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    .local v0, "kicked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->kickSharersAsync(Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    .line 199
    return-void
.end method

.method private tryToCreateCloudItem()V
    .locals 4

    .prologue
    .line 238
    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "cloudId":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$6;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V

    .line 260
    .local v1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager;->tryToCreateCloudAlbumAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureCreateItem:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method


# virtual methods
.method protected doSyncFromServer(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/share/CloudUserCache;->syncFromServer(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 206
    :cond_0
    return-void
.end method

.method protected getShareUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/share/CloudUserCache;->getCloudUserListByAlbumId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v1, Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;

    invoke-direct {v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    return-object v0
.end method

.method protected getUserCache()Lcom/miui/gallery/share/CloudUserCache;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/miui/gallery/share/CloudUserCache;->getOwnerUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x7f12028b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$1;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->tryToCreateCloudItem()V

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->updateStatus()V

    .line 73
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mObserver:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$CloudObserver;

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureCreateItem:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureCreateItem:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureSms:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureSms:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 94
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onItemClick(Lcom/miui/gallery/share/GridPreferenceBase;I)V
    .locals 3
    .param p1, "pref"    # Lcom/miui/gallery/share/GridPreferenceBase;
    .param p2, "position"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

    invoke-virtual {v1}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getItem(I)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v0

    .line 271
    .local v0, "entry":Lcom/miui/gallery/share/CloudUserCacheEntry;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mServerStatus:Ljava/lang/String;

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->showAddSharerDialog(Lcom/miui/gallery/share/CloudUserCacheEntry;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mServerStatus:Ljava/lang/String;

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mCreatorId:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    const v1, 0x7f0c00cd

    invoke-static {v1}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->showKickUserDialog(Lcom/miui/gallery/share/CloudUserCacheEntry;)V

    goto :goto_0
.end method

.method protected requestInvitation(Lcom/miui/gallery/share/CloudUserCacheEntry;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "urlRequestListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;"
    return-void
.end method

.method protected requestInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 7
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;
    .param p3, "ownerRelation"    # Ljava/lang/String;
    .param p4, "ownerRelationText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p5, "urlRequestListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;"
    const v0, 0x7f0c0421

    .line 293
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0420

    .line 294
    invoke-virtual {p0, v1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {p0, v0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v6

    .line 295
    .local v6, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->requestInvitationForSmsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureSms:Lcom/miui/gallery/threadpool/Future;

    .line 298
    return-void
.end method

.method protected showAddSharerDialog(Lcom/miui/gallery/share/CloudUserCacheEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-static {}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getInstance()Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getAddSharerDialogItemsLength()I

    move-result v0

    .line 117
    .local v0, "itemsLength":I
    if-ge v0, v2, :cond_0

    .line 135
    :goto_0
    return-void

    .line 121
    :cond_0
    if-ne v0, v2, :cond_1

    .line 123
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->addSharer(ILcom/miui/gallery/share/CloudUserCacheEntry;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getInstance()Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$2;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Lcom/miui/gallery/share/CloudUserCacheEntry;)V

    invoke-virtual {v1, p0, v2}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->showAddSharerDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected showKickUserDialog(Lcom/miui/gallery/share/CloudUserCacheEntry;)V
    .locals 2
    .param p1, "shareUser"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getInstance()Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$4;-><init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;Lcom/miui/gallery/share/CloudUserCacheEntry;)V

    invoke-virtual {v0, p0, v1}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->showKickUserDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected updateSharers()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->updateSharers()V

    .line 104
    return-void
.end method

.method protected updateStatus()V
    .locals 6

    .prologue
    const v5, 0x7f120289

    const v4, 0x7f120288

    const v1, 0x102000a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v4}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->updateSharers()V

    .line 218
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->syncFromServer()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {p0, v4}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureCreateItem:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mFutureCreateItem:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    invoke-virtual {p0, v5}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const v0, 0x7f12028a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c04c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    const v0, 0x7f12028b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0, v5}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v0, 0x7f12028a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c01ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    const v0, 0x7f12028b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
