.class Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;
.super Ljava/lang/Object;
.source "VideoNavFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFramesManager"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;",
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

.field private mFutureHandler:Lcom/miui/gallery/threadpool/FutureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/FutureHandler",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFramesJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V
    .locals 1
    .param p1, "videoNavEditMenu"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$1;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFutureHandler:Lcom/miui/gallery/threadpool/FutureHandler;

    .line 270
    new-instance v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$2;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mVideoFramesJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 247
    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->getFragment()Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    move-result-object v0

    return-object v0
.end method

.method private getFragment()Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    goto :goto_0
.end method


# virtual methods
.method public handleVideoFrames()V
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->getFragment()Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    const-string v0, "VideoNavFragment"

    const-string/jumbo v1, "the mFragmentRef is null. "

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 257
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mVideoFramesJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFutureHandler:Lcom/miui/gallery/threadpool/FutureHandler;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->mFuture:Lcom/miui/gallery/threadpool/Future;

    .line 290
    :cond_0
    return-void
.end method
