.class Lcom/miui/screenrecorder/service/RecorderService$2;
.super Ljava/lang/Object;
.source "RecorderService.java"

# interfaces
.implements Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;


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
.method constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftBtnClick()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 342
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$900(Lcom/miui/screenrecorder/service/RecorderService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/service/RecorderService;->access$902(Lcom/miui/screenrecorder/service/RecorderService;Z)Z

    .line 356
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$1000(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 357
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$1000(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 358
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$200(Lcom/miui/screenrecorder/service/RecorderService;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v0}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-static {v1}, Lcom/miui/screenrecorder/service/RecorderService;->access$300(Lcom/miui/screenrecorder/service/RecorderService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->preStart(I)V

    goto :goto_0
.end method

.method public onRightBtnClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->setRecording(Z)V

    .line 326
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/service/RecorderService;->stopSelf()V

    .line 328
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    .line 329
    invoke-virtual {v2}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 331
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getIsGoHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService$2;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-virtual {v1, v0}, Lcom/miui/screenrecorder/service/RecorderService;->startActivity(Landroid/content/Intent;)V

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
