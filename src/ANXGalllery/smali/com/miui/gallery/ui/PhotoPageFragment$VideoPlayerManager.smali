.class Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerManager"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/PhotoPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 3963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3964
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 3965
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 3958
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;)Lcom/miui/gallery/ui/PhotoPageFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    .prologue
    .line 3958
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->getFragment()Lcom/miui/gallery/ui/PhotoPageFragment;

    move-result-object v0

    return-object v0
.end method

.method private getFragment()Lcom/miui/gallery/ui/PhotoPageFragment;
    .locals 1

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3968
    if-nez p1, :cond_1

    .line 4014
    :cond_0
    :goto_0
    return-void

    .line 3972
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->getFragment()Lcom/miui/gallery/ui/PhotoPageFragment;

    move-result-object v0

    .line 3973
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 3977
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3978
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 3982
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3983
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3987
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v3, :cond_2

    .line 3988
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v3}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 3991
    :cond_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;Ljava/lang/String;)V

    new-instance v5, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;

    invoke-direct {v5, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 4022
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 4023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    .line 4025
    :cond_0
    return-void
.end method
