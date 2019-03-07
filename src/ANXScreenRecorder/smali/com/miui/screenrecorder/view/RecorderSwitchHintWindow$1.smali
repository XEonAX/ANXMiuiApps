.class Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;
.super Ljava/lang/Object;
.source "RecorderSwitchHintWindow.java"

# interfaces
.implements Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnLayoutParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;-><init>(Landroid/content/Context;Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubWindowHeight()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget v0, v0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->viewHeight:I

    return v0
.end method

.method public getSubWindowStubWidth()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$200(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v0

    return v0
.end method

.method public onConfigChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1, p1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$302(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I

    .line 102
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v0

    .line 103
    .local v0, "tmp":I
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$500(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$402(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I

    .line 104
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1, v0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$502(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I

    .line 105
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 106
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$700(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    move-result-object v3

    iget v3, v3, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewHeight:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$602(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$900(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)V

    .line 111
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$100(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v3, v3, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .end local v0    # "tmp":I
    :cond_1
    return-void

    .line 107
    .restart local v0    # "tmp":I
    :cond_2
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$700(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    move-result-object v3

    iget v3, v3, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->viewHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v3}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$800(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$602(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;I)I

    goto :goto_0
.end method

.method public onLayoutParamChanged()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$000(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)V

    .line 83
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->access$100(Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, p0, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;

    iget-object v2, v2, Lcom/miui/screenrecorder/view/RecorderSwitchHintWindow;->mFloatWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method
