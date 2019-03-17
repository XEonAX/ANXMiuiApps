.class Lcom/miui/gallery/ui/CleanerRotateProgressBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CleanerRotateProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$1;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iput-object p2, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    return-void
.end method
