.class Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;
.super Ljava/lang/Object;
.source "RecorderSwitchWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->initSwitchWindowAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iput p2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$end:I

    iput p3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 531
    .local v0, "value":Ljava/lang/Float;
    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$end:I

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$end:I

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v2}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$500(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v1, v1, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$start:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$start:I

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$end:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 537
    :goto_0
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$600(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v3, v3, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$700(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V

    .line 539
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v1, v1, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$start:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$end:I

    iget v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$3;->val$start:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
