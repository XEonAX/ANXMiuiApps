.class public Lcom/miui/gallery/util/gifdecoder/NSGif;
.super Ljava/lang/Object;
.source "NSGif.java"


# instance fields
.field private final mFrameCount:I

.field private final mHeight:I

.field private mInstance:J

.field private final mWidth:I


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "instance"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    .line 13
    invoke-static {p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetWidth(J)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mWidth:I

    .line 14
    invoke-static {p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetHeight(J)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mHeight:I

    .line 15
    invoke-static {p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetFrameCount(J)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mFrameCount:I

    .line 16
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/miui/gallery/util/gifdecoder/NSGif;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    .line 20
    .local v0, "inst":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 21
    new-instance v2, Lcom/miui/gallery/util/gifdecoder/NSGif;

    invoke-direct {v2, v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGif;-><init>(J)V

    .line 23
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static create([BII)Lcom/miui/gallery/util/gifdecoder/NSGif;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeCreate([BII)J

    move-result-wide v0

    .line 29
    .local v0, "inst":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v2, Lcom/miui/gallery/util/gifdecoder/NSGif;

    invoke-direct {v2, v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGif;-><init>(J)V

    .line 32
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDecodeFrame(JI)Z
.end method

.method private static native nativeDestroy(J)I
.end method

.method private static native nativeGetFrameCount(J)I
.end method

.method private static native nativeGetFrameDelay(JI)I
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeWriteTo(JLandroid/graphics/Bitmap;)Z
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeDestroy(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    .line 38
    return-void
.end method

.method public decodeFrame(I)Z
    .locals 2
    .param p1, "frameIndex"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeDecodeFrame(JI)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/util/gifdecoder/NSGif;->close()V

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mFrameCount:I

    return v0
.end method

.method public getFrameDelay(I)I
    .locals 4
    .param p1, "frameIndex"    # I

    .prologue
    .line 59
    iget-wide v2, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetFrameDelay(JI)I

    move-result v0

    .line 60
    .local v0, "delay":I
    if-gtz v0, :cond_0

    .line 61
    const/16 v1, 0x64

    .line 63
    :goto_0
    return v1

    :cond_0
    mul-int/lit8 v1, v0, 0xa

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mWidth:I

    return v0
.end method

.method public writeTo(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeWriteTo(JLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method
