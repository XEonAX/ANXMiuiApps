.class Lcom/cdv/io/NvMediaEncodecCallback$1;
.super Landroid/media/MediaCodec$Callback;
.source "NvMediaEncodecCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvMediaEncodecCallback;->setCallbackToCodec(Landroid/media/MediaCodec;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/io/NvMediaEncodecCallback;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvMediaEncodecCallback;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-static {v0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, -0x1

    .line 104
    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v0

    .line 107
    :cond_1
    const-string v1, "NvMediaEncodecCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-static {v1}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$200(JI)V

    goto :goto_0
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "NvMediaEncodecCallback"

    const-string v1, "onInputBufferAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-static {v0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-static {v1}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, p3}, Lcom/cdv/io/NvMediaEncodecCallback;->access$100(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, "NvMediaEncodecCallback"

    const-string v2, "MediaCodec.releaseOutputBuffer failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-static {v0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-static {v0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/cdv/io/NvMediaEncodecCallback;->access$300(JLandroid/media/MediaFormat;)V

    goto :goto_0
.end method
