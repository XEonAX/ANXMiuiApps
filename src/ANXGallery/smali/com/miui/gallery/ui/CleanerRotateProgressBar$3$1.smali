.class Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CleanerRotateProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mSpaceNumberView:Lcom/miui/gallery/widget/RightTopCornerTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/RightTopCornerTextView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mEmptyValueView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mEmptyValueView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 136
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showRingCircle(Z)V

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;->this$1:Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setDescription(Ljava/lang/String;)V

    .line 128
    return-void
.end method
