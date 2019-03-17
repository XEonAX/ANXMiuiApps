.class Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecognitionTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

.field private mFuture:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    .prologue
    .line 4245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4246
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    .line 4247
    return-void
.end method

.method static synthetic access$6900(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;)Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 3
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 4251
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 4254
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;Lcom/miui/gallery/model/BaseDataItem;)V

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    .line 4289
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4292
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    .line 4293
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 4295
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->mFuture:Lcom/miui/gallery/threadpool/Future;

    .line 4297
    :cond_0
    return-void
.end method
