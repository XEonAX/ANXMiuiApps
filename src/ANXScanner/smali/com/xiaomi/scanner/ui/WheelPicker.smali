.class public Lcom/xiaomi/scanner/ui/WheelPicker;
.super Landroid/view/View;
.source "WheelPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;,
        Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private canTouchScroll:Z

.field private fontPath:Ljava/lang/String;

.field private hasAtmospheric:Z

.field private hasCurtain:Z

.field private hasIndicator:Z

.field private hasSameItemSize:Z

.field private hasSameWidth:Z

.field private isClick:Z

.field private isCurved:Z

.field private isCyclic:Z

.field private isForceFinishScroll:Z

.field private isTouchTriggered:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterBgPaint:Landroid/graphics/Paint;

.field private mCenterRect:Landroid/graphics/Rect;

.field private mCurrentItemPosition:I

.field private mCurtainColor:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownPointY:I

.field private mDrawnCenterX:I

.field private mDrawnCenterY:I

.field private mDrawnItemCount:I

.field private mHalfDrawnItemCount:I

.field private mHalfItemHeight:I

.field private mHalfWheelHeight:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorColor:I

.field private mIndicatorSize:I

.field private mItemAlign:I

.field private mItemHeight:I

.field private mItemMinTextSize:I

.field private mItemSpace:I

.field private mItemTextColor:I

.field private mItemTextSize:I

.field private mLastPointY:I

.field private mMatrixDepth:Landroid/graphics/Matrix;

.field private mMatrixRotate:Landroid/graphics/Matrix;

.field private mMaxFlingY:I

.field private mMaxWidthText:Ljava/lang/String;

.field private mMaximumVelocity:I

.field private mMinFlingY:I

.field private mMinimumVelocity:I

.field private mOnItemSelectedListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;

.field private mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectCurrentItem:Landroid/graphics/Rect;

.field private mRectDrawn:Landroid/graphics/Rect;

.field private mRectIndicatorFoot:Landroid/graphics/Rect;

.field private mRectIndicatorHead:Landroid/graphics/Rect;

.field private mScrollOffsetY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemPosition:I

.field private mSelectedItemTextColor:I

.field private mTextMaxHeight:I

.field private mTextMaxWidth:I

.field private mTextMaxWidthPosition:I

.field private mTouchSlop:I

.field private mTracker:Landroid/view/VelocityTracker;

.field private mVisibleItemCount:I

.field private mWheelCenterX:I

.field private mWheelCenterY:I

.field private moveByOutSide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/xiaomi/scanner/ui/WheelPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/ui/WheelPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/ui/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 298
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHandler:Landroid/os/Handler;

    .line 190
    const/16 v4, 0x32

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinimumVelocity:I

    const/16 v4, 0x1f40

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaximumVelocity:I

    .line 225
    const/16 v4, 0x8

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTouchSlop:I

    .line 291
    iput-boolean v9, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->canTouchScroll:Z

    .line 300
    sget-object v4, Lcom/xiaomi/scanner/R$styleable;->WheelPicker:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 301
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 302
    .local v2, "idData":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v2, :cond_0

    const v2, 0x7f0c0001

    .end local v2    # "idData":I
    :cond_0
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    .line 303
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    .line 304
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemMinTextSize:I

    .line 305
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    .line 306
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    .line 307
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasSameWidth:Z

    .line 308
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidthPosition:I

    .line 309
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemTextColor:I

    .line 311
    const v4, -0x777778

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextColor:I

    .line 312
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemSpace:I

    .line 313
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    .line 314
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasIndicator:Z

    .line 315
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasSameItemSize:Z

    .line 316
    const/16 v4, 0xd

    const v5, -0x11cccd

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorColor:I

    .line 317
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorSize:I

    .line 318
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasCurtain:Z

    .line 319
    const/16 v4, 0x11

    const v5, -0x77000001

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurtainColor:I

    .line 320
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasAtmospheric:Z

    .line 321
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    .line 322
    const/16 v4, 0x14

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemAlign:I

    .line 323
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->fontPath:Ljava/lang/String;

    .line 324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->updateVisibleItemCount()V

    .line 330
    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x45

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    .line 331
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterBgPaint:Landroid/graphics/Paint;

    .line 334
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->fontPath:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->fontPath:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 338
    .local v3, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/ui/WheelPicker;->setTypeface(Landroid/graphics/Typeface;)V

    .line 343
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->updateItemTextAlign()V

    .line 347
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 349
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    .line 351
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 353
    .local v1, "conf":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinimumVelocity:I

    .line 354
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaximumVelocity:I

    .line 355
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTouchSlop:I

    .line 357
    .end local v1    # "conf":Landroid/view/ViewConfiguration;
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    .line 359
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectIndicatorHead:Landroid/graphics/Rect;

    .line 360
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectIndicatorFoot:Landroid/graphics/Rect;

    .line 362
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    .line 364
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterRect:Landroid/graphics/Rect;

    .line 366
    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    .line 368
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    .line 369
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    .line 370
    return-void
