.class public Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;
.super Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/a;
.source "WrapMediaEncoder.java"


# instance fields
.field private a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

.field private b:Landroid/media/MediaCodec;

.field private c:[B

.field private d:[B

.field private e:[Ljava/nio/ByteBuffer;

.field private f:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/a;-><init>()V

    .line 45
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    .line 46
    const-string/jumbo v0, "video/avc"

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 47
    const-string v1, "bitrate"

    const v2, 0x1e848

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    const-string v1, "color-format"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 50
    const-string v1, "i-frame-interval"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 51
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 54
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 55
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->e:[Ljava/nio/ByteBuffer;

    .line 56
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->f:[Ljava/nio/ByteBuffer;

    .line 57
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/a;-><init>()V

    .line 60
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    .line 61
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 62
    const-string v1, "bitrate"

    const v2, 0x1e848

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    const-string v1, "color-format"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string v1, "i-frame-interval"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 69
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 70
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->e:[Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->f:[Ljava/nio/ByteBuffer;

    .line 72
    return-void
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
    .line 90
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 91
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 92
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    .line 224
    return-void
.end method

.method public a([BJ)Z
    .locals 10

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->e:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->f:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "WrapMediaEncoder"

    const-string v1, "Media codec did not initailize"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 104
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 105
    if-ltz v1, :cond_2

    .line 106
    aget-object v0, v0, v1

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 109
    if-eqz p1, :cond_5

    .line 110
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v6, 0x0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 119
    :cond_2
    :goto_1
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 121
    packed-switch v0, :pswitch_data_0

    move v6, v0

    .line 141
    :goto_2
    if-ltz v6, :cond_4

    .line 142
    iget v0, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 143
    const-string v0, "WrapMediaEncoder"

    const-string v1, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x4

    .line 145
    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    .line 148
    :cond_3
    aget-object v0, v7, v6

    .line 149
    if-nez v0, :cond_6

    .line 150
    const-string v0, "WrapMediaEncoder"

    const-string v1, "Output buffer is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 123
    :pswitch_0
    const-string v0, "WrapMediaEncoder"

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 125
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x1

    .line 126
    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    goto :goto_3

    .line 129
    :pswitch_1
    const-string v0, "WrapMediaEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x2

    .line 132
    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    goto :goto_3

    .line 135
    :pswitch_2
    const-string v0, "WrapMediaEncoder"

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v1, 0x3

    .line 137
    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a(I)Z

    goto :goto_3

    .line 154
    :cond_6
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz v1, :cond_7

    .line 155
    const-string v0, "WrapMediaEncoder"

    const-string v1, "Output was not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 159
    :cond_7
    const-string v1, "WrapMediaEncoder"

    const-string v2, "Output was available Falg:%d Size:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 159
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 165
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 166
    const-string v1, "WrapMediaEncoder"

    const-string v2, "OutputBuffer BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 169
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 171
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 173
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "parsing sps/pps"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_8

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_8

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 183
    add-int/lit8 v2, v0, -0x8

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    .line 184
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 185
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 186
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 187
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    .line 188
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x4

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    array-length v2, v1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    .line 191
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 192
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 193
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 194
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    .line 195
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x4

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->c:[B

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->d:[B

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a([B[B)Z

    .line 198
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 199
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    move v6, v0

    .line 200
    goto/16 :goto_2

    .line 175
    :cond_9
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "something is amiss?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 207
    :cond_a
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 208
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;

    const/4 v2, 0x0

    array-length v3, v1

    iget-wide v4, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;->a([BIIJ)Z

    .line 213
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 214
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    move v6, v0

    .line 215
    goto/16 :goto_2

    .line 121
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
