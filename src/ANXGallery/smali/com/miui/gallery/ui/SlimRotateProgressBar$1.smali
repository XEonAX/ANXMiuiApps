.class Lcom/miui/gallery/ui/SlimRotateProgressBar$1;
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

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlimRotateProgressBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlimRotateProgressBar;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$1;->this$0:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    iput-object p2, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    return-void
.end method
