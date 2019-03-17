.class Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;
.super Ljava/lang/Object;
.source "CleanerRotateProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showEmptyAnim(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->access$002(Lcom/miui/gallery/ui/CleanerRotateProgressBar;Z)Z

    .line 118
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->cancelAllAnim()V

    .line 119
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;->this$0:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v1, v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mSpaceNumberView:Lcom/miui/gallery/widget/RightTopCornerTextView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    new-instance v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3$1;-><init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 139
    return-void

    .line 119
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
