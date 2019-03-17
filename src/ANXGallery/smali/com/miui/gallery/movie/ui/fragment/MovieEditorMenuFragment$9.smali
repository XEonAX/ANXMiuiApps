.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MovieEditorMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 685
    return-void
.end method
