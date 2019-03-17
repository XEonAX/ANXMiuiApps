.class Lcom/miui/gallery/ui/SlimRotateProgressBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlimRotateProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;

.field final synthetic val$listenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlimRotateProgressBar;ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlimRotateProgressBar;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;->this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    iput p2, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;->val$number:I

    iput-object p3, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;->val$listenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;->this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    iget v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;->val$number:I

    iget-object v2, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;->val$listenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->changeNumberEndStageAnim(ILandroid/animation/AnimatorListenerAdapter;)V

    .line 73
    return-void
.end method
