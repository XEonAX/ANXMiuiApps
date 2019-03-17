.class public abstract Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
.super Ljava/lang/Object;
.source "DoodleNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mCorrectionDegrees:F

.field protected mDegrees:F

.field protected mEndPoint:Landroid/graphics/PointF;

.field private mIsInit:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field protected final mOutLineOffsetX:F

.field protected final mOutLineOffsetY:F

.field protected mOutLineRectF:Landroid/graphics/RectF;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mRectF:Landroid/graphics/RectF;

.field protected mRectFTemp:Landroid/graphics/RectF;

.field protected mRectTemp:Landroid/graphics/Rect;

.field protected mRotateX:F

.field protected mRotateY:F

.field protected mScale:F

.field protected mStartPoint:Landroid/graphics/PointF;

.field private mStrokeRect:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field protected mUserLocationX:F

.field protected mUserLocationY:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStrokeRect:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectTemp:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectFTemp:Landroid/graphics/RectF;

    .line 33
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    .line 34
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mScale:F

    .line 37
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    .line 40
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    .line 41
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStartPoint:Landroid/graphics/PointF;

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mEndPoint:Landroid/graphics/PointF;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mIsInit:Z

    .line 47
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mCorrectionDegrees:F

    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->initPaint()V

    .line 53
    const v0, 0x7f0b0178

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineOffsetX:F

    .line 54
    const v0, 0x7f0b0179

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineOffsetY:F

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->init(Landroid/content/res/Resources;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 306
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;-><init>(Landroid/content/res/Resources;)V

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStrokeWidth:F

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mColor:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    .line 314
    const-class v0, Landroid/graphics/PointF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStartPoint:Landroid/graphics/PointF;

    .line 315
    const-class v0, Landroid/graphics/PointF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mEndPoint:Landroid/graphics/PointF;

    .line 316
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    return-void
.end method

.method private offsetRect(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 147
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 148
    return-void
.end method

.method private refreshRotateCenter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    const-string v3, "DoodleNode"

    const-string v4, "--- refreshRotateCenter ---"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    .line 226
    .local v1, "preRotateX":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    .line 227
    .local v2, "preRotateY":F
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countRotateX()F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    .line 228
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countRotateY()F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    .line 229
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v3, "DoodleNode"

    const-string v4, "--- refreshRotateCenter real ---"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v3, 0x2

    new-array v0, v3, [F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    aput v3, v0, v5

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    aput v3, v0, v6

    .line 232
    .local v0, "except":[F
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 233
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    invoke-virtual {v3, v4, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 234
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 235
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    aget v4, v0, v5

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    .line 236
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    aget v4, v0, v6

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    .line 237
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countDecoration()V

    goto :goto_0
.end method

.method private static resolveRotateDegree(FF)F
    .locals 7
    .param p0, "currentDegree"    # F
    .param p1, "correctionDegree"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 241
    move v0, p0

    .line 242
    .local v0, "degrees":F
    cmpg-float v1, v0, v6

    if-gez v1, :cond_0

    add-float/2addr v0, v5

    .line 243
    :cond_0
    rem-float/2addr v0, v5

    .line 244
    cmpl-float v1, v0, v6

    if-lez v1, :cond_1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 247
    :cond_1
    sub-float v1, v5, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 248
    const/4 v0, 0x0

    .line 250
    :cond_2
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_3

    sub-float v1, v2, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    add-float v1, v2, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 251
    const/high16 v0, 0x42b40000    # 90.0f

    .line 253
    :cond_3
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_4

    sub-float v1, v3, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    add-float v1, v3, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 254
    const/high16 v0, 0x43340000    # 180.0f

    .line 256
    :cond_4
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_5

    sub-float v1, v4, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    add-float v1, v4, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 257
    const/high16 v0, 0x43870000    # 270.0f

    .line 259
    :cond_5
    return v0
.end method


# virtual methods
.method public appendDegrees(F)V
    .locals 3
    .param p1, "degrees"    # F

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 157
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 158
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 159
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 160
    :cond_1
    return-void
.end method

.method public abstract appendScale(F)V
.end method

.method public appendUserLocationX(F)V
    .locals 1
    .param p1, "distanceX"    # F

    .prologue
    .line 132
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    .line 133
    return-void
.end method

.method public appendUserLocationY(F)V
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    .line 137
    return-void
.end method

.method protected configCanvas(Landroid/graphics/Canvas;Z)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rotate"    # Z

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateDegrees()F

    move-result v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 144
    :cond_0
    return-void
.end method

.method public contains(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getStrokeRectF(Landroid/graphics/RectF;)V

    .line 109
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectFTemp:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->offsetRect(Landroid/graphics/RectF;)V

    .line 110
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateDegrees()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 112
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v6

    aput p2, v0, v7

    .line 113
    .local v0, "tem":[F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectFTemp:Landroid/graphics/RectF;

    aget v2, v0, v6

    aget v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method protected abstract count()V
.end method

.method public countDecoration()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 87
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v4

    .line 90
    .local v1, "widthOffset":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v4

    .line 92
    .local v0, "heightOffset":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 94
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineOffsetX:F

    neg-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineOffsetY:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 96
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStrokeRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 97
    return-void
.end method

.method public abstract countRotateX()F
.end method

.method public abstract countRotateY()F
.end method

.method public countSize()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->count()V

    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countDecoration()V

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countRotateX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countRotateY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    .line 84
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getDoodleName()Ljava/lang/String;
.end method

.method public abstract getDoodleType()Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;
.end method

.method public getRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    return-void
.end method

.method public getRotateDegrees()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    return v0
.end method

.method public getRotateX()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    return v0
.end method

.method public getStrokeRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mOutLineRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 101
    return-void
.end method

.method public getUserLocationX()F
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    return v0
.end method

.method public getUserLocationY()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    return v0
.end method

.method protected abstract init(Landroid/content/res/Resources;)V
.end method

.method public initForParcelable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStrokeWidth:F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->setPaintSize(F)V

    .line 284
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mColor:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->setPaintColor(I)V

    .line 285
    return-void
.end method

.method protected abstract onReceivePosition(FFZ)V
.end method

.method public abstract processOnDownEvent(FF)V
.end method

.method public processOnUp()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->refreshRotateCenter()V

    .line 187
    return-void
.end method

.method public processRotateEvent(FFFFFFFF)V
    .locals 14
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "distanceX"    # F
    .param p6, "distanceY"    # F
    .param p7, "rotateIconX"    # F
    .param p8, "rotateIconY"    # F

    .prologue
    .line 190
    move/from16 v0, p3

    .line 191
    .local v0, "currentX":F
    move/from16 v1, p4

    .line 192
    .local v1, "currentY":F
    iget v10, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    iget v11, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    add-float v8, v10, v11

    .line 193
    .local v8, "rotateX":F
    iget v10, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    iget v11, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    add-float v9, v10, v11

    .line 195
    .local v9, "rotateY":F
    sub-float v10, p8, v9

    float-to-double v10, v10

    sub-float v12, p7, v8

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 196
    .local v4, "mBaseDegrees":D
    sub-float v10, v1, v9

    float-to-double v10, v10

    sub-float v12, v0, v8

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 197
    .local v6, "mCurrentDegrees":D
    sub-double v2, v6, v4

    .line 198
    .local v2, "degrees":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 199
    double-to-float v10, v2

    invoke-virtual {p0, v10}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->appendDegrees(F)V

    .line 200
    iget v10, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    iget v11, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mCorrectionDegrees:F

    invoke-static {v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->resolveRotateDegree(FF)F

    move-result v10

    invoke-virtual {p0, v10}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->setDegrees(F)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countDecoration()V

    .line 202
    return-void
.end method

.method public abstract processScaleEvent(FFFFFFFF)V
.end method

.method public receivePosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mIsInit:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 171
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mIsInit:Z

    .line 172
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->onReceivePosition(FFZ)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->onReceivePosition(FFZ)V

    goto :goto_0
.end method

.method protected refreshPointByRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "start"    # Landroid/graphics/PointF;
    .param p2, "end"    # Landroid/graphics/PointF;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 220
    return-void
.end method

.method protected refreshRectByPoint()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->refreshRectByPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 206
    return-void
.end method

.method protected refreshRectByPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "start"    # Landroid/graphics/PointF;
    .param p2, "end"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    move v0, v2

    .line 210
    .local v0, "left":Z
    :goto_0
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v1, v2

    .line 211
    .local v1, "top":Z
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    :goto_2
    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 212
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    iget v2, p1, Landroid/graphics/PointF;->x:F

    :goto_3
    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 213
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    iget v2, p1, Landroid/graphics/PointF;->y:F

    :goto_4
    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 214
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRectF:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    iget v2, p1, Landroid/graphics/PointF;->y:F

    :goto_5
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 215
    return-void

    .end local v0    # "left":Z
    .end local v1    # "top":Z
    :cond_0
    move v0, v3

    .line 209
    goto :goto_0

    .restart local v0    # "left":Z
    :cond_1
    move v1, v3

    .line 210
    goto :goto_1

    .line 211
    .restart local v1    # "top":Z
    :cond_2
    iget v2, p2, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 212
    :cond_3
    iget v2, p2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    .line 213
    :cond_4
    iget v2, p2, Landroid/graphics/PointF;->y:F

    goto :goto_4

    .line 214
    :cond_5
    iget v2, p2, Landroid/graphics/PointF;->y:F

    goto :goto_5
.end method

.method public setDegrees(F)V
    .locals 3
    .param p1, "degrees"    # F

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 163
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 164
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 165
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mDegrees:F

    .line 166
    :cond_1
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mColor:I

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    return-void
.end method

.method public setPaintSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStrokeWidth:F

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 294
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 295
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 297
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mUserLocationY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 298
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateDegrees()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 299
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 300
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mRotateY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 303
    return-void
.end method
