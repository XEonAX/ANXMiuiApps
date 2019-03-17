.class public abstract Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.super Ljava/lang/Object;
.source "CameraDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Characteristics"
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamDvcInfChar"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static orientationIsValid(I)Z
    .locals 3
    .param p0, "angle"    # I

    .prologue
    const/4 v0, 0x0

    .line 199
    rem-int/lit8 v1, p0, 0x5a

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Provided display orientation is not divisible by 90"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    :goto_0
    return v0

    .line 203
    :cond_0
    if-ltz p0, :cond_1

    const/16 v1, 0x10e

    if-le p0, v1, :cond_2

    .line 204
    :cond_1
    sget-object v1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Provided display orientation is outside expected range"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract canDisableShutterSound()Z
.end method

.method public getJpegOrientation(I)I
    .locals 1
    .param p1, "currentDisplayOrientation"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result v0

    return v0
.end method

.method public getPreviewOrientation(I)I
    .locals 1
    .param p1, "currentDisplayOrientation"    # I

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result v0

    return v0
.end method

.method public getPreviewTransform(ILandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "currentDisplayOrientation"    # I
    .param p2, "surfaceDimensions"    # Landroid/graphics/RectF;

    .prologue
    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "currentDisplayOrientation"    # I
    .param p2, "surfaceDimensions"    # Landroid/graphics/RectF;
    .param p3, "desiredBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 183
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->orientationIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    .local v0, "transform":Landroid/graphics/Matrix;
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0
.end method

.method protected getRelativeImageOrientation(IZ)I
    .locals 3
    .param p1, "currentDisplayOrientation"    # I
    .param p2, "compensateForMirroring"    # Z

    .prologue
    .line 125
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->orientationIsValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const/4 v0, 0x0

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v1

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x168

    .line 132
    if-eqz p2, :cond_0

    .line 133
    rsub-int v1, v0, 0x168

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0

    .line 138
    :cond_3
    sget-object v1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Camera is facing unhandled direction"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract isFacingBack()Z
.end method

.method public abstract isFacingFront()Z
.end method
