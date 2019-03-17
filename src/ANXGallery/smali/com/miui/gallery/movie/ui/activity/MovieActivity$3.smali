.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->resume()V

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$700(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDeleteIcon(Z)V

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$800(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$800(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;->onResumeClick()V

    .line 285
    :cond_0
    return-void
.end method