.end method

.method private computeCurrentItemRect()V
    .locals 6

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasCurtain:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfItemHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfItemHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private computeDepth(I)I
    .locals 6
    .param p1, "degree"    # I

    .prologue
    .line 647
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfWheelHeight:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfWheelHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private computeDistanceToEndPoint(I)I
    .locals 2
    .param p1, "remainder"    # I

    .prologue
    .line 746
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfItemHeight:I

    if-le v0, v1, :cond_1

    .line 747
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    if-gez v0, :cond_0

    .line 748
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    neg-int v0, v0

    sub-int/2addr v0, p1

    .line 752
    :goto_0
    return v0

    .line 750
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 752
    :cond_1
    neg-int v0, p1

    goto :goto_0
.end method

.method private computeDrawnCenter()V
    .locals 3

    .prologue
    .line 469
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemAlign:I

    packed-switch v0, :pswitch_data_0

    .line 477
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterX:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterX:I

    .line 480
    :goto_0
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    .line 481
    return-void

    .line 471
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterX:I

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterX:I

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private computeFlingLimitY()V
    .locals 3

    .prologue
    .line 484
    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    mul-int v0, v1, v2

    .line 485
    .local v0, "currentItemOffset":I
    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    if-eqz v1, :cond_1

    const/high16 v1, -0x80000000

    .line 486
    :goto_0
    iput v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinFlingY:I

    .line 487
    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    if-eqz v1, :cond_0

    const v0, 0x7fffffff

    .end local v0    # "currentItemOffset":I
    :cond_0
    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxFlingY:I

    .line 488
    return-void

    .line 485
    .restart local v0    # "currentItemOffset":I
    :cond_1
    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    .line 486
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private computeIndicatorRect()V
    .locals 8

    .prologue
    .line 491
    iget-boolean v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasIndicator:Z

    if-nez v3, :cond_0

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_0
    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorSize:I

    div-int/lit8 v0, v3, 0x2

    .line 493
    .local v0, "halfIndicatorSize":I
    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    iget v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfItemHeight:I

    add-int v2, v3, v4

    .line 494
    .local v2, "indicatorHeadCenterY":I
    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    iget v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfItemHeight:I

    sub-int v1, v3, v4

    .line 495
    .local v1, "indicatorFootCenterY":I
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectIndicatorHead:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v2, v0

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int v7, v2, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 497
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v0

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int v7, v1, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private computeSpace(I)I
    .locals 4
    .param p1, "degree"    # I

    .prologue
    .line 643
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfWheelHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private computeTextSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 385
    iput v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxHeight:I

    iput v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidth:I

    .line 386
    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasSameWidth:Z

    if-eqz v4, :cond_1

    .line 387
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidth:I

    .line 400
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 401
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxHeight:I

    .line 402
    return-void

    .line 388
    .end local v0    # "metrics":Landroid/graphics/Paint$FontMetrics;
    :cond_1
    iget v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidthPosition:I

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/ui/WheelPicker;->isPosInRang(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 389
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    iget v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidthPosition:I

    .line 390
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidth:I

    goto :goto_0

    .line 391
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 392
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidth:I

    goto :goto_0

    .line 394
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, "obj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v3, v5

    .line 397
    .local v3, "width":I
    iget v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidth:I

    goto :goto_1
.end method

.method private isPosInRang(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 639
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateItemTextAlign()V
    .locals 2

    .prologue
    .line 405
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemAlign:I

    packed-switch v0, :pswitch_data_0

    .line 413
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 416
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVisibleItemCount()V
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 374
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Wheel\'s visible item count can not be less than 2!"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 379
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    .line 380
    :cond_1
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnItemCount:I

    .line 381
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnItemCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfDrawnItemCount:I

    .line 382
    return-void
.end method


# virtual methods
.method public getCurrentItemPosition()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    return v0
.end method

.method public getCurtainColor()I
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurtainColor:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorSize:I

    return v0
.end method

.method public getItemAlign()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemAlign:I

    return v0
.end method

.method public getItemSpace()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemSpace:I

    return v0
.end method

.method public getItemTextColor()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextColor:I

    return v0
.end method

.method public getItemTextSize()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    return v0
.end method

.method public getMaximumWidthText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumWidthTextPosition()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidthPosition:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    return v0
.end method

.method public getSelectedItemTextColor()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemTextColor:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1039
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    return v0
.end method

.method public hasAtmospheric()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasAtmospheric:Z

    return v0
.end method

.method public hasCurtain()Z
    .locals 1

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasCurtain:Z

    return v0
.end method

.method public hasIndicator()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasIndicator:Z

    return v0
.end method

.method public hasSameWidth()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasSameWidth:Z

    return v0
.end method

.method public isCurved()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    return v0
.end method

.method public moveItemView(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 781
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->moveByOutSide:Z

    .line 783
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->postInvalidate()V

    .line 784
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterBgPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->moveByOutSide:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;->onWheelScrolled(I)V

    .line 513
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/xiaomi/scanner/ui/WheelPicker;->moveByOutSide:Z

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    move/from16 v21, v0

    div-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfDrawnItemCount:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 515
    .local v12, "drawnDataStartPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    move/from16 v20, v0

    add-int v11, v12, v20

    .line 516
    .local v11, "drawnDataPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfDrawnItemCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v13, v0

    .line 517
    .local v13, "drawnOffsetPos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    move/from16 v20, v0

    add-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnItemCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-ge v11, v0, :cond_12

    .line 519
    const-string v6, ""

    .line 520
    .local v6, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    rem-int v4, v11, v20

    .line 522
    .local v4, "actualPos":I
    if-gez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int v4, v4, v20

    .line 523
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 528
    .end local v4    # "actualPos":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    move/from16 v21, v0

    mul-int v21, v21, v13

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    move/from16 v22, v0

    rem-int v21, v21, v22

    add-int v14, v20, v21

    .line 533
    .local v14, "mDrawnItemCenterY":I
    const/4 v9, 0x0

    .line 534
    .local v9, "distanceToCenter":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v21, v0

    sub-int v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 542
    .local v15, "ratio":F
    const/16 v19, 0x0

    .line 543
    .local v19, "unit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v14, v0, :cond_e

    .line 544
    const/16 v19, 0x1

    .line 548
    :cond_3
    :goto_2
    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v15

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42b40000    # 90.0f

    mul-float v20, v20, v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v7, v20, v21

    .line 549
    .local v7, "degree":F
    const/high16 v20, -0x3d4c0000    # -90.0f

    cmpg-float v20, v7, v20

    if-gez v20, :cond_4

    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 550
    :cond_4
    const/high16 v20, 0x42b40000    # 90.0f

    cmpl-float v20, v7, v20

    if-lez v20, :cond_5

    const/high16 v7, 0x42b40000    # 90.0f

    .line 551
    :cond_5
    float-to-int v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeSpace(I)I

    move-result v9

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterX:I

    move/from16 v17, v0

    .line 554
    .local v17, "transX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemAlign:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 562
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    move/from16 v20, v0

    sub-int v18, v20, v9

    .line 564
    .local v18, "transY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Camera;->save()V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Camera;->rotateX(F)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Camera;->restore()V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Camera;->save()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    float-to-int v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeDepth(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Landroid/graphics/Camera;->translate(FFF)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Camera;->restore()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 580
    .end local v7    # "degree":F
    .end local v15    # "ratio":F
    .end local v17    # "transX":I
    .end local v18    # "transY":I
    .end local v19    # "unit":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasAtmospheric:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v21, v0

    sub-int v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v5, v0

    .line 583
    .local v5, "alpha":I
    if-gez v5, :cond_7

    const/4 v5, 0x0

    .line 584
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 586
    .end local v5    # "alpha":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasSameItemSize:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v21, v0

    sub-int v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v8, v0

    .line 588
    .local v8, "distance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemMinTextSize:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v8

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v16, v20, v21

    .line 589
    .local v16, "textSize":F
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_9

    .line 590
    const/16 v16, 0x0

    .line 592
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 596
    .end local v8    # "distance":F
    .end local v16    # "textSize":F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    sub-int v10, v20, v9

    .line 600
    .local v10, "drawnCenterY":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemTextColor:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 603
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemTextColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 610
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 518
    :goto_5
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 525
    .end local v9    # "distanceToCenter":I
    .end local v10    # "drawnCenterY":I
    .end local v14    # "mDrawnItemCenterY":I
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/xiaomi/scanner/ui/WheelPicker;->isPosInRang(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 545
    .restart local v9    # "distanceToCenter":I
    .restart local v14    # "mDrawnItemCenterY":I
    .restart local v15    # "ratio":F
    .restart local v19    # "unit":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 546
    const/16 v19, -0x1

    goto/16 :goto_2

    .line 556
    .restart local v7    # "degree":F
    .restart local v17    # "transX":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 557
    goto/16 :goto_3

    .line 559
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    goto/16 :goto_3

    .end local v7    # "degree":F
    .end local v15    # "ratio":F
    .end local v17    # "transX":I
    .end local v19    # "unit":I
    :cond_f
    move v10, v14

    .line 596
    goto/16 :goto_4

    .line 614
    .restart local v10    # "drawnCenterY":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 617
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 623
    .end local v6    # "data":Ljava/lang/String;
    .end local v9    # "distanceToCenter":I
    .end local v10    # "drawnCenterY":I
    .end local v14    # "mDrawnItemCenterY":I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasCurtain:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurtainColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 630
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasIndicator:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectIndicatorHead:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectIndicatorFoot:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 636
    :cond_14
    return-void

    .line 554
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 421
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 422
    .local v3, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 424
    .local v2, "sizeHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/scanner/ui/WheelPicker;->setMeasuredDimension(II)V

    .line 425
    div-int/lit8 v0, v2, 0x2

    .line 426
    .local v0, "centerY":I
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 427
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 428
    .local v1, "distance":I
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterRect:Landroid/graphics/Rect;

    sub-int v5, v0, v1

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 429
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterRect:Landroid/graphics/Rect;

    add-int v5, v0, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 430
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCenterRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 432
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 439
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 438
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 443
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterX:I

    .line 444
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mWheelCenterY:I

    .line 448
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeDrawnCenter()V

    .line 450
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfWheelHeight:I

    .line 452
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    .line 453
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHalfItemHeight:I

    .line 457
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeFlingLimitY()V

    .line 461
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeIndicatorRect()V

    .line 465
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeCurrentItemRect()V

    .line 466
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 652
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->canTouchScroll:Z

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return v11

    .line 655
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 657
    :pswitch_0
    iput-boolean v11, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isClick:Z

    .line 658
    iput-boolean v11, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isTouchTriggered:Z

    .line 659
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 662
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    .line 665
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 666
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 668
    iput-boolean v11, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isForceFinishScroll:Z

    .line 670
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mLastPointY:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDownPointY:I

    goto :goto_0

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 673
    :pswitch_1
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDownPointY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 674
    iput-boolean v11, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isClick:Z

    goto :goto_0

    .line 677
    :cond_5
    iput-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isClick:Z

    .line 678
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 679
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    if-eqz v0, :cond_6

    .line 680
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    invoke-interface {v0, v11}, Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 684
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mLastPointY:I

    int-to-float v1, v1

    sub-float v10, v0, v1

    .line 685
    .local v10, "move":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_0

    .line 686
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    int-to-float v0, v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mLastPointY:I

    .line 688
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_7

    .line 689
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxFlingY:I

    if-lt v0, v1, :cond_8

    cmpl-float v0, v10, v3

    if-ltz v0, :cond_8

    .line 690
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxFlingY:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 695
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    goto/16 :goto_0

    .line 691
    :cond_8
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinFlingY:I

    if-gt v0, v1, :cond_7

    cmpg-float v0, v10, v3

    if-gtz v0, :cond_7

    .line 692
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinFlingY:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    goto :goto_2

    .line 698
    .end local v10    # "move":F
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 699
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 700
    :cond_9
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isClick:Z

    if-eqz v0, :cond_a

    .line 701
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mDrawnCenterY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v5

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 702
    .local v9, "item":I
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    mul-int/2addr v2, v9

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 704
    .end local v9    # "item":I
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 706
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 710
    iput-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isForceFinishScroll:Z

    .line 711
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v4, v0

    .line 712
    .local v4, "velocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinimumVelocity:I

    if-le v0, v2, :cond_c

    .line 713
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    iget v7, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinFlingY:I

    iget v8, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxFlingY:I

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 714
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    .line 715
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    rem-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 714
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 722
    :goto_3
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    if-nez v0, :cond_b

    .line 723
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxFlingY:I

    if-le v0, v1, :cond_d

    .line 724
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxFlingY:I

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 727
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 730
    iput-object v12, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 717
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    iget v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    rem-int/2addr v3, v5

    .line 718
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v3

    .line 717
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_3

    .line 725
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinFlingY:I

    if-ge v0, v1, :cond_b

    .line 726
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMinFlingY:I

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_4

    .line 734
    .end local v4    # "velocity":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 735
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 736
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 738
    iput-object v12, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 757
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isForceFinishScroll:Z

    if-nez v1, :cond_4

    .line 759
    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    if-eqz v1, :cond_0

    .line 760
    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    neg-int v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v0, v1, v2

    .line 761
    .local v0, "position":I
    if-gez v0, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_2
    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    .line 763
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnItemSelectedListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isTouchTriggered:Z

    if-eqz v1, :cond_3

    .line 764
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnItemSelectedListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, p0, v1, v0}, Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;->onItemSelected(Lcom/xiaomi/scanner/ui/WheelPicker;Ljava/lang/String;I)V

    .line 765
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isTouchTriggered:Z

    if-eqz v1, :cond_4

    .line 766
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;->onWheelSelected(I)V

    .line 767
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    invoke-interface {v1, v3}, Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 768
    iput-boolean v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->moveByOutSide:Z

    .line 771
    .end local v0    # "position":I
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    if-eqz v1, :cond_5

    .line 773
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 774
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 775
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->postInvalidate()V

    .line 776
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAtmospheric(Z)V
    .locals 0
    .param p1, "hasAtmospheric"    # Z

    .prologue
    .line 1007
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasAtmospheric:Z

    .line 1008
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 1009
    return-void
.end method

.method public setCanTouchScroll(Z)V
    .locals 0
    .param p1, "touchScroll"    # Z

    .prologue
    .line 955
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->canTouchScroll:Z

    .line 956
    return-void
.end method

.method public setCurtain(Z)V
    .locals 0
    .param p1, "hasCurtain"    # Z

    .prologue
    .line 988
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasCurtain:Z

    .line 989
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeCurrentItemRect()V

    .line 990
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 991
    return-void
.end method

.method public setCurtainColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1002
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurtainColor:I

    .line 1003
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 1004
    return-void
.end method

.method public setCurved(Z)V
    .locals 0
    .param p1, "isCurved"    # Z

    .prologue
    .line 1020
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCurved:Z

    .line 1021
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 1022
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 1023
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 801
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    .line 802
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeFlingLimitY()V

    .line 803
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 804
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .param p1, "data"    # Ljava/util/List;

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "WheelPicker\'s data can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    .line 859
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 860
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    .line 864
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 865
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 866
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeFlingLimitY()V

    .line 867
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 868
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 869
    return-void

    .line 862
    :cond_2
    iget v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    iput v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    goto :goto_0
.end method

.method public setIndicator(Z)V
    .locals 0
    .param p1, "hasIndicator"    # Z

    .prologue
    .line 959
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasIndicator:Z

    .line 960
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeIndicatorRect()V

    .line 961
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 962
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 983
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorColor:I

    .line 984
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 985
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 973
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mIndicatorSize:I

    .line 974
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeIndicatorRect()V

    .line 975
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 976
    return-void
.end method

.method public setItemAlign(I)V
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 1030
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemAlign:I

    .line 1031
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->updateItemTextAlign()V

    .line 1032
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeDrawnCenter()V

    .line 1033
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 1034
    return-void
.end method

.method public setItemSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 949
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemSpace:I

    .line 950
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 951
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 952
    return-void
.end method

.method public setItemTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 928
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextColor:I

    .line 929
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 930
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 937
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    .line 938
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 939
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 940
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 941
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 942
    return-void
.end method

.method public setMaximumWidthText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 891
    if-nez p1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Maximum width text can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    .line 894
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 895
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 896
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 897
    return-void
.end method

.method public setMaximumWidthTextPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/WheelPicker;->isPosInRang(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width text Position must in [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    .line 906
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mTextMaxWidthPosition:I

    .line 908
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 909
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 910
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 911
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnItemSelectedListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnItemSelectedListener;

    .line 808
    return-void
.end method

.method public setOnWheelChangeListener(Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mOnWheelChangeListener:Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;

    .line 884
    return-void
.end method

.method public setSameWidth(Z)V
    .locals 0
    .param p1, "hasSameWidth"    # Z

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->hasSameWidth:Z

    .line 873
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 874
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 875
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 876
    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 815
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/ui/WheelPicker;->setSelectedItemPosition(IZ)V

    .line 816
    return-void
.end method

.method public setSelectedItemPosition(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 819
    iput-boolean v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isTouchTriggered:Z

    .line 820
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 821
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 822
    .local v1, "length":I
    iget v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    sub-int v0, p1, v2

    .line 823
    .local v0, "itemDifference":I
    if-nez v0, :cond_0

    .line 843
    .end local v0    # "itemDifference":I
    .end local v1    # "length":I
    :goto_0
    return-void

    .line 825
    .restart local v0    # "itemDifference":I
    .restart local v1    # "length":I
    :cond_0
    iget-boolean v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->isCyclic:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_2

    .line 826
    if-lez v0, :cond_1

    neg-int v1, v1

    .end local v1    # "length":I
    :cond_1
    add-int/2addr v0, v1

    .line 828
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    neg-int v4, v0

    iget v5, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mItemHeight:I

    mul-int/2addr v4, v5

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 829
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 831
    .end local v0    # "itemDifference":I
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 832
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 834
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 835
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 836
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemPosition:I

    .line 837
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mCurrentItemPosition:I

    .line 838
    iput v6, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mScrollOffsetY:I

    .line 839
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeFlingLimitY()V

    .line 840
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 841
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    goto :goto_0
.end method

.method public setSelectedItemTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 918
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mSelectedItemTextColor:I

    .line 919
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeCurrentItemRect()V

    .line 920
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 921
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->computeTextSize()V

    .line 1046
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 1047
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->invalidate()V

    .line 1048
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 791
    iput p1, p0, Lcom/xiaomi/scanner/ui/WheelPicker;->mVisibleItemCount:I

    .line 792
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->updateVisibleItemCount()V

    .line 793
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/WheelPicker;->requestLayout()V

    .line 794
    return-void
.end method
