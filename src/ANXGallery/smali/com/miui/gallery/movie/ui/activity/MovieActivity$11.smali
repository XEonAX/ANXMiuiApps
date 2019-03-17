.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;->doEditorPreviewChangeAnimal(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$11;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    iput-object p2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$11;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$11;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    return-void
.end method
