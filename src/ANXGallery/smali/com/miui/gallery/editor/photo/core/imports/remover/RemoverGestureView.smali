.class public Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
.super Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.source "RemoverGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Free;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$GesListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurvePaint:Landroid/graphics/Paint;

.field private mCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;",
            ">;"
        }
    .end annotation
.end field

.field private mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

.field private mGesListener:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$GesListener;

.field private mHasRawYuv:Z

.field private mIsProcessing:Z

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mRemoverCallback:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

.field private mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

.field private mRenderRecordIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->FREE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$GesListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mGesListener:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$GesListener;

    .line 77
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->initCurvePaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurvePaint:Landroid/graphics/Paint;

    .line 79
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mIsProcessing:Z

    .line 80
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mHasRawYuv:Z

    .line 81
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mGesListener:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$GesListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mIsProcessing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverCallback:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurvePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->doRemove()V

    return-void
.end method

.method private doRemove()V
    .locals 4

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, "needClearCurves":Z
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 662
    .local v0, "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->isEmpty(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    const/4 v1, 0x1

    .line 668
    .end local v0    # "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    :cond_1
    if-eqz v1, :cond_2

    .line 669
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 674
    :goto_0
    return-void

    .line 673
    :cond_2
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static export(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;Ljava/util/List;)V
    .locals 6
    .param p0, "mask"    # Landroid/graphics/Bitmap;
    .param p1, "removerPaintData"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "curveList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;>;"
    const/4 v5, 0x0

    .line 265
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    iget-object v4, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 272
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 273
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->invert(Landroid/graphics/Matrix;)Z

    .line 276
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 277
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 279
    .local v1, "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getMaskBounds(Landroid/graphics/RectF;IILcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;Ljava/util/List;)V
    .locals 7
    .param p0, "output"    # Landroid/graphics/RectF;
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "removerPaintData"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "II",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "curveList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;>;"
    const/4 v6, 0x0

    .line 285
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 286
    .local v1, "tmp":Landroid/graphics/RectF;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 287
    .local v0, "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 288
    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->computeBounds(Landroid/graphics/RectF;)V

    .line 289
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    invoke-virtual {p0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 293
    .end local v0    # "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    :cond_1
    iget-object v2, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v3, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->invert(Landroid/graphics/Matrix;)Z

    .line 294
    iget-object v2, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget-object v2, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v3, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    iget-object v4, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 297
    iget-object v2, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v3, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 298
    iget-object v2, p3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 299
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    .line 302
    :cond_2
    return-void
.end method

.method private getTmpRecordFile(I)Ljava/io/File;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 831
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "remover-records"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 832
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remover_record_temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 836
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initCurvePaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    .local v0, "curvePaint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    return-object v0
.end method

.method private readRecordBuffer()V
    .locals 10

    .prologue
    .line 802
    const/4 v7, 0x0

    .line 804
    .local v7, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->getTmpRecordFile(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v8, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .local v8, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 806
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 807
    .local v9, "out":Ljava/nio/MappedByteBuffer;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v7, v8

    .line 813
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .end local v9    # "out":Ljava/nio/MappedByteBuffer;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v6

    .line 809
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_2
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 808
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 212
    .local v0, "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 216
    .end local v0    # "curve":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->activated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->access$400(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->draw(Landroid/graphics/Canvas;)V

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    return-void
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onBitmapMatrixChanged()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawableBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mViewBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->set(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 101
    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->reset()V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mIsProcessing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public renderNextBuffer()V
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    .line 797
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->readRecordBuffer()V

    .line 798
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->invalidate()V

    .line 799
    return-void
.end method

.method public renderPreviousBuffer()V
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    .line 787
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    if-gez v0, :cond_0

    .line 789
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    .line 791
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->readRecordBuffer()V

    .line 792
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->invalidate()V

    .line 793
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 226
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mHasRawYuv:Z

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->writeRecordFile()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mHasRawYuv:Z

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->invalidate()V

    .line 231
    return-void
.end method

.method public setElementType(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;)Z
    .locals 1
    .param p1, "elementType"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->activated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsProcessing(Z)V
    .locals 0
    .param p1, "isProcessing"    # Z

    .prologue
    .line 840
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mIsProcessing:Z

    .line 841
    return-void
.end method

.method public setRemoverCallback(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRemoverCallback:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    .line 763
    return-void
.end method

.method public setStrokeSize(I)Z
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mElementType:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->activated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mCurvePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeRecordFile()V
    .locals 10

    .prologue
    .line 772
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    .line 773
    const/4 v7, 0x0

    .line 775
    .local v7, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mRenderRecordIndex:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->getTmpRecordFile(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "rw"

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .local v8, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 777
    .local v9, "out":Ljava/nio/MappedByteBuffer;
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 781
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v7, v8

    .line 783
    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .end local v9    # "out":Ljava/nio/MappedByteBuffer;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v6

    .line 779
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 778
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
