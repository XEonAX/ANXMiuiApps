.class public Lmiui/imagefilters/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private backPixels:[I

.field height:I

.field private mHashCode:I

.field pixels:[I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 16
    iput p1, p0, Lmiui/imagefilters/ImageData;->width:I

    .line 17
    iput p2, p0, Lmiui/imagefilters/ImageData;->height:I

    .line 18
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 19
    return-void
.end method

.method public static bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Lmiui/imagefilters/ImageData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lmiui/imagefilters/ImageData;-><init>(II)V

    .line 57
    .local v0, "imgData":Lmiui/imagefilters/ImageData;
    iget-object v2, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v4, v0, Lmiui/imagefilters/ImageData;->width:I

    iget v7, v0, Lmiui/imagefilters/ImageData;->width:I

    iget v8, v0, Lmiui/imagefilters/ImageData;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 58
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/imagefilters/ImageData;->generalRandomNum(I)I

    .line 59
    return-object v0
.end method

.method public static imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 63
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v1, p0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, p0, Lmiui/imagefilters/ImageData;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generalRandomNum(I)I
    .locals 8
    .param p1, "maxNum"    # I

    .line 26
    iget v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 27
    .local v0, "tempCode":I
    if-nez v0, :cond_2

    .line 28
    const/16 v1, 0x8

    .line 29
    .local v1, "fragCount":I
    iget v2, p0, Lmiui/imagefilters/ImageData;->width:I

    const/16 v3, 0x8

    div-int/2addr v2, v3

    .line 30
    .local v2, "xStep":I
    iget v4, p0, Lmiui/imagefilters/ImageData;->height:I

    div-int/2addr v4, v3

    .line 31
    .local v4, "yStep":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 32
    mul-int v6, v5, v4

    iget v7, p0, Lmiui/imagefilters/ImageData;->width:I

    mul-int/2addr v6, v7

    mul-int v7, v5, v2

    add-int/2addr v6, v7

    .line 33
    .local v6, "index":I
    iget-object v7, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    aget v7, v7, v6

    xor-int/2addr v0, v7

    .line 31
    .end local v6    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35
    .end local v5    # "i":I
    :cond_0
    if-nez v0, :cond_1

    move v0, p1

    .line 36
    :cond_1
    if-gez v0, :cond_2

    neg-int v0, v0

    .line 38
    .end local v1    # "fragCount":I
    .end local v2    # "xStep":I
    .end local v4    # "yStep":I
    :cond_2
    iput v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 39
    rem-int v1, v0, p1

    return v1
.end method

.method public getBackPixels()[I
    .locals 2

    .line 43
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    array-length v0, v0

    iget-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    .line 46
    :cond_1
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    return-object v0
.end method

.method public swapPixels()V
    .locals 2

    .line 50
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 51
    .local v0, "temp":[I
    iget-object v1, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    iput-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 52
    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    .line 53
    return-void
.end method
