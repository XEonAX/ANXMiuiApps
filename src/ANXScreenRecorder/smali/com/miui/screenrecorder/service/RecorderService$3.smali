.class Lcom/miui/screenrecorder/service/RecorderService$3;
.super Landroid/os/CountDownTimer;
.source "RecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/service/RecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/service/RecorderService;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/screenrecorder/service/RecorderService$3;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$3;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/service/RecorderService;->access$902(Lcom/miui/screenrecorder/service/RecorderService;Z)Z

    .line 465
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 460
    return-void
.end method
