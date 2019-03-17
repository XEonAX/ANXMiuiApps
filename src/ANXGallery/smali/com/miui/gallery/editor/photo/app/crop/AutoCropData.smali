.class public Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;
.super Ljava/lang/Object;
.source "AutoCropData.java"


# instance fields
.field public angle:D

.field public rotationResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAutoRotation()Z
    .locals 4

    .prologue
    .line 17
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->rotationResult:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->angle:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->angle:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDegree()F
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->angle:D

    double-to-float v0, v0

    neg-float v0, v0

    return v0
.end method
