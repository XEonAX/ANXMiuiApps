.class Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "MovieSavingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->onEncodeEnd(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

.field final synthetic val$isCancel:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iput-boolean p2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->val$success:Z

    iput-boolean p3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->val$isCancel:Z

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->dismissSafely()V

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iget-object v1, v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    iget-boolean v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->val$success:Z

    iget-boolean v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;->val$isCancel:Z

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;->onFinish(ZZLjava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method
