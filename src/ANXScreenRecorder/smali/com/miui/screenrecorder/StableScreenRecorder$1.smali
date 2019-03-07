.class Lcom/miui/screenrecorder/StableScreenRecorder$1;
.super Ljava/lang/Object;
.source "StableScreenRecorder.java"

# interfaces
.implements Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/StableScreenRecorder;->prepareVideoEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/StableScreenRecorder;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$1;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "EglRender onStop!"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder$1;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v0}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1600(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/glec/EGLRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/glec/EGLRender;->releaseResource()V

    .line 374
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder$1;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1602(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/glec/EGLRender;)Lcom/miui/screenrecorder/glec/EGLRender;

    .line 375
    return-void
.end method
