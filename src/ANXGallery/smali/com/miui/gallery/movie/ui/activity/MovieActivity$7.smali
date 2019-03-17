.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$7;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setForMode()V
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
    .line 405
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$7;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$7;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$800(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$7;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$800(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;->onDeleteClick()V

    .line 411
    :cond_0
    return-void
.end method
