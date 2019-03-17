.class Lcom/miui/gallery/ui/SlimRotateProgressBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlimRotateProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SlimRotateProgressBar;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlimRotateProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlimRotateProgressBar;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->startRotateRingAnim(Z)V

    .line 108
    return-void
.end method
