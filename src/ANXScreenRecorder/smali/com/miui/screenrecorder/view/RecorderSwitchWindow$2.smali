.class Lcom/miui/screenrecorder/view/RecorderSwitchWindow$2;
.super Landroid/os/CountDownTimer;
.source "RecorderSwitchWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 492
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$2;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 501
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$2;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$202(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;Z)Z

    .line 503
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$2;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;F)V

    .line 505
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 497
    return-void
.end method
