.class Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;
.super Ljava/lang/Thread;
.source "StableScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/StableScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoHandleThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/StableScreenRecorder;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p2, "x1"    # Lcom/miui/screenrecorder/StableScreenRecorder$1;

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 873
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1200(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 874
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1900(Lcom/miui/screenrecorder/StableScreenRecorder;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2500(Lcom/miui/screenrecorder/StableScreenRecorder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    :cond_1
    const/4 v1, 0x0

    .line 879
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2700(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v3}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2600(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 881
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1900(Lcom/miui/screenrecorder/StableScreenRecorder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2, v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2800(Lcom/miui/screenrecorder/StableScreenRecorder;I)V

    .line 883
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2700(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 885
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2600(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 887
    const-string v2, "StableScreenRecorderCore"

    const-string v3, "video, received end-of-stream, stop recording"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
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

    .line 890
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 891
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 902
    :catch_1
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StableScreenRecorderCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in VideoHandleThread loop, mVideoStart ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v4}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1200(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 905
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1500(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 906
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1500(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 907
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2, v6}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1000(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V

    .line 913
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    :cond_3
    return-void

    .line 892
    .restart local v1    # "index":I
    :cond_4
    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 893
    :try_start_2
    const-string v2, "StableScreenRecorderCore"

    const-string v3, "video, the output format has changed, reset output format"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$2900(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    goto/16 :goto_0

    .line 895
    :cond_5
    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    .line 896
    const-string v2, "StableScreenRecorderCore"

    const-string v3, "video, the output buffers have changed, refer to the new set of output buffers"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    :cond_6
    const-string v2, "StableScreenRecorderCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video, unhandled index, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
