.class public Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;
.super Ljava/lang/Object;
.source "WatermarkDialog.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivation:Z

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgPostRect:Landroid/graphics/RectF;

.field private mBitmapHeight:F

.field private mBitmapLoadingListener:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;

.field private mBitmapWidth:F

.field private mCurrentPieceIndex:I

.field private mDefaultLocationX:F

.field private mDefaultLocationY:F

.field private mDialogStatusData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

.field private mIsCorrection:Z

.field private mIsFirstCount:Z

.field private mIsFromParcel:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOutLineRect:Landroid/graphics/RectF;

.field private mPaddingTop:I

.field private mResource:Landroid/content/res/Resources;

.field private mReverseColor:Z

.field private mRotateDegrees:F

.field private mScaleMultipleOrigin:F

.field private mTemRect:Landroid/graphics/RectF;

.field private mUserLocationX:F

.field private mUserLocationY:F

.field private mUserScaleMultiple:F

.field private mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

.field private mWatermarkTextPieces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;",
            ">;"
        }
    .end annotation
.end field

.field private mbgPostLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$2;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFirstCount:Z

    .line 68
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 69
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 129
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mbgPostLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;F)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "watermarkInfo"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;
    .param p3, "scaleMultipleOrigin"    # F

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFirstCount:Z

    .line 68
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 69
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 129
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mbgPostLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 74
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mResource:Landroid/content/res/Resources;

    .line 75
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    .line 76
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 577
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;-><init>()V

    .line 578
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDialogStatusData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .line 579
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 583
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFromParcel:Z

    .line 584
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mResource:Landroid/content/res/Resources;

    .line 585
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->init()V

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->countLocation(ZF)V

    .line 587
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;)Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapLoadingListener:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;

    return-object v0
.end method

.method private canvasTranslate(Landroid/graphics/Canvas;ZZ)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # Z
    .param p3, "rotate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 178
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    add-float v0, v2, v3

    .line 179
    .local v0, "dx":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    add-float v1, v2, v3

    .line 180
    .local v1, "dy":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getScaleMultiple()F

    move-result v2

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getScaleMultiple()F

    move-result v3

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 184
    :cond_0
    if-eqz p3, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getRotateDegrees()F

    move-result v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 187
    :cond_1
    return-void
.end method

