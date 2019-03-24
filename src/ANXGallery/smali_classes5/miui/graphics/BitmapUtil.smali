.class public Lmiui/graphics/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final COLOR_BYTE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer(Landroid/graphics/Bitmap;)[B
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "ret":[B
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 23
    .local v1, "baseWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 24
    .local v3, "baseHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    div-int/lit8 v12, v4, 0x4

    .line 25
    .local v12, "pixelSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    div-int/lit8 v7, v4, 0x4

    .line 28
    .local v7, "strideSize":I
    :try_start_0
    new-array v4, v12, [I

    move-object v13, v4

    .line 29
    .local v13, "basePixels":[I
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v13

    move v10, v1

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    new-array v4, v4, [B

    move-object v0, v4

    .line 32
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v13

    if-ge v4, v5, :cond_0

    .line 34
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v6, v13, v4

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 35
    mul-int/lit8 v5, v4, 0x4

    aget v6, v13, v4

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 36
    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v2

    aget v6, v13, v4

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 37
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v6, v13, v4

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    .end local v4    # "i":I
    .end local v13    # "basePixels":[I
    :cond_0
    goto :goto_1

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "BitmapUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to get buffer, baseWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", baseHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .end local v1    # "baseWidth":I
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "baseHeight":I
    .end local v7    # "strideSize":I
    .end local v12    # "pixelSize":I
    :goto_1
    goto :goto_3

    .line 44
    :cond_1
    :try_start_1
    const-class v1, Landroid/graphics/Bitmap;

    const-string v3, "mBuffer"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 51
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_2
    goto :goto_3

    .line 49
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BitmapUtil"

    const-string v3, "failed to get Bitmap.mBuffer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_3

    .line 47
    :catch_2
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BitmapUtil"

    const-string v3, "get Bitmap.mBuffer failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 53
    :goto_3
    return-object v0
.end method
