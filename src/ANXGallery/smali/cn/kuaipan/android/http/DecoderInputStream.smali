.class public Lcn/kuaipan/android/http/DecoderInputStream;
.super Ljava/io/FilterInputStream;
.source "DecoderInputStream.java"


# instance fields
.field private final buf:[B

.field private closed:Z

.field private final decoder:Lcn/kuaipan/android/http/IKscDecoder;

.field private eof:Z

.field private markPos:J

.field private final startPos:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/IKscDecoder;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;

    .prologue
    .line 46
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/http/DecoderInputStream;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/IKscDecoder;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/IKscDecoder;I)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;
    .param p3, "bsize"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->markPos:J

    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_1
    if-gtz p3, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_2
    invoke-interface {p2}, Lcn/kuaipan/android/http/IKscDecoder;->init()V

    .line 66
    iput-object p2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    .line 67
    new-array v0, p3, [B

    iput-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    .line 68
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/RandomFileInputStream;->getCurrentPos()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->startPos:J

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->startPos:J

    goto :goto_0
.end method

.method private fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    const v0, 0x7fffffff

    .line 169
    .local v0, "lastlen":I
    :goto_0
    iget-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-interface {v2}, Lcn/kuaipan/android/http/IKscDecoder;->needFill()I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_4

    .line 170
    if-le v1, v0, :cond_1

    .line 171
    new-instance v2, Ljava/util/zip/DataFormatException;

    const-string v3, "Needed data is increased"

    invoke-direct {v2, v3}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1
    move v0, v1

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 178
    :cond_2
    iget-object v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 179
    iget-object v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 180
    if-ltz v1, :cond_3

    .line 181
    iget-object v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    iget-object v3, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    invoke-interface {v2, v3, v4, v1}, Lcn/kuaipan/android/http/IKscDecoder;->fillData([BII)V

    goto :goto_0

    .line 183
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    goto :goto_0

    .line 186
    .end local v1    # "len":I
    :cond_4
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    if-eqz v0, :cond_1

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-boolean v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-interface {v0}, Lcn/kuaipan/android/http/IKscDecoder;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iput-boolean v1, p0, Lcn/kuaipan/android/http/DecoderInputStream;->closed:Z

    .line 257
    iput-boolean v1, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    .line 258
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 261
    :cond_0
    return-void

    .line 256
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcn/kuaipan/android/http/DecoderInputStream;->closed:Z

    .line 257
    iput-boolean v1, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    .line 258
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/RandomFileInputStream;->getCurrentPos()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->markPos:J

    .line 274
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-interface {v0}, Lcn/kuaipan/android/http/IKscDecoder;->supportRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 84
    new-array v0, v2, [B

    .line 85
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Lcn/kuaipan/android/http/DecoderInputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 88
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 105
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    if-nez p1, :cond_1

    .line 109
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 112
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_3

    .line 113
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 116
    :cond_3
    if-nez p3, :cond_5

    .line 117
    const/4 v1, 0x0

    .line 142
    :cond_4
    :goto_0
    return v1

    .line 125
    :cond_5
    array-length v2, p1

    if-gt p2, v2, :cond_6

    if-ltz p3, :cond_6

    if-ltz p2, :cond_6

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, p3, :cond_7

    .line 126
    :cond_6
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 130
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcn/kuaipan/android/http/DecoderInputStream;->fill()V

    .line 132
    iget-object v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-interface {v2, p1, p2, p3}, Lcn/kuaipan/android/http/IKscDecoder;->readDecodeData([BII)I

    move-result v1

    .line 133
    .local v1, "result":I
    if-gtz v1, :cond_4

    .line 141
    iget-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-interface {v2}, Lcn/kuaipan/android/http/IKscDecoder;->canEnd()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 142
    const/4 v1, -0x1

    goto :goto_0

    .line 143
    :cond_8
    iget-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    if-eqz v2, :cond_9

    .line 144
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/util/zip/DataFormatException;
    iget-boolean v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    if-eqz v2, :cond_a

    .line 151
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 146
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .restart local v1    # "result":I
    :cond_9
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    new-instance v3, Ljava/util/zip/DataFormatException;

    const-string v4, "Failed read data from decoder."

    invoke-direct {v3, v4}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .end local v1    # "result":I
    .restart local v0    # "e":Ljava/util/zip/DataFormatException;
    :cond_a
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcn/kuaipan/android/http/DecoderInputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-wide v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->markPos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/RandomFileInputStream;->getCurrentPos()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->markPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->eof:Z

    .line 293
    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcn/kuaipan/android/utils/RandomFileInputStream;

    iget-wide v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->markPos:J

    invoke-virtual {v0, v2, v3}, Lcn/kuaipan/android/utils/RandomFileInputStream;->moveToPos(J)V

    .line 294
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-interface {v0}, Lcn/kuaipan/android/http/IKscDecoder;->init()V

    .line 295
    iget-object v0, p0, Lcn/kuaipan/android/http/DecoderInputStream;->decoder:Lcn/kuaipan/android/http/IKscDecoder;

    iget-wide v2, p0, Lcn/kuaipan/android/http/DecoderInputStream;->markPos:J

    iget-wide v4, p0, Lcn/kuaipan/android/http/DecoderInputStream;->startPos:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcn/kuaipan/android/http/IKscDecoder;->skip(J)V

    .line 297
    :cond_2
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "nbytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_4

    .line 198
    const-wide/16 v0, 0x0

    .local v0, "count":J
    const-wide/16 v2, 0x0

    .line 199
    .local v2, "rem":J
    :goto_0
    cmp-long v5, v0, p1

    if-gez v5, :cond_1

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    new-instance v5, Ljava/io/InterruptedIOException;

    invoke-direct {v5}, Ljava/io/InterruptedIOException;-><init>()V

    throw v5

    .line 204
    :cond_0
    iget-object v6, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    const/4 v7, 0x0

    sub-long v2, p1, v0

    iget-object v5, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    array-length v5, v5

    int-to-long v8, v5

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    iget-object v5, p0, Lcn/kuaipan/android/http/DecoderInputStream;->buf:[B

    array-length v5, v5

    :goto_1
    invoke-virtual {p0, v6, v7, v5}, Lcn/kuaipan/android/http/DecoderInputStream;->read([BII)I

    move-result v4

    .line 205
    .local v4, "x":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 213
    .end local v4    # "x":I
    :cond_1
    return-wide v0

    .line 204
    :cond_2
    long-to-int v5, v2

    goto :goto_1

    .line 211
    .restart local v4    # "x":I
    :cond_3
    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 212
    goto :goto_0

    .line 215
    .end local v0    # "count":J
    .end local v2    # "rem":J
    .end local v4    # "x":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