.method private getScaleMultiple()F
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getTransRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 199
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getScaleMultiple()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v4

    .line 201
    .local v1, "widthOffset":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getScaleMultiple()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v4

    .line 202
    .local v0, "heightOffset":F
    neg-float v2, v1

    neg-float v3, v0

    invoke-virtual {p2, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 203
    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->offsetRect(Landroid/graphics/RectF;)V

    .line 204
    return-void
.end method

.method private offsetRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 172
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    add-float v0, v2, v3

    .line 173
    .local v0, "x":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    add-float v1, v2, v3

    .line 174
    .local v1, "y":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 175
    return-void
.end method


# virtual methods
.method public appendUserLocationX(F)V
    .locals 1
    .param p1, "userLocationX"    # F

    .prologue
    .line 299
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    .line 300
    return-void
.end method

.method public appendUserLocationY(F)V
    .locals 1
    .param p1, "userLocationY"    # F

    .prologue
    .line 304
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    .line 305
    return-void
.end method

.method public contains(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 247
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 248
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 249
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getRotateDegrees()F

    move-result v6

    neg-float v6, v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 250
    const/4 v5, 0x2

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    .line 251
    .local v4, "tem":[F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 252
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 255
    .local v0, "contains":Z
    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    .line 256
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 257
    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    .line 258
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 259
    .local v3, "minDistance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getOutlineRect()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    invoke-direct {p0, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getTransRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 261
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    .line 272
    .end local v2    # "i":I
    .end local v3    # "minDistance":F
    :cond_0
    return v0

    .line 265
    .restart local v2    # "i":I
    .restart local v3    # "minDistance":F
    :cond_1
    const/4 v5, 0x0

    aget v5, v4, v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/4 v5, 0x1

    aget v5, v4, v5

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 266
    .local v1, "distance":F
    cmpg-float v5, v1, v3

    if-gez v5, :cond_2

    .line 267
    move v3, v1

    .line 268
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    .line 259
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public countLocation(ZF)V
    .locals 3
    .param p1, "isTextChange"    # Z
    .param p2, "maxWidth"    # F

    .prologue
    .line 309
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFirstCount:Z

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    .line 311
    .local v0, "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->configTextPaint()V

    .line 312
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->countTextInDialog()V

    goto :goto_0

    .line 314
    .end local v0    # "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFirstCount:Z

    .line 321
    :cond_1
    :goto_1
    return-void

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->configTextPaint()V

    .line 317
    if-eqz p1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->countTextInDialog()V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    invoke-direct {p0, p1, v1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->canvasTranslate(Landroid/graphics/Canvas;ZZ)V

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPostRect:[F

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 163
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPostRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    .line 166
    .local v0, "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 168
    .end local v0    # "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    return-void
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getColor()I

    move-result v0

    return v0
.end method

.method public getDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 4
    .param p1, "dialogStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getUserLocationX()F

    move-result v3

    iput v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    .line 487
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getUserLocationY()F

    move-result v3

    iput v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    .line 488
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getUserScaleMultiple()F

    move-result v3

    iput v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    .line 489
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getRotateDegrees()F

    move-result v3

    iput v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    .line 490
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    iput-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .line 491
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mReverseColor:Z

    iput-boolean v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->isReverseColor:Z

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    .line 494
    .local v2, "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;-><init>()V

    .line 495
    .local v1, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getColor()I

    move-result v3

    iput v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 496
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getTextTransparent()F

    move-result v3

    iput v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    .line 497
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 498
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->isBoldText()Z

    move-result v3

    iput-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    .line 499
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->isShadow()Z

    move-result v3

    iput-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    .line 500
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 501
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->text:Ljava/lang/String;

    .line 502
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    aput-object v1, v3, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    .end local v2    # "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    :cond_0
    return-void
.end method

.method public getOutLineRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mOutLineRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getTransRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 196
    return-void
.end method

.method public getRotateDegrees()F
    .locals 5

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 213
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mRotateDegrees:F

    .line 214
    .local v0, "degrees":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    add-float/2addr v0, v4

    .line 215
    :cond_0
    rem-float/2addr v0, v4

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 217
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 218
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 219
    const/4 v0, 0x0

    .line 221
    :cond_1
    const v1, 0x43b18000    # 355.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 222
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x42aa0000    # 85.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x42be0000    # 95.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 226
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 227
    const/high16 v0, 0x42b40000    # 90.0f

    .line 229
    :cond_3
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x432f0000    # 175.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    const/high16 v1, 0x43390000    # 185.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 230
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 231
    const/high16 v0, 0x43340000    # 180.0f

    .line 233
    :cond_4
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    const v1, 0x43848000    # 265.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    const v1, 0x43898000    # 275.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 234
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 235
    const/high16 v0, 0x43870000    # 270.0f

    .line 237
    :cond_5
    return v0
.end method

.method public getSampleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watermark_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v0

    return-object v0
.end method

.method public getTextTransparent()F
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getTextTransparent()F

    move-result v0

    return v0
.end method

.method public getUserLocationX()F
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    return v0
.end method

.method public getUserLocationY()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    return v0
.end method

.method public getUserScaleMultiple()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    return v0
.end method

.method public init()V
    .locals 12

    .prologue
    const v5, 0x3e99999a    # 0.3f

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mResource:Landroid/content/res/Resources;

    .line 85
    .local v1, "res":Landroid/content/res/Resources;
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    .line 86
    iput v9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    .line 88
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 89
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    .line 92
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->width:F

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v3

    .line 95
    .local v3, "width":F
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->height:F

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v4

    .line 96
    .local v4, "height":F
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->textPieceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    .line 97
    .local v2, "textPieceInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;-><init>(Landroid/content/res/Resources;Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;FFF)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v2    # "textPieceInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFromParcel:Z

    if-eqz v0, :cond_6

    .line 101
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPost:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPaint:Landroid/graphics/Paint;

    .line 108
    :cond_3
    :goto_1
    iput v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    .line 109
    iput v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    .line 110
    iput v9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    .line 111
    iput v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mRotateDegrees:F

    .line 112
    iput-boolean v11, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsCorrection:Z

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    neg-float v5, v3

    div-float/2addr v5, v10

    neg-float v6, v4

    div-float/2addr v6, v10

    div-float v7, v3, v10

    div-float v8, v4, v10

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mOutLineRect:Landroid/graphics/RectF;

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mTemRect:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mMatrix:Landroid/graphics/Matrix;

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPostRect:[F

    if-eqz v0, :cond_4

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPostRect:[F

    aget v5, v5, v11

    invoke-static {v5}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v6, v6, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPostRect:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v7, v7, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPostRect:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-static {v7}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v8, v8, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPostRect:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-static {v8}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPostRect:Landroid/graphics/RectF;

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBgPostRect:Landroid/graphics/RectF;

    neg-float v5, v3

    div-float/2addr v5, v10

    neg-float v6, v4

    div-float/2addr v6, v10

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 123
    :cond_4
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFromParcel:Z

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDialogStatusData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setDialogWithStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    .line 125
    iput-boolean v11, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mIsFromParcel:Z

    .line 127
    :cond_5
    return-void

    .line 104
    :cond_6
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPost:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mbgPostLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v0, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_1
.end method

.method public isActivation()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mActivation:Z

    return v0
.end method

.method public isBoldText()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->isBoldText()Z

    move-result v0

    return v0
.end method

.method public isDialogEnable()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public isReverseColor()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mReverseColor:Z

    return v0
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->isShadow()Z

    move-result v0

    return v0
.end method

.method public isWatermark()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method public refreshRotateDegree()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getRotateDegrees()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mRotateDegrees:F

    .line 295
    return-void
.end method

.method public reverseColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 473
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mReverseColor:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mReverseColor:Z

    .line 474
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    .line 475
    .local v0, "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setColor(I)V

    goto :goto_1

    .line 473
    .end local v0    # "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method

.method public setActivation(Z)V
    .locals 0
    .param p1, "activation"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mActivation:Z

    .line 376
    return-void
.end method

.method public setBitmapLoadingListener(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;)V
    .locals 0
    .param p1, "bitmapLoadingListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapLoadingListener:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;

    .line 548
    return-void
.end method

.method public setBitmapSize(FF)V
    .locals 0
    .param p1, "bitmapWidth"    # F
    .param p2, "bitmapHeight"    # F

    .prologue
    .line 389
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapWidth:F

    .line 390
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapHeight:F

    .line 391
    return-void
.end method

.method public setBoldText(Z)V
    .locals 2
    .param p1, "textBold"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setBoldText(Z)V

    .line 449
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setColor(I)V

    .line 424
    return-void
.end method

.method public setDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "b"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 381
    return-void
.end method

.method public setDialogWithStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 4
    .param p1, "dialogStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 508
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    if-eqz v3, :cond_1

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 510
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    .line 511
    .local v2, "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStatusDatas:[Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    aget-object v1, v3, v0

    .line 512
    .local v1, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    iget v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setColor(I)V

    .line 513
    iget v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setTextTransparent(F)V

    .line 514
    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 515
    iget-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setBoldText(Z)V

    .line 516
    iget-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setShadow(Z)V

    .line 517
    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 518
    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setText(Ljava/lang/String;)V

    .line 520
    :cond_0
    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "i":I
    .end local v1    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    .end local v2    # "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    :cond_1
    move-object v1, p1

    .line 524
    .restart local v1    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    iget v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setColor(I)V

    .line 525
    iget v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setTextTransparent(F)V

    .line 526
    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 527
    iget-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setBoldText(Z)V

    .line 528
    iget-boolean v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setShadow(Z)V

    .line 529
    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 531
    .end local v1    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    :cond_2
    iget v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setUserLocationX(F)V

    .line 532
    iget v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setUserLocationY(F)V

    .line 533
    iget v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setUserScaleMultiple(F)V

    .line 534
    iget v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setRotateDegrees(F)V

    .line 535
    iget-boolean v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->isReverseColor:Z

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mReverseColor:Z

    .line 536
    return-void
.end method

.method public setDisplaySize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 395
    div-float v0, p1, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 396
    div-float v0, p2, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 398
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetX:F

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 400
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapWidth:F

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 405
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetY:F

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 407
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapHeight:F

    sub-float v1, p2, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 408
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mPaddingTop:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 414
    :cond_1
    :goto_1
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetX:F

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    .line 403
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapWidth:F

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    goto :goto_0

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->offsetY:F

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 411
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mBitmapHeight:F

    sub-float v1, p2, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    .line 412
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mPaddingTop:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    goto :goto_1
.end method

.method public setDrawOutline(Z)V
    .locals 3
    .param p1, "drawOutline"    # Z

    .prologue
    .line 467
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    .line 468
    .local v0, "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setDrawOutline(Z)V

    goto :goto_0

    .line 470
    .end local v0    # "watermarkTextPiece":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
    :cond_0
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 539
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mPaddingTop:I

    .line 540
    return-void
.end method

.method public setRotateDegrees(F)V
    .locals 0
    .param p1, "rotateDegrees"    # F

    .prologue
    .line 289
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mRotateDegrees:F

    .line 290
    return-void
.end method

.method public setScaleMultipleOrigin(F)V
    .locals 0
    .param p1, "originScale"    # F

    .prologue
    .line 418
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    .line 419
    return-void
.end method

.method public setShadow(Z)V
    .locals 2
    .param p1, "shadow"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setShadow(Z)V

    .line 434
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setText(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 2
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 454
    return-void
.end method

.method public setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 2
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 444
    return-void
.end method

.method public setTextTransparent(F)V
    .locals 2
    .param p1, "transparentProgress"    # F

    .prologue
    .line 438
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkTextPieces:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mCurrentPieceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->setTextTransparent(F)V

    .line 439
    return-void
.end method

.method public setUserLocationX(F)V
    .locals 0
    .param p1, "userLocationX"    # F

    .prologue
    .line 458
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationX:F

    .line 459
    return-void
.end method

.method public setUserLocationY(F)V
    .locals 0
    .param p1, "userLocationY"    # F

    .prologue
    .line 463
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserLocationY:F

    .line 464
    return-void
.end method

.method public setUserScaleMultiple(F)V
    .locals 3
    .param p1, "scaleMultiple"    # F

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    const v1, 0x3e99999a    # 0.3f

    .line 282
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    .line 283
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    .line 284
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mUserScaleMultiple:F

    .line 285
    :cond_1
    return-void
.end method

.method public toggleMirror()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 567
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;-><init>()V

    .line 568
    .local v0, "dialogStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->getDialogStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    .line 569
    invoke-static {p1, p2, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V

    .line 570
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mWatermarkInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    invoke-static {p1, p2, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V

    .line 571
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mScaleMultipleOrigin:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 572
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 573
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->mDefaultLocationY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 574
    return-void
.end method
