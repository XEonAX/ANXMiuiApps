.class public Lcom/nexstreaming/checkcaps/a;
.super Ljava/lang/Object;
.source "Checker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/checkcaps/a$b;,
        Lcom/nexstreaming/checkcaps/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/nexstreaming/checkcaps/b;

.field private d:Lcom/nexstreaming/checkcaps/a$a;

.field private e:Landroid/media/MediaCodec;

.field private f:Landroid/media/MediaCodec$BufferInfo;

.field private g:Landroid/media/MediaFormat;

.field private h:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "CapChecker"

    sput-object v0, Lcom/nexstreaming/checkcaps/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/checkcaps/a;->b:Z

    .line 32
    iput-object v1, p0, Lcom/nexstreaming/checkcaps/a;->c:Lcom/nexstreaming/checkcaps/b;

    .line 34
    iput-object v1, p0, Lcom/nexstreaming/checkcaps/a;->e:Landroid/media/MediaCodec;

    .line 35
    iput-object v1, p0, Lcom/nexstreaming/checkcaps/a;->f:Landroid/media/MediaCodec$BufferInfo;

    .line 36
    iput-object v1, p0, Lcom/nexstreaming/checkcaps/a;->g:Landroid/media/MediaFormat;

    .line 37
    iput-object v1, p0, Lcom/nexstreaming/checkcaps/a;->h:[Ljava/nio/ByteBuffer;

    .line 150
    iput-boolean p1, p0, Lcom/nexstreaming/checkcaps/a;->b:Z

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/checkcaps/a;II)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/checkcaps/a;->b(II)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    move v3, v1

    move v2, v1

    .line 52
    :goto_0
    if-ge v3, v4, :cond_2

    .line 53
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v2

    .line 52
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 60
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 61
    aget-object v6, v5, v0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    add-int/lit8 v0, v2, 0x1

    .line 63
    goto :goto_1

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 68
    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Ljava/util/concurrent/atomic/AtomicReference;)Landroid/media/MediaCodec;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodecInfo;",
            "Landroid/media/MediaFormat;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Landroid/media/MediaCodec;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    :goto_0
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 145
    :goto_1
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    move-object v2, v1

    .line 122
    goto :goto_0

    .line 129
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v2, p2, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 139
    :goto_2
    if-eqz v0, :cond_1

    move-object v0, v1

    .line 140
    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    move v0, v3

    .line 137
    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    .line 135
    :goto_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v3

    .line 136
    goto :goto_2

    .line 143
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    move-object v0, v2

    .line 145
    goto :goto_1

    .line 134
    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/nexstreaming/checkcaps/a;)Lcom/nexstreaming/checkcaps/a$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    return-object v0
.end method

.method private b(II)I
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 212
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Lcom/nexstreaming/checkcaps/a;->b(Ljava/lang/String;)[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 213
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The count of \'video/avc\' Encoder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Lcom/nexstreaming/checkcaps/a$a;->a(Lcom/nexstreaming/checkcaps/a;Ljava/lang/String;)V

    move v0, v1

    .line 215
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " th encoder\'s name is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/nexstreaming/checkcaps/a$a;->a(Lcom/nexstreaming/checkcaps/a;Ljava/lang/String;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 221
    const-string v3, "color-format"

    const v4, 0x7f000789

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 222
    const-string v3, "bitrate"

    const v4, 0x2dc6c0

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 223
    const-string v3, "frame-rate"

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 224
    const-string v3, "i-frame-interval"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 226
    iget-object v3, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video Format of Encoder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/nexstreaming/checkcaps/a$a;->a(Lcom/nexstreaming/checkcaps/a;Ljava/lang/String;)V

    .line 230
    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 231
    aget-object v2, v2, v1

    invoke-direct {p0, v2, v0, v3}, Lcom/nexstreaming/checkcaps/a;->a(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Ljava/util/concurrent/atomic/AtomicReference;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/a;->e:Landroid/media/MediaCodec;

    .line 233
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->e:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 234
    new-instance v2, Lcom/nexstreaming/checkcaps/b;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {v2, v0}, Lcom/nexstreaming/checkcaps/b;-><init>(Landroid/view/Surface;)V

    iput-object v2, p0, Lcom/nexstreaming/checkcaps/a;->c:Lcom/nexstreaming/checkcaps/b;

    .line 235
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->c:Lcom/nexstreaming/checkcaps/b;

    invoke-virtual {v0}, Lcom/nexstreaming/checkcaps/b;->b()V

    .line 237
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 238
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 239
    iput-object v6, p0, Lcom/nexstreaming/checkcaps/a;->e:Landroid/media/MediaCodec;

    .line 241
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a;->c:Lcom/nexstreaming/checkcaps/b;

    invoke-virtual {v0}, Lcom/nexstreaming/checkcaps/b;->a()V

    .line 242
    iput-object v6, p0, Lcom/nexstreaming/checkcaps/a;->c:Lcom/nexstreaming/checkcaps/b;

    .line 246
    :goto_1
    return v1

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)[Landroid/media/MediaCodecInfo;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 72
    .line 73
    invoke-static {p0}, Lcom/nexstreaming/checkcaps/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 75
    new-array v3, v0, [Landroid/media/MediaCodecInfo;

    .line 76
    if-nez v0, :cond_0

    move-object v0, v3

    .line 108
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5

    move v4, v1

    move v2, v1

    .line 83
    :goto_1
    if-ge v4, v5, :cond_3

    .line 84
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 87
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 83
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    .line 92
    :goto_3
    array-length v8, v7

    if-ge v0, v8, :cond_4

    .line 93
    aget-object v8, v7, v0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 103
    add-int/lit8 v0, v2, 0x1

    aput-object v6, v3, v2

    goto :goto_2

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 108
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string v1, "command"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v1, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p0, v0}, Lcom/nexstreaming/checkcaps/a$b;->a(Lcom/nexstreaming/checkcaps/a;Ljava/util/AbstractMap;)V

    .line 204
    return-void
.end method

.method public a(Lcom/nexstreaming/checkcaps/a$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nexstreaming/checkcaps/a;->d:Lcom/nexstreaming/checkcaps/a$a;

    .line 46
    return-void
.end method
