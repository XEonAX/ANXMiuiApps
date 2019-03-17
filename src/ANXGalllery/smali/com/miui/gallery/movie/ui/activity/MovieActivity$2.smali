.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;
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
    .line 257
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$500(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$502(Lcom/miui/gallery/movie/ui/activity/MovieActivity;I)I

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeFullScreen(Z)V

    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$500(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0, v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$502(Lcom/miui/gallery/movie/ui/activity/MovieActivity;I)I

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeFullScreen(Z)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$600(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeEditorPreview()V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->pauseOrResume()V

    goto :goto_0
.end method
