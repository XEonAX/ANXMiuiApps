.class Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecorderSwitchWindow.java"


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


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 545
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$500(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v1, v1, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    iget-object v2, v2, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .line 546
    invoke-static {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$900(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v4}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$1000(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v5}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$800(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-static/range {v0 .. v5}, Lcom/miui/screenrecorder/view/RecorderSwitchWindowHelper;->dianWindowStay(Landroid/content/Context;IIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$802(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    return-void
.end method
