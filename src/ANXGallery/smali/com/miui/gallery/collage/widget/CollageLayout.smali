.class public Lcom/miui/gallery/collage/widget/CollageLayout;
.super Landroid/view/ViewGroup;
.source "CollageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;,
        Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;,
        Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;,
        Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;,
        Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;,
        Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;
    }
.end annotation


# instance fields
.field private mActivating:Z

.field private mActiveIndex:I

.field private mActiveLineWidth:I

.field private mActiveLineWidthWhite:I

.field private mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

.field private mContext:Landroid/content/Context;

.field private mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

.field private mDensity:F

.field private mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

.field private mIgnoreEdgeMargin:Z

.field private mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

.field private mMargin:F

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

.field private mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    .line 43
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .line 45
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:F

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    .line 53
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    .line 55
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    .line 56
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mIgnoreEdgeMargin:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    .line 43
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .line 45
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:F

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    .line 53
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    .line 55
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    .line 56
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mIgnoreEdgeMargin:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    .line 43
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .line 45
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:F

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    .line 53
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    .line 55
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    .line 56
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mIgnoreEdgeMargin:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/collage/widget/CollageLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->doVibrator()V

    return-void
.end method

.method static synthetic access$1500(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/RectF;
    .param p1, "x1"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getCollageImageViewRect(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/widget/CollageLayout;FF)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout;->findSingleView(FF)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/collage/widget/CollageLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/widget/CollageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/collage/widget/CollageLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setActive(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/ControlPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    return-object v0
.end method

.method private doVibrator()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->performHapticFeedback(I)Z

    .line 601
    return-void
.end method

.method private findSingleView(FF)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 311
    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 312
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 313
    .local v2, "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v2    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 310
    .restart local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .restart local v2    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v2    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getCollageImageViewRect(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 2
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "collageImageView"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 454
    invoke-virtual {p1, p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getDisplayRect(Landroid/graphics/RectF;)V

    .line 455
    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 456
    return-void
.end method

.method private getLeftPadding()I
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingStart()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getRightPadding()I
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 77
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->setWillNotDraw(Z)V

    .line 79
    new-instance v0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-direct {v0, p1}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setControlListener(Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mStrokeColor:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    .line 84
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 85
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    .line 87
    :cond_0
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 88
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDensity:F

    .line 93
    return-void
.end method

.method private isChildActivating()Z
    .locals 3

    .prologue
    .line 727
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 728
    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 729
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->isActivating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    const/4 v2, 0x1

    .line 733
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :goto_1
    return v2

    .line 727
    .restart local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setActive(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    .line 322
    return-void
.end method


# virtual methods
.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->dismiss()V

    .line 328
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    .line 107
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    if-eq v3, v5, :cond_0

    .line 109
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    invoke-virtual {p0, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 110
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 111
    .local v1, "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget-object v3, v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForClip()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 114
    iget v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    .line 115
    .local v2, "strokeWidth":I
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v3, v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForClip()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v3, v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForClip()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v1    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    .end local v2    # "strokeWidth":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->draw(Landroid/graphics/Canvas;)V

    .line 125
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 131
    .local v0, "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    iget-object v2, v0, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForClip()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 133
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return v1
.end method

.method public getMargin()F
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:F

    return v0
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->isChildActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnoreEdgeMargin()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mIgnoreEdgeMargin:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getLeftPadding()I

    move-result v17

    .line 140
    .local v17, "paddingLeft":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getRightPadding()I

    move-result v18

    .line 141
    .local v18, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingTop()I

    move-result v19

    .line 142
    .local v19, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingBottom()I

    move-result v16

    .line 143
    .local v16, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getWidth()I

    move-result v1

    sub-int v1, v1, v17

    sub-int v20, v1, v18

    .line 144
    .local v20, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getHeight()I

    move-result v1

    sub-int v1, v1, v19

    sub-int v13, v1, v16

    .line 146
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v12

    .line 147
    .local v12, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_1

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 149
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 150
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 151
    .local v15, "lp":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/collage/widget/CollageLayout;->mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    iget-object v2, v15, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move/from16 v0, v20

    int-to-float v3, v0

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:F

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/miui/gallery/collage/widget/CollageLayout;->mIgnoreEdgeMargin:Z

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->processorImageLocation(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;FFFZ)V

    .line 152
    iget-object v1, v15, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getLeft()I

    move-result v1

    add-int v1, v1, v17

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 153
    .local v9, "childLeft":I
    iget-object v1, v15, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getTop()I

    move-result v1

    add-int v1, v1, v19

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 154
    .local v11, "childTop":I
    iget-object v1, v15, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getRight()I

    move-result v1

    add-int v1, v1, v17

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 155
    .local v10, "childRight":I
    iget-object v1, v15, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getBottom()I

    move-result v1

    add-int v1, v1, v19

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 156
    .local v8, "childBottom":I
    invoke-virtual {v7, v9, v11, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 147
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    .end local v15    # "lp":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 159
    .end local v7    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout;->measureChildren(II)V

    .line 99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->onUp()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBitmapExchangeListener(Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;)V
    .locals 0
    .param p1, "bitmapExchangeListener"    # Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    .line 698
    return-void
.end method

.method public setCollageMargin(FZ)V
    .locals 1
    .param p1, "margin"    # F
    .param p2, "ignoreEdgeMargin"    # Z

    .prologue
    .line 654
    iput-boolean p2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mIgnoreEdgeMargin:Z

    .line 655
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDensity:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:F

    .line 656
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->requestLayout()V

    .line 657
    return-void
.end method

.method public setMasks([Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "masks"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v0

    .line 661
    .local v0, "childCount":I
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    const/4 v2, 0x1

    .line 662
    .local v2, "hasMask":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 663
    invoke-virtual {p0, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 664
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    if-eqz v2, :cond_1

    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 665
    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 662
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 661
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v2    # "hasMask":Z
    .end local v3    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 667
    .restart local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .restart local v2    # "hasMask":Z
    .restart local v3    # "i":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 670
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_2
    return-void
.end method

.method public setRadius([F)V
    .locals 5
    .param p1, "radius"    # [F

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v0

    .line 674
    .local v0, "childCount":I
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    const/4 v2, 0x1

    .line 675
    .local v2, "hasRadius":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 676
    invoke-virtual {p0, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 677
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    if-eqz v2, :cond_1

    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 678
    aget v4, p1, v3

    invoke-virtual {v1, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->setRadius(F)V

    .line 675
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 674
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v2    # "hasRadius":Z
    .end local v3    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 680
    .restart local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .restart local v2    # "hasRadius":Z
    .restart local v3    # "i":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->setRadius(F)V

    goto :goto_2

    .line 683
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_2
    return-void
.end method

.method public setReplaceImageListener(Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;)V
    .locals 0
    .param p1, "replaceImageListener"    # Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    .line 687
    return-void
.end method
