.class Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;

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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3692
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 3653
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;-><init>()V

    return-void
.end method

.method static synthetic access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;)Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3685
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 3686
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 3687
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    .line 3689
    :cond_0
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;

    .line 3690
    return-void
.end method

.method public execute(Ljava/lang/String;Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;

    .prologue
    .line 3658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3682
    :goto_0
    return-void

    .line 3661
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_1

    .line 3662
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 3664
    :cond_1
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;

    .line 3665
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method
