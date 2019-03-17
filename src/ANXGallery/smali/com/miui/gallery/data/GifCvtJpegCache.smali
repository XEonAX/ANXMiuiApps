.class public Lcom/miui/gallery/data/GifCvtJpegCache;
.super Ljava/lang/Object;
.source "GifCvtJpegCache.java"


# instance fields
.field private mCurrentLoopPosition:I

.field private final mDestinations:[Ljava/lang/String;

.field private final mInitSuccess:Z

.field private final mSize:I

.field private final mSources:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v3, p0, Lcom/miui/gallery/data/GifCvtJpegCache;->mCurrentLoopPosition:I

    .line 20
    if-lez p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/util/Utils;->assertTrue(Z)V

    .line 21
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/miui/gallery/data/GifCvtJpegCache;->mInitSuccess:Z

    .line 22
    iput p2, p0, Lcom/miui/gallery/data/GifCvtJpegCache;->mSize:I

    .line 23
    new-array v1, p2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/GifCvtJpegCache;->mSources:[Ljava/lang/String;

    .line 24
    new-array v1, p2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/GifCvtJpegCache;->mDestinations:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p2, :cond_3

    .line 26
    iget-object v1, p0, Lcom/miui/gallery/data/GifCvtJpegCache;->mDestinations:[Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gif_cvt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_1
    move v1, v3

    .line 20
    goto :goto_0

    :cond_2
    move v2, v3

    .line 21
    goto :goto_1

    .line 28
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method
