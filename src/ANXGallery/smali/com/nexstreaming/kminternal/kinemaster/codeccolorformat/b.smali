.class public Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;
.super Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/a;
.source "WrapMediaDecoder.java"


# instance fields
.field private a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

.field private b:I

.field private c:Landroid/media/MediaCodec;

.field private d:Landroid/view/Surface;

.field private e:Landroid/media/MediaFormat;

.field private f:I

.field private g:I

.field private h:[Ljava/nio/ByteBuffer;

.field private i:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/a;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->b:I

    .line 32
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    .line 34
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    .line 35
    const-string v0, "WrapMediaDecoder"

    const-string v1, "Can\'t create media codec!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 40
    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->d:Landroid/view/Surface;

    .line 42
    iput v3, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->b:I

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 47
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->h:[Ljava/nio/ByteBuffer;

    .line 48
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->i:[Ljava/nio/ByteBuffer;

    .line 50
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->f:I

    .line 51
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->g:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 56
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 57
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    .line 200
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;J)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->h:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->i:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const-string v0, "WrapMediaDecoder"

    const-string v1, "Media codec did not initailize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return v2

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 100
    if-ltz v1, :cond_2

    .line 102
    if-nez p1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    const/4 v6, 0x4

    move v3, v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 105
    const-string v0, "WrapMediaDecoder"

    const-string v1, "WrapMediaDecoder EOS pass"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->b()Z

    .line 118
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->h:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 111
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    move-wide v4, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 113
    const-string v0, "WrapMediaDecoder"

    const-string v1, "WrapMediaDecoder one frame pass"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a([BJ)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->h:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->i:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const-string v0, "WrapMediaDecoder"

    const-string v1, "Media codec did not initailize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return v2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 68
    if-ltz v1, :cond_3

    .line 70
    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_4

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    const/4 v6, 0x4

    move v3, v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 73
    const-string v0, "WrapMediaDecoder"

    const-string v1, "WrapMediaDecoder EOS pass"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->b()Z

    move v2, v7

    .line 88
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->h:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 79
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    array-length v3, p1

    move-wide v4, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 81
    const-string v0, "WrapMediaDecoder"

    const-string v1, "WrapMediaDecoder one frame pass time(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 123
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 125
    const-string v1, "WrapMediaDecoder"

    const-string v2, "OutputBuffer outIndex(%d)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch v0, :pswitch_data_0

    move v6, v0

    .line 151
    :goto_0
    if-ltz v6, :cond_1

    .line 153
    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "WrapMediaDecoder"

    const-string v1, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->i:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    .line 159
    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 162
    const-string v0, "WrapMediaDecoder"

    const-string v1, "OutputBuffer was not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    :goto_1
    return v8

    .line 128
    :pswitch_0
    const-string v0, "WrapMediaDecoder"

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->i:[Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    invoke-interface {v0, v8}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    goto :goto_1

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->e:Landroid/media/MediaFormat;

    .line 135
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->e:Landroid/media/MediaFormat;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->e:Landroid/media/MediaFormat;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->f:I

    .line 138
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->e:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->g:I

    .line 140
    :cond_2
    const-string v0, "WrapMediaDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->e:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    goto :goto_1

    .line 146
    :pswitch_2
    const-string v0, "WrapMediaDecoder"

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    goto :goto_1

    .line 166
    :cond_3
    iget v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz v1, :cond_4

    .line 168
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 169
    const-string v0, "WrapMediaDecoder"

    const-string v1, "Output was not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :cond_4
    const-string v1, "WrapMediaDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t use; render anyway, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->d:Landroid/view/Surface;

    if-eqz v1, :cond_5

    .line 179
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    iget v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->b:I

    iget-wide v2, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(IJ)Z

    move-result v0

    .line 189
    :goto_2
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 190
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    move v6, v0

    .line 191
    goto/16 :goto_0

    .line 183
    :cond_5
    iget v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 184
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->b:I

    array-length v3, v1

    iget-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a([BIIJ)Z

    move-result v0

    goto :goto_2

    .line 126
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->g:I

    return v0
.end method
