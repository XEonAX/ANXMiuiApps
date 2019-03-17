.class public Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;
.super Lcom/miui/gallery/util/ReusedBitmapCache;
.source "ImageFeatureReusedBitCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method protected getMaxCount()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x3

    return v0
.end method

.method protected needMutable()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected needRecycle()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
