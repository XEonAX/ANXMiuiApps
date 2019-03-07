.class Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;
.super Ljava/lang/Thread;
.source "StableScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/StableScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandleThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/StableScreenRecorder;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p2, "x1"    # Lcom/miui/screenrecorder/StableScreenRecorder$1;

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 843
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1300(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 844
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1900(Lcom/miui/screenrecorder/StableScreenRecorder;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2000(Lcom/miui/screenrecorder/StableScreenRecorder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    :cond_1
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2200(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v3}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2100(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 849
    .local v1, "index":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1900(Lcom/miui/screenrecorder/StableScreenRecorder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 850
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2, v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2300(Lcom/miui/screenrecorder/StableScreenRecorder;I)V

    .line 851
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2200(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 852
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 854
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "StableScreenRecorderCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when audio thread sleeping, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 858
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 859
    const-string v2, "StableScreenRecorderCore"

    const-string v3, "audio, the output format has changed, reset output format"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2400(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    goto :goto_0

    .line 861
    :cond_4
    const/4 v2, -0x3

    if-ne v1, v2, :cond_5

    .line 862
    const-string v2, "StableScreenRecorderCore"

    const-string v3, "audio, the output buffers have changed, refer to the new set of output buffers"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 864
    :cond_5
    const-string v2, "StableScreenRecorderCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio, unhandled index, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    .end local v1    # "index":I
    :cond_6
    return-void
.end method
