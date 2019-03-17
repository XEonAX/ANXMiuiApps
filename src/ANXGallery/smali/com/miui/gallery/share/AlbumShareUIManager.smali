.class public Lcom/miui/gallery/share/AlbumShareUIManager;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;,
        Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;,
        Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;,
        Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;,
        Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;,
        Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;
    }
.end annotation


# static fields
.field private static final sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    new-instance v1, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;-><init>(Lcom/miui/gallery/threadpool/ThreadPool;)V

    sput-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sDefaultJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    .line 58
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$1;

    new-instance v1, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v1, v2, v2}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager$1;-><init>(Lcom/miui/gallery/threadpool/ThreadPool;)V

    sput-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    return-void
.end method

.method private static acceptInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 10
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 741
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareUIManager;->findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v6

    .line 742
    .local v6, "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    invoke-static {v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->allowOperation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 771
    :goto_0
    return-object v0

    .line 747
    :cond_0
    invoke-virtual {v6}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptInvitationAsync: Invalid shareUrl, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->readAlbumShareStateFromDB(Lcom/miui/gallery/share/CloudSharerMediaSet;)I

    move-result v8

    .line 754
    .local v8, "state":I
    invoke-static {v8}, Lcom/miui/gallery/share/AlbumShareState;->accept(I)I

    move-result v7

    .line 755
    .local v7, "newState":I
    invoke-static {v7}, Lcom/miui/gallery/share/AlbumShareState;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 756
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptInvitationAsync: Invalid state, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {v6}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrl()Ljava/lang/String;

    move-result-object v9

    .line 762
    .local v9, "url":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$9;

    invoke-direct {v3, v9, v6}, Lcom/miui/gallery/share/AlbumShareUIManager$9;-><init>(Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 771
    .local v3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Long;>;>;"
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/miui/gallery/share/Path;
    .param p2, "x2"    # Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->onNegativeClick(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/Path;
    .param p1, "x1"    # Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;
    .param p2, "x2"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->acceptInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addInvitationToDBAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/AlbumShareUIManager$5;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Long;>;>;"
    invoke-static {v0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    .line 576
    return-void
.end method

.method static allowOperation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Z
    .locals 5
    .param p0, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    const/4 v1, 0x0

    .line 440
    if-nez p0, :cond_0

    .line 450
    :goto_0
    return v1

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getPath()Lcom/miui/gallery/share/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->findAlbumShareStateFromCache(Lcom/miui/gallery/share/Path;)I

    move-result v0

    .line 445
    .local v0, "state":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 446
    const-string v2, "AlbumShareUIManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation is in process, mediaSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static applyToShareAlbum(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;Z)V
    .locals 9
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "msgWhenUpdate"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .param p7, "showAcceptDialog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p2, "applyListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    .local p3, "acceptListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Long;>;"
    .local p4, "denyListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 615
    .local v1, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$7;

    move-object v2, p1

    move/from16 v3, p7

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/share/AlbumShareUIManager$7;-><init>(Ljava/lang/ref/WeakReference;Lcom/miui/gallery/share/Path;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 650
    .local v0, "updateListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    new-instance v8, Lcom/miui/gallery/share/AlbumShareUIManager$8;

    invoke-direct {v8, p1, p2, v0, p6}, Lcom/miui/gallery/share/AlbumShareUIManager$8;-><init>(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    .line 659
    .local v8, "updateInvitation":Ljava/lang/Runnable;
    const/4 v2, 0x1

    invoke-static {v8, p1, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->doAfterCloudMediaSetSetReload(Ljava/lang/Runnable;Lcom/miui/gallery/share/Path;Z)V

    .line 660
    return-void
.end method

.method public static changePublicStatusAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "isPublic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 892
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$13;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$13;-><init>(Ljava/lang/String;Z)V

    .line 902
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    return-object v1
.end method

.method private static denyInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 10
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 783
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareUIManager;->findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v6

    .line 784
    .local v6, "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    invoke-static {v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->allowOperation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 813
    :goto_0
    return-object v0

    .line 789
    :cond_0
    invoke-virtual {v6}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "denyInvitationAsync: Invalid shareUrl, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 795
    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->readAlbumShareStateFromDB(Lcom/miui/gallery/share/CloudSharerMediaSet;)I

    move-result v8

    .line 796
    .local v8, "state":I
    invoke-static {v8}, Lcom/miui/gallery/share/AlbumShareState;->deny(I)I

    move-result v7

    .line 797
    .local v7, "newState":I
    invoke-static {v7}, Lcom/miui/gallery/share/AlbumShareState;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 798
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "denyInvitationAsync: Invalid state, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 803
    :cond_2
    invoke-virtual {v6}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrl()Ljava/lang/String;

    move-result-object v9

    .line 804
    .local v9, "url":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$10;

    invoke-direct {v3, v9, v6}, Lcom/miui/gallery/share/AlbumShareUIManager$10;-><init>(Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 813
    .local v3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public static doAfterCloudMediaSetSetReload(Ljava/lang/Runnable;Lcom/miui/gallery/share/Path;Z)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "force"    # Z

    .prologue
    .line 727
    if-eqz p0, :cond_0

    .line 728
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 730
    :cond_0
    return-void
.end method

.method public static exitAlbumShareAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 2
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$11;-><init>(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager;->doAfterCloudMediaSetSetReload(Ljava/lang/Runnable;Lcom/miui/gallery/share/Path;Z)V

    .line 861
    return-void
.end method

.method static findAlbumShareStateFromCache(Lcom/miui/gallery/share/Path;)I
    .locals 2
    .param p0, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 414
    sget-object v1, Lcom/miui/gallery/share/AlbumShareUIManager;->sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 415
    .local v0, "state":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;
    .locals 1
    .param p0, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/miui/gallery/share/Path;->getMediaSet()Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v0

    return-object v0
.end method

.method static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 1143
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getIncomingInvitation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    .locals 1
    .param p0, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrlLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->parseInvitation(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;

    move-result-object v0

    return-object v0
.end method

.method public static kickSharersAsync(Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 6
    .param p0, "serverId"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    .line 1067
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$20;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$20;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1076
    .local v3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;>;>;"
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sDefaultJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method static notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<**>;"
    const/16 v0, -0x6e

    invoke-static {p0, v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;I)V

    .line 1353
    return-void
.end method

.method static notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;I)V
    .locals 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<**>;"
    const/4 v1, 0x0

    .line 1356
    if-eqz p0, :cond_0

    .line 1357
    const/4 v0, 0x0

    invoke-interface {p0, v1, v1, p1, v0}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 1359
    :cond_0
    return-void
.end method

.method private static onNegativeClick(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1321
    .local p2, "denyListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    .line 1322
    move-object v0, p2

    .line 1339
    .local v0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    :goto_0
    const/4 v2, 0x0

    const v3, 0x7f0c0314

    .line 1342
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1339
    invoke-static {p0, v2, v3, v4}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v1

    .line 1344
    .local v1, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    invoke-static {p1, v0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager;->denyInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    .line 1345
    return-void

    .line 1324
    .end local v0    # "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    .end local v1    # "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    :cond_0
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$27;

    invoke-direct {v0}, Lcom/miui/gallery/share/AlbumShareUIManager$27;-><init>()V

    .restart local v0    # "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    goto :goto_0
.end method

.method static readAlbumShareStateFromDB(Lcom/miui/gallery/share/CloudSharerMediaSet;)I
    .locals 1
    .param p0, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 419
    if-nez p0, :cond_0

    .line 420
    const/4 v0, -0x1

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumShareState(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static readAlbumShareStateFromDB(Lcom/miui/gallery/share/Path;)I
    .locals 1
    .param p0, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 427
    if-nez p0, :cond_0

    .line 428
    const/4 v0, -0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/Path;->getMediaSet()Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->readAlbumShareStateFromDB(Lcom/miui/gallery/share/CloudSharerMediaSet;)I

    move-result v0

    goto :goto_0
.end method

.method public static requestInvitationForSmsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 7
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;
    .param p3, "ownerRelation"    # Ljava/lang/String;
    .param p4, "ownerRelationText"    # Ljava/lang/String;
    .param p6, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p5, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;"
    const/4 v6, 0x0

    .line 981
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager$16;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;>;"
    sget-object v1, Lcom/miui/gallery/share/AlbumShareUIManager;->sDefaultJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    return-object v1
.end method

.method private static requestPublicUrlAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isShareAlbum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 914
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$14;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$14;-><init>(Ljava/lang/String;Z)V

    .line 924
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    return-object v1
.end method

.method public static requestPublicUrlForOwnerAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p0, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->requestPublicUrlAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public static requestPublicUrlForSharerAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p0, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 942
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->requestPublicUrlAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public static requestUrlForBarcodeAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$12;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/AlbumShareUIManager$12;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    invoke-static {v0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    return-object v1
.end method

.method private static showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnShowListener;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "invitation"    # Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "denyButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onShowListener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, "owner":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, "album":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c048f

    .line 1270
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0006

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    const v6, 0x7f0c03e8

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    .line 1273
    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1272
    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1271
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0005

    const/4 v5, 0x0

    .line 1274
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c015e

    .line 1275
    invoke-virtual {v3, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1276
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1277
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1278
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1, p4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1279
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1280
    return-void

    .line 1267
    .end local v0    # "album":Ljava/lang/String;
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "owner":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 1268
    .restart local v2    # "owner":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnShowListener;)V
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharerInfo"    # Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "denyButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onShowListener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    .line 1201
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mAlbumNickName:Ljava/lang/String;

    .line 1202
    .local v7, "babyName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mOwnerRelationText:Ljava/lang/String;

    .line 1208
    .local v12, "ownerName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mSharerRelationText:Ljava/lang/String;

    .line 1209
    .local v15, "sharerName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 1210
    .local v13, "relations":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 1211
    .local v14, "shareRelations":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v13

    if-ge v10, v1, :cond_0

    .line 1212
    aget-object v1, v13, v10

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1213
    aget-object v15, v14, v10

    .line 1218
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1220
    .local v8, "contentView":Landroid/view/View;
    const v1, 0x7f1200d7

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1221
    .local v11, "msgView":Landroid/widget/TextView;
    const v1, 0x7f0c0080

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const/4 v3, 0x3

    aput-object v12, v2, v3

    const/4 v3, 0x4

    aput-object v7, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog:I

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1227
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0005

    const/4 v3, 0x0

    .line 1228
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c015e

    .line 1229
    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1230
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1231
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1232
    .local v9, "d":Landroid/app/AlertDialog;
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1234
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mThumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1236
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 1237
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1238
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1239
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 1240
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1241
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 1242
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const v2, 0x7f02003c

    .line 1243
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1244
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 1245
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 1246
    .local v4, "defaultDisplayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 1247
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mThumbnailUrl:Ljava/lang/String;

    const v3, 0x7f1200d6

    .line 1249
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mFaceRelativePos:Landroid/graphics/RectF;

    .line 1247
    invoke-virtual/range {v1 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 1252
    new-instance v1, Lcom/miui/gallery/share/AlbumShareUIManager$25;

    invoke-direct {v1}, Lcom/miui/gallery/share/AlbumShareUIManager$25;-><init>()V

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1261
    .end local v4    # "defaultDisplayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_1
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 1262
    return-void

    .line 1211
    .end local v8    # "contentView":Landroid/view/View;
    .end local v9    # "d":Landroid/app/AlertDialog;
    .end local v11    # "msgView":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method static showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/CloudSharerMediaSet;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/share/CloudSharerMediaSet;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p2, "acceptListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Long;>;"
    .local p3, "denyListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getPath()Lcom/miui/gallery/share/Path;

    move-result-object v3

    .line 1152
    .local v3, "path":Lcom/miui/gallery/share/Path;
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->getIncomingInvitation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;

    move-result-object v1

    .line 1153
    .local v1, "invitation":Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$23;

    invoke-direct {v0, p0, v3, p3}, Lcom/miui/gallery/share/AlbumShareUIManager$23;-><init>(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 1162
    .local v0, "denyButtonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/miui/gallery/share/AlbumShareUIManager$24;

    invoke-direct {v2, v3, p0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$24;-><init>(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 1179
    .local v2, "onShowListener":Landroid/content/DialogInterface$OnShowListener;
    const/4 v5, 0x0

    .line 1180
    .local v5, "sharerInfoStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->hasSharerInfo()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1181
    invoke-virtual {p1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getSharerInfo()Ljava/lang/String;

    move-result-object v5

    .line 1183
    :cond_0
    const/4 v4, 0x0

    .line 1184
    .local v4, "sharerInfo":Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1185
    invoke-static {v5}, Lcom/miui/gallery/share/AlbumShareOperations;->parseSharerInfo(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;

    move-result-object v4

    .line 1187
    :cond_1
    if-eqz v4, :cond_2

    .line 1188
    invoke-static {p0, v4, p4, v0, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnShowListener;)V

    .line 1195
    :goto_0
    return-void

    .line 1192
    :cond_2
    invoke-static {p0, v1, p4, v0, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->showDialogToAccept(Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0
.end method

.method static submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
            "<TK;TS;>;TK;TS;",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<TK;TT;>;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "jobManager":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "status":Ljava/lang/Object;, "TS;"
    .local p3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    .local p4, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<TK;TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method static submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 6
    .param p5, "blockMessage"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
            "<TK;TS;>;TK;TS;",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<TK;TT;>;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "jobManager":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "status":Ljava/lang/Object;, "TS;"
    .local p3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    .local p4, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<TK;TT;>;"
    const/4 v3, 0x0

    .line 1106
    if-nez p5, :cond_1

    .line 1107
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1108
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;

    invoke-direct {v0, p1, p4, p0}, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;-><init>(Ljava/lang/Object;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;)V

    .line 1109
    .local v0, "actualListener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->getThreadPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v4

    invoke-virtual {v4, p3, v0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v3

    .line 1139
    .end local v0    # "actualListener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 1113
    :cond_1
    invoke-virtual {p5}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->buildDialog()Lmiui/app/ProgressDialog;

    move-result-object v2

    .line 1114
    .local v2, "dialog":Landroid/app/Dialog;
    if-nez v2, :cond_2

    .line 1115
    if-eqz p4, :cond_0

    .line 1116
    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-interface {p4, p1, v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1122
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1124
    new-instance v1, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;

    invoke-direct {v1, p4, v2}, Lcom/miui/gallery/share/AlbumShareUIManager$FutureCancelledListener;-><init>(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/app/Dialog;)V

    .line 1125
    .local v1, "closeDialogListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<TK;TT;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;-><init>(Ljava/lang/Object;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;)V

    .line 1126
    .restart local v0    # "actualListener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->getThreadPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v4

    invoke-virtual {v4, p3, v0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v3

    .line 1128
    .local v3, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    new-instance v4, Lcom/miui/gallery/share/AlbumShareUIManager$22;

    invoke-direct {v4, v3, p5}, Lcom/miui/gallery/share/AlbumShareUIManager$22;-><init>(Lcom/miui/gallery/threadpool/Future;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "TT;>;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;TT;>;"
    const/4 v1, 0x0

    .line 1095
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sDefaultJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    invoke-static {v0, v1, v1, p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public static syncAllUserInfoFromNetworkAsync(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$19;

    invoke-direct {v0}, Lcom/miui/gallery/share/AlbumShareUIManager$19;-><init>()V

    .line 1053
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0, p0}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    return-object v1
.end method

.method public static syncUserListForAlbumAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "isSharer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1024
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$18;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$18;-><init>(Ljava/lang/String;Z)V

    .line 1032
    .local v0, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {v0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    return-object v1
.end method

.method public static tryToAccept(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/Dialog;)V
    .locals 7
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "acceptDialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "acceptListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1285
    if-eqz p4, :cond_0

    .line 1286
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    .line 1289
    :cond_0
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$26;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$26;-><init>(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 1300
    .local v0, "acceptInvitationJob":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    .line 1301
    .local v3, "xiaomiAccount":Landroid/accounts/Account;
    if-eqz v3, :cond_1

    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-static {v3, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 1304
    .local v1, "autoSync":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1306
    const/4 v5, 0x0

    const/16 v6, -0x3eb

    invoke-interface {p2, p0, v5, v6, v4}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 1307
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/miui/gallery/share/LoginAndSyncForInvitationActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1308
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "invitation_path"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1309
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1314
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .end local v1    # "autoSync":Z
    :cond_1
    move v1, v4

    .line 1301
    goto :goto_0

    .line 1312
    .restart local v1    # "autoSync":Z
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public static tryToCreateCloudAlbumAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 6
    .param p0, "cloudId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1082
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$21;

    invoke-direct {v3, p0}, Lcom/miui/gallery/share/AlbumShareUIManager$21;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sDefaultJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    move-object v2, v1

    move-object v4, p1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public static updateInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->updateInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public static updateInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;
    .locals 12
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 460
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareUIManager;->findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v8

    .line 461
    .local v8, "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    invoke-static {v8}, Lcom/miui/gallery/share/AlbumShareUIManager;->allowOperation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 501
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    invoke-virtual {v8}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInvitationAsync: Invalid shareUrl, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {v8}, Lcom/miui/gallery/share/CloudSharerMediaSet;->hasShareDetailInfo()Z

    move-result v6

    .line 473
    .local v6, "hasShareDetailInfo":Z
    if-eqz v6, :cond_3

    .line 474
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInvitationAsync: Already exist share detail info, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {v8}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrlLong()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1, v5, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 482
    :cond_3
    invoke-static {v8}, Lcom/miui/gallery/share/AlbumShareUIManager;->readAlbumShareStateFromDB(Lcom/miui/gallery/share/CloudSharerMediaSet;)I

    move-result v10

    .line 483
    .local v10, "state":I
    invoke-static {v10}, Lcom/miui/gallery/share/AlbumShareState;->requestLongUrl(I)I

    move-result v9

    .line 484
    .local v9, "newState":I
    invoke-static {v9}, Lcom/miui/gallery/share/AlbumShareState;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 485
    const-string v1, "AlbumShareUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInvitationAsync: Invalid state, media set="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 490
    :cond_4
    invoke-virtual {v8}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrl()Ljava/lang/String;

    move-result-object v11

    .line 491
    .local v11, "url":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrlLong()Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, "longUrl":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$3;

    invoke-direct {v3, v11, v7, v8}, Lcom/miui/gallery/share/AlbumShareUIManager$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 501
    .local v3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;>;"
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sAlbumShareManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static updateShareUrlLongAuto(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 1
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p1, "applyListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    .local p2, "updateListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->updateShareUrlLongAuto(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    .line 700
    return-void
.end method

.method public static updateShareUrlLongAuto(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 7
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p3, "msg"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/Path;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "applyListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    .local p2, "updateListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 672
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareUIManager;->findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v2

    .line 673
    .local v2, "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    if-eqz v2, :cond_5

    .line 674
    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->isNormalStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    if-eqz p1, :cond_0

    .line 676
    const/16 v4, -0x9

    invoke-interface {p1, p0, v6, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareUrlLong()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "longUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 681
    invoke-static {v1}, Lcom/miui/gallery/share/AlbumShareOperations;->parseInvitation(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;

    move-result-object v0

    .line 682
    .local v0, "invitation":Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getSharerInfo()Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "sharerInfo":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->hasSharerInfo()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 684
    :cond_3
    if-eqz p2, :cond_0

    .line 685
    invoke-interface {p2, p0, v1, v5, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 690
    .end local v0    # "invitation":Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    .end local v3    # "sharerInfo":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p2, p3}, Lcom/miui/gallery/share/AlbumShareUIManager;->updateInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0

    .line 692
    .end local v1    # "longUrl":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_0

    .line 693
    const/4 v4, -0x2

    invoke-interface {p2, p0, v6, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    goto :goto_0
.end method
