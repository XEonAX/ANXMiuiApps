.class Lcom/miui/gallery/ui/FacePageFragment$10;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "FacePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->refreshFaceCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$10;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 515
    .local v0, "value":Ljava/lang/Boolean;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$10;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$2200(Lcom/miui/gallery/ui/FacePageFragment;)V

    .line 518
    :cond_0
    return-void

    .line 514
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_1
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_0
.end method
