.class public Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
.super Landroid/view/ViewGroup;
.source "CollageStitchingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;,
        Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;,
        Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;,
        Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;,
        Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;,
        Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;
    }
.end annotation


# instance fields
.field private final PROPERTY_NAME_ALPHA:Ljava/lang/String;

.field private final PROPERTY_NAME_MATRIX:Ljava/lang/String;

.field private final PROPERTY_NAME_RECT:Ljava/lang/String;

.field private mActiveLineWidth:I

.field private mActiveLineWidthWhite:I

.field private mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

.field private mBackGroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mCanvasRect:Landroid/graphics/RectF;

.field private mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

.field private mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDragModeDetector:Landroid/view/GestureDetector;

.field private mEnableDragMode:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/miui/gallery/collage/widget/CollageImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mItemDragHelper:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

.field private mMaxScrollY:I

.field private mMinScrollY:I

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mScrollSpeed:F

.field private mScroller:Landroid/widget/OverScroller;

.field private mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

.field private mStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "property_name_alpha"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    .line 46
    const-string v0, "property_name_matrix"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_MATRIX:Ljava/lang/String;

    .line 47
    const-string v0, "property_name_rect"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_RECT:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mCanvasRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    .line 449
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 790
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$5;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v0, "property_name_alpha"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    .line 46
    const-string v0, "property_name_matrix"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_MATRIX:Ljava/lang/String;

    .line 47
    const-string v0, "property_name_rect"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_RECT:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mCanvasRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    .line 449
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 790
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$5;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->init()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const-string v0, "property_name_alpha"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    .line 46
    const-string v0, "property_name_matrix"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_MATRIX:Ljava/lang/String;

    .line 47
    const-string v0, "property_name_rect"

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->PROPERTY_NAME_RECT:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mCanvasRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    .line 449
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 790
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$5;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->init()V

    .line 102
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setActiveView(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->appendScroll(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->notifyZoomOut(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->startContinueScroll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->findTargetView(F)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMinScrollY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMaxScrollY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->computeScrollSpeed(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # Landroid/graphics/RectF;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildRect(Landroid/graphics/RectF;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->convertCoordinateToParent(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->swipeViewIndex(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->scrollToMin()V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->notifyZoomIn(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->cancelContinueScroll()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mItemDragHelper:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;FF)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->findSingleView(FF)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    return-object v0
.end method

.method private appendScroll(F)I
    .locals 4
    .param p1, "distanceY"    # F

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollY()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v1, v2, v3

    .line 346
    .local v1, "scrollY":I
    iget v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMaxScrollY:I

    if-le v1, v2, :cond_2

    .line 347
    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMaxScrollY:I

    .line 351
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollY()I

    move-result v2

    sub-int v0, v1, v2

    .line 352
    .local v0, "difference":I
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->scrollTo(II)V

    .line 354
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 356
    :cond_1
    return v0

    .line 348
    .end local v0    # "difference":I
    :cond_2
    iget v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMinScrollY:I

    if-ge v1, v2, :cond_0

    .line 349
    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMinScrollY:I

    goto :goto_0
.end method

.method private cancelContinueScroll()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 447
    :cond_0
    return-void
.end method

.method private computeScrollSpeed(F)V
    .locals 4
    .param p1, "difference"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 416
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 417
    .local v0, "isNegative":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 418
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    .line 419
    iput v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    .line 429
    :cond_0
    :goto_1
    return-void

    .line 416
    .end local v0    # "isNegative":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    .restart local v0    # "isNegative":Z
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float p1, v1

    .line 425
    :cond_3
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x42820000    # 65.0f

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    .line 426
    if-eqz v0, :cond_0

    .line 427
    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    neg-float v1, v1

    iput v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollSpeed:F

    goto :goto_1
.end method

.method private convertCoordinateToParent(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 672
    return-void
.end method

.method private doZoomInAnimator()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 471
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 472
    .local v0, "viewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 474
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 475
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 476
    return-void
.end method

.method private doZoomOutAnimator(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    const v1, 0x3f19999a    # 0.6f

    .line 462
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setPivotY(F)V

    .line 463
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 464
    .local v0, "viewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 466
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 467
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 468
    return-void
.end method

.method private findSingleView(FF)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildCount()I

    move-result v1

    .line 737
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 738
    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 739
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 740
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->convertCoordinateToParent(Landroid/graphics/RectF;)V

    .line 741
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :goto_1
    return-object v0

    .line 737
    .restart local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findTargetView(F)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildCount()I

    move-result v0

    .line 481
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 482
    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 483
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 484
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->convertCoordinateToParent(Landroid/graphics/RectF;)V

    .line 485
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 489
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :goto_1
    return-object v1

    .line 481
    .restart local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getChildRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 5
    .param p1, "dst"    # Landroid/graphics/RectF;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 675
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;

    .line 676
    .local v0, "layoutParams":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;
    iget v1, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->left:I

    int-to-float v1, v1

    iget v2, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->top:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->right:I

    int-to-float v3, v3

    iget v4, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 677
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setClipChildren(Z)V

    .line 106
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;

    invoke-direct {v2, p0, v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 108
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;

    invoke-direct {v2, p0, v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDragModeDetector:Landroid/view/GestureDetector;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDragModeDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 110
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    invoke-direct {v0, p0, v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mItemDragHelper:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackGroundColor:I

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackGroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScroller:Landroid/widget/OverScroller;

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mStrokeColor:I

    .line 118
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidth:I

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidthWhite:I

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidth:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidth:I

    .line 125
    :cond_0
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidthWhite:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 126
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidthWhite:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidthWhite:I

    .line 128
    :cond_1
    new-instance v0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setControlListener(Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;)V

    .line 130
    return-void
.end method

.method private notifyZoomIn(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->doZoomInAnimator()V

    .line 413
    return-void
.end method

.method private notifyZoomOut(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->doZoomOutAnimator(F)V

    .line 409
    return-void
.end method

.method private refreshScrollLimit()V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getTop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMinScrollY:I

    .line 366
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMaxScrollY:I

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMaxScrollY:I

    goto :goto_0
.end method

.method private scrollToMin()V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mMinScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->scrollTo(II)V

    .line 361
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 362
    return-void
.end method

.method private setActiveView(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 4
    .param p1, "view"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 749
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eq p1, v0, :cond_0

    .line 750
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 751
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->showAtLocation(Landroid/view/View;Landroid/view/View;Z)V

    .line 757
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 758
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->dismissControlWindow()V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    goto :goto_0
.end method

.method private setChildMask(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildCount()I

    move-result v0

    .line 784
    .local v0, "child":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 785
    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 786
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    return-void
.end method

.method private setChildRadius(I)V
    .locals 4
    .param p1, "radius"    # I

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildCount()I

    move-result v0

    .line 776
    .local v0, "child":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 777
    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 778
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->setRadius(F)V

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    return-void
.end method

.method private startContinueScroll()V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 435
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 436
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 438
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 440
    return-void

    .line 435
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private swipeArrays(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, p1

    .line 403
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 404
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v1, p2

    .line 405
    return-void
.end method

.method private swipeViewIndex(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 329
    iget-boolean v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    if-nez v4, :cond_0

    .line 342
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 333
    .local v2, "small":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 334
    .local v0, "large":I
    invoke-static {p0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 335
    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->swipeArrays(II)V

    .line 336
    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 337
    .local v3, "smallView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 338
    .local v1, "largeView":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->removeView(Landroid/view/View;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->removeView(Landroid/view/View;)V

    .line 340
    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->addView(Landroid/view/View;I)V

    .line 341
    invoke-virtual {p0, v3, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->scrollTo(II)V

    .line 392
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 394
    :cond_0
    return-void
.end method

.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->dismiss()V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v0, :cond_1

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 766
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 768
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 302
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mCanvasRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 303
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 304
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollY()I

    move-result v1

    .line 306
    .local v1, "scrollY":I
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;

    .line 307
    .local v0, "layoutParams":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->left:I

    int-to-float v4, v4

    iget v5, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->top:I

    int-to-float v5, v5

    iget v6, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->right:I

    int-to-float v6, v6

    iget v7, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 309
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 310
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    int-to-float v4, v1

    invoke-virtual {v3, v8, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 311
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 312
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 316
    iget v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidth:I

    .line 317
    .local v2, "strokeWidth":I
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mActiveLineWidthWhite:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 320
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 321
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 325
    .end local v0    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;
    .end local v1    # "scrollY":I
    .end local v2    # "strokeWidth":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mItemDragHelper:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->draw(Landroid/graphics/Canvas;)V

    .line 326
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public generateRenderData()Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;
    .locals 6

    .prologue
    .line 702
    new-instance v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    invoke-direct {v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;-><init>()V

    .line 704
    .local v3, "renderData":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildCount()I

    move-result v1

    .line 705
    .local v1, "count":I
    new-array v4, v1, [Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    iput-object v4, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->bitmapRenderDatas:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 707
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 708
    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 709
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget-object v4, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->bitmapRenderDatas:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->generateBitmapRenderData()Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    move-result-object v5

    aput-object v5, v4, v2

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    iput-object v4, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->stitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .line 713
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->viewWidth:I

    .line 714
    return-object v3
.end method

.method public notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "from"    # Landroid/graphics/Bitmap;
    .param p2, "to"    # Landroid/graphics/Bitmap;

    .prologue
    .line 680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 682
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object p2, v2, v1

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 688
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 689
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->requestLayout()V

    .line 693
    new-instance v2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$3;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void

    .line 680
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 269
    .local v10, "parent":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDisplayRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, p4, p2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    if-nez v12, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildCount()I

    move-result v4

    .line 276
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget v1, v12, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapWidth:I

    .line 277
    .local v1, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget v7, v12, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->horizontalOffset:I

    .line 278
    .local v7, "horizontalOffset":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget v11, v12, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->verticalOffset:I

    .line 279
    .local v11, "verticalOffset":I
    const/4 v5, 0x0

    .line 280
    .local v5, "currentTop":I
    if-lez v7, :cond_2

    .line 281
    add-int/2addr v5, v11

    .line 283
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;

    .line 286
    .local v9, "layoutParams":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget-object v12, v12, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapHeights:[I

    aget v6, v12, v8

    .line 287
    .local v6, "height":I
    add-int v3, v5, v6

    .line 288
    .local v3, "childBottom":I
    add-int v12, v1, v7

    invoke-virtual {v2, v7, v5, v12, v3}, Landroid/view/View;->layout(IIII)V

    .line 289
    add-int v12, v1, v7

    invoke-virtual {v9, v7, v5, v12, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->set(IIII)V

    .line 290
    move v5, v3

    .line 291
    add-int/2addr v5, v11

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 293
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childBottom":I
    .end local v6    # "height":I
    .end local v9    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->refreshScrollLimit()V

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mItemDragHelper:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v12, v12, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v12, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mItemDragHelper:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v13, v13, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildRect(Landroid/graphics/RectF;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 254
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 255
    .local v1, "width":I
    const/4 v0, 0x0

    .line 256
    .local v0, "height":I
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->countHeight(ILcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;[Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget v0, v2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->height:I

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mCanvasRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 263
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 261
    invoke-super {p0, v2, v3}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 264
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "up":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    iget-boolean v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDragModeDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 153
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 154
    iget-boolean v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mEnableDragMode:Z

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDragModeDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mDragModeDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    const/4 v0, 0x1

    .line 145
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBitmaps([Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->removeAllViews()V

    .line 375
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 376
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;-><init>(Landroid/content/Context;)V

    .line 378
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBackGroundColor:I

    invoke-virtual {v1, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBackgroundColor(I)V

    .line 380
    new-instance v4, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;

    invoke-direct {v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;-><init>()V

    invoke-virtual {p0, v1, v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    new-instance v2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mBitmapPositionHolder:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    .line 385
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->requestLayout()V

    .line 386
    return-void
.end method

.method public setReplaceImageListener(Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;)V
    .locals 0
    .param p1, "replaceImageListener"    # Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    .line 772
    return-void
.end method

.method public setStitchingModel(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V
    .locals 4
    .param p1, "stitchingModel"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .line 719
    iget v1, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->radius:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setChildRadius(I)V

    .line 720
    iget-object v1, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->mask:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->mask:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/CollageUtils;->getDrawableByAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 722
    .local v0, "mask":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setChildMask(Landroid/graphics/drawable/Drawable;)V

    .line 726
    .end local v0    # "mask":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->requestLayout()V

    .line 727
    new-instance v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$4;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->post(Ljava/lang/Runnable;)Z

    .line 733
    return-void

    .line 724
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setChildMask(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
