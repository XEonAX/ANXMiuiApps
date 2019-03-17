.class public Lcom/miui/gallery/Config$TileConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileConfig"
.end annotation


# static fields
.field private static sCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/16 v0, 0xc

    sput v0, Lcom/miui/gallery/Config$TileConfig;->sCacheCount:I

    return-void
.end method

.method public static getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static getMaxCacheCount()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/miui/gallery/Config$TileConfig;->sCacheCount:I

    return v0
.end method

.method public static needUseTile(II)Z
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 226
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
