.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final ERROR_PLATFORM:Ljava/lang/String;

.field private static final MATCHED_STICKIED_HEADER:I = -0x2

.field private static final NO_MATCHED_HEADER:I = -0x1

.field static final TAG:Ljava/lang/String;

.field protected static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field protected static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FINISHED_LONG_PRESS:I = -0x2

.field protected static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_TAP:I = 0x1


# instance fields
.field protected mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClipToPaddingHasBeenSet:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Z

.field private mCurrentHeaderId:J

.field protected mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderBottomPosition:I

.field mHeaderChildBeingPressed:Z

.field private mHeadersIgnorePadding:Z

.field private mHorizontalSpacing:I

.field private mMaskStickyHeaderRegion:Z

.field protected mMotionHeaderPosition:I

.field private mMotionY:F

.field private mOnHeaderClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

.field private mRealAdapter:Landroid/widget/ListAdapter;

.field private mRequestedNumColumns:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mStickiedHeader:Landroid/view/View;

.field private mStickyHeaderBackgroundAlpha:I

.field private mStickyHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error supporting platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    .line 80
    const-class v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    .line 113
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 115
    new-instance v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 133
    iput-boolean v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 135
    const/16 v1, 0xfa

    iput v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickyHeaderBackgroundAlpha:I

    .line 155
    iput v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollState:I

    .line 173
    iput-boolean v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 179
    invoke-static {}, Lcom/miui/screenrecorder/compat/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 191
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 192
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 194
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchSlop:I

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->reset()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;I)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->headerViewPositionToId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method private findMotionHeader(F)I
    .locals 10
    .param p1, "y"    # F

    .prologue
    .line 613
    iget-object v7, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    .line 614
    const/4 v6, -0x2

    .line 633
    :cond_0
    :goto_0
    return v6

    .line 617
    :cond_1
    const/4 v6, 0x0

    .line 618
    .local v6, "vi":I
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v7

    if-gt v2, v7, :cond_3

    .line 619
    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 620
    .local v4, "id":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 621
    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 623
    .local v1, "headerWrapper":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 624
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 625
    .local v3, "top":I
    int-to-float v7, v0

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_2

    int-to-float v7, v3

    cmpl-float v7, p1, v7

    if-gez v7, :cond_0

    .line 629
    .end local v0    # "bottom":I
    .end local v1    # "headerWrapper":Landroid/view/View;
    .end local v3    # "top":I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v7

    add-int/2addr v2, v7

    .line 630
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v7

    add-int/2addr v6, v7

    .line 631
    goto :goto_1

    .line 633
    .end local v4    # "id":J
    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 84
    .local v1, "n":I
    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 85
    .local v2, "r":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v0

    .line 87
    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v2
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 94
    .local v1, "n":I
    new-array v2, v1, [I

    .line 95
    .local v2, "r":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object v2
.end method

.method private headerViewPositionToId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 678
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 679
    iget-wide v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 681
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 685
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v3, :cond_0

    .line 714
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-boolean v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 697
    .local v2, "widthMeasureSpec":I
    :goto_1
    const/4 v0, 0x0

    .line 699
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 700
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_2

    .line 701
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 705
    :goto_2
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 706
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 708
    iget-boolean v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_3

    .line 709
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 693
    .end local v0    # "heightMeasureSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 694
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 693
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_1

    .line 703
    .restart local v0    # "heightMeasureSpec":I
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 711
    :cond_3
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 712
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 711
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1137
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1138
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1139
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;

    .line 1140
    .local v1, "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 1141
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1142
    const/4 v3, 0x1

    .line 1145
    .end local v1    # "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    :goto_1
    return v3

    .line 1138
    .restart local v1    # "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1145
    .end local v1    # "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 719
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 720
    return-void
.end method

.method private scrollChanged(I)V
    .locals 24
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 728
    .local v9, "firstItem":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v8

    .line 734
    .local v8, "columns":I
    move/from16 v17, p1

    .line 736
    .local v17, "selectedHeaderPosition":I
    sub-int v4, p1, v8

    .line 737
    .local v4, "beforeRowPosition":I
    if-gez v4, :cond_2

    .line 738
    move/from16 v4, p1

    .line 741
    :cond_2
    add-int v16, p1, v8

    .line 742
    .local v16, "secondRowPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 743
    move/from16 v16, p1

    .line 746
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 767
    .local v14, "newHeaderId":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mCurrentHeaderId:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v14

    if-eqz v20, :cond_4

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v21, v0

    .line 769
    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->measureHeader()V

    .line 771
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 774
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildCount()I

    move-result v6

    .line 775
    .local v6, "childCount":I
    if-eqz v6, :cond_0

    .line 776
    const/16 v18, 0x0

    .line 777
    .local v18, "viewToWatch":Landroid/view/View;
    const v19, 0x1869f

    .line 780
    .local v19, "watchingChildDistance":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v6, :cond_c

    .line 781
    move-object/from16 v0, p0

    invoke-super {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 784
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 785
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    sub-int v7, v20, v21

    .line 790
    .local v7, "childDistance":I
    :goto_3
    if-gez v7, :cond_b

    .line 780
    :cond_5
    :goto_4
    add-int/2addr v12, v8

    goto :goto_2

    .line 748
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childDistance":I
    .end local v12    # "i":I
    .end local v14    # "newHeaderId":J
    .end local v18    # "viewToWatch":Landroid/view/View;
    .end local v19    # "watchingChildDistance":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    if-gez v20, :cond_8

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 750
    .restart local v14    # "newHeaderId":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 751
    .local v10, "firstSecondRowView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v20

    if-gtz v20, :cond_7

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 753
    move/from16 v17, v16

    goto/16 :goto_1

    .line 755
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    goto/16 :goto_1

    .line 758
    .end local v10    # "firstSecondRowView":Landroid/view/View;
    .end local v14    # "newHeaderId":J
    :cond_8
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v13

    .line 759
    .local v13, "margin":I
    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_9

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 761
    .restart local v14    # "newHeaderId":J
    move/from16 v17, v4

    goto/16 :goto_1

    .line 763
    .end local v14    # "newHeaderId":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .restart local v14    # "newHeaderId":J
    goto/16 :goto_1

    .line 787
    .end local v13    # "margin":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v12    # "i":I
    .restart local v18    # "viewToWatch":Landroid/view/View;
    .restart local v19    # "watchingChildDistance":I
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .restart local v7    # "childDistance":I
    goto/16 :goto_3

    .line 794
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    .line 796
    move-object/from16 v18, v5

    .line 797
    move/from16 v19, v7

    goto/16 :goto_4

    .line 801
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childDistance":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v11

    .line 805
    .local v11, "headerHeight":I
    if-eqz v18, :cond_11

    .line 806
    if-nez p1, :cond_d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-super {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    if-lez v20, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 808
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 810
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 811
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v20

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    add-int v21, v21, v11

    .line 811
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    add-int v20, v20, v11

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    goto :goto_5

    .line 817
    :cond_f
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    if-gez v20, :cond_10

    .end local v11    # "headerHeight":I
    :goto_6
    move-object/from16 v0, p0

    iput v11, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .restart local v11    # "headerHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 823
    :cond_11
    move-object/from16 v0, p0

    iput v11, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0
.end method

.method private swapStickiedHeader(Landroid/view/View;)V
    .locals 1
    .param p1, "newStickiedHeader"    # Landroid/view/View;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 833
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 834
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 846
    return-void
.end method

.method private transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "headerPosition"    # I

    .prologue
    .line 849
    const/16 v20, -0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 874
    .end local p1    # "e":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 853
    .restart local p1    # "e":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 854
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 855
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 856
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 857
    .local v7, "pointerCount":I
    invoke-static/range {p1 .. p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v8

    .line 858
    .local v8, "pointerIds":[I
    invoke-static/range {p1 .. p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 859
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 860
    .local v10, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 861
    .local v11, "xPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 862
    .local v12, "yPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 863
    .local v13, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 864
    .local v14, "edgeFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 865
    .local v15, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 867
    .local v16, "flags":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 868
    .local v17, "headerHolder":Landroid/view/View;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v7, :cond_1

    .line 869
    aget-object v20, v9, v18

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 868
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 871
    :cond_1
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .local v19, "n":Landroid/view/MotionEvent;
    move-object/from16 p1, v19

    .line 874
    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;)V

    .line 1115
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1077
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1078
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1079
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;

    .line 1080
    .local v1, "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 1097
    :cond_0
    :goto_1
    return-void

    .line 1078
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    .end local v1    # "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    :cond_2
    new-instance v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    .line 1086
    .restart local v1    # "info":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;
    iput-object p1, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 1087
    iput-object p2, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 1088
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v3, :cond_0

    .line 1092
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->setFooter(Ljava/util/ArrayList;)V

    .line 1095
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    return v0
.end method

.method attachHeader(Landroid/view/View;)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1168
    if-nez p1, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1173
    :cond_0
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "mAttachInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1174
    .local v0, "attachInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1175
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchAttachedToWindow"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string v7, "android.view.View$AttachInfo"

    .line 1176
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 1175
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1177
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1178
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 1179
    .end local v0    # "attachInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1181
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1183
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 1184
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1185
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1186
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1187
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1188
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1189
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 1190
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3
.end method

.method detachHeader(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1195
    if-nez p1, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1200
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchDetachedFromWindow"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1201
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1202
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1203
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1205
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1207
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1209
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 879
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 883
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v9

    .line 884
    .local v9, "columns":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 885
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v10, 0x1

    .line 886
    .local v10, "drawStickiedHeader":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v14

    .line 887
    .local v14, "headerHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    sub-int v19, v2, v14

    .line 891
    .local v19, "top":I
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_1

    .line 892
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_4

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 899
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 907
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 910
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v16, "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    .line 912
    .local v22, "vi":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v18

    .local v18, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v18

    if-gt v0, v2, :cond_5

    .line 913
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v20

    .line 914
    .local v20, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v20, v2

    if-nez v2, :cond_2

    .line 915
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_2
    add-int v18, v18, v9

    .line 918
    add-int v22, v22, v9

    .line 919
    goto :goto_2

    .line 885
    .end local v10    # "drawStickiedHeader":Z
    .end local v14    # "headerHeight":I
    .end local v16    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "i":I
    .end local v19    # "top":I
    .end local v20    # "id":J
    .end local v22    # "vi":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 896
    .restart local v10    # "drawStickiedHeader":Z
    .restart local v14    # "headerHeight":I
    .restart local v19    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 922
    .restart local v16    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "i":I
    .restart local v22    # "vi":I
    :cond_5
    const/16 v18, 0x0

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    .line 923
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 926
    .local v12, "frame":Landroid/view/View;
    :try_start_0
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v13, "header":Landroid/view/View;
    move-object v2, v12

    .line 931
    check-cast v2, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mCurrentHeaderId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 932
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_7

    const/4 v15, 0x1

    .line 933
    .local v15, "headerIsStickied":Z
    :goto_4
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    if-eqz v15, :cond_8

    .line 922
    :cond_6
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 927
    .end local v13    # "header":Landroid/view/View;
    .end local v15    # "headerIsStickied":Z
    :catch_0
    move-exception v11

    .line 1044
    .end local v12    # "frame":Landroid/view/View;
    :goto_6
    return-void

    .line 932
    .restart local v12    # "frame":Landroid/view/View;
    .restart local v13    # "header":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 938
    .restart local v15    # "headerIsStickied":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_9

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 945
    .local v24, "widthMeasureSpec":I
    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 946
    .local v17, "heightMeasureSpec":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->measure(II)V

    .line 947
    move/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 949
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_a

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 956
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_b

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 964
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 968
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_c

    .line 969
    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 973
    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 974
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 941
    .end local v17    # "heightMeasureSpec":I
    .end local v24    # "widthMeasureSpec":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 941
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "widthMeasureSpec":I
    goto/16 :goto_7

    .line 952
    .restart local v17    # "heightMeasureSpec":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 953
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 952
    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 960
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_9

    .line 971
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    .line 977
    .end local v12    # "frame":Landroid/view/View;
    .end local v13    # "header":Landroid/view/View;
    .end local v15    # "headerIsStickied":Z
    .end local v17    # "heightMeasureSpec":I
    .end local v24    # "widthMeasureSpec":I
    :cond_d
    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_12

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 986
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_13

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v23

    .line 991
    .local v23, "wantedWidth":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move/from16 v0, v23

    if-eq v2, v0, :cond_f

    .line 993
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_14

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 999
    .restart local v24    # "widthMeasureSpec":I
    :goto_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 1000
    .restart local v17    # "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_15

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1010
    .end local v17    # "heightMeasureSpec":I
    .end local v24    # "widthMeasureSpec":I
    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_16

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1017
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v19, v14

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    if-eqz v2, :cond_17

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1024
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_18

    .line 1028
    const/4 v2, 0x0

    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1033
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getStickyHeaderIsTranslucent()Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    if-eq v2, v14, :cond_10

    .line 1034
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    mul-int/lit16 v2, v2, 0xff

    div-int v7, v2, v14

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1038
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getStickyHeaderIsTranslucent()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    if-eq v2, v14, :cond_11

    .line 1041
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1043
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 979
    .end local v23    # "wantedWidth":I
    :cond_12
    if-nez v10, :cond_e

    goto/16 :goto_6

    .line 989
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int v23, v2, v3

    .restart local v23    # "wantedWidth":I
    goto/16 :goto_b

    .line 996
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 996
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "widthMeasureSpec":I
    goto/16 :goto_c

    .line 1005
    .restart local v17    # "heightMeasureSpec":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRight()I

    move-result v5

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1005
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_d

    .line 1014
    .end local v17    # "heightMeasureSpec":I
    .end local v24    # "widthMeasureSpec":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_e

    .line 1021
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_f

    .line 1030
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_10
.end method

.method public getChildViewByItemIndex(I)Landroid/view/View;
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 645
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getItemPositionByItemIndex(I)I

    move-result v0

    .line 646
    .local v0, "position":I
    invoke-super {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    if-ltz v1, :cond_0

    .line 647
    invoke-super {p0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 648
    invoke-super {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 650
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupIndexByItemIndex(I)I
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getGroupIndexByItemIndex(I)I

    move-result v0

    return v0
.end method

.method public getGroupItemStartIndex(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getGroupItemStartIndex(I)I

    move-result v0

    return v0
.end method

.method public getGroupItemsCount(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getCountForHeader(I)I

    move-result v0

    return v0
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 211
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderNum()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderNum()I

    move-result v0

    return v0
.end method

.method public getItemIndexByItemPosition(I)I
    .locals 2
    .param p1, "itemPosition"    # I

    .prologue
    .line 654
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v0, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 655
    .local v0, "index":I
    return v0
.end method

.method public getRequestedNumColumns()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mRequestedNumColumns:I

    return v0
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranslucent()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInScrollingContainer()Z
    .locals 1

    .prologue
    .line 1226
    const/4 v0, 0x0

    return v0
.end method

.method public notifyChanged()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 668
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 248
    .local v3, "pos":I
    if-gez v3, :cond_0

    .line 249
    sget-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "position is invalid, skip"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 258
    .local v3, "pos":I
    if-gez v3, :cond_0

    .line 259
    sget-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "position is invalid, skip"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 268
    .local v3, "pos":I
    if-gez v3, :cond_0

    .line 269
    sget-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "position is invalid, skip"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 272
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, -0x1

    .line 1151
    :try_start_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->measureHeader()V

    .line 1152
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v3

    .line 1153
    .local v3, "oldColumnNum":I
    const/4 v5, 0x0

    invoke-static {v5, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getDefaultSize(II)I

    move-result v4

    .line 1154
    .local v4, "width":I
    const/4 v5, 0x0

    invoke-static {v5, p2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getDefaultSize(II)I

    move-result v1

    .line 1155
    .local v1, "height":I
    invoke-virtual {p0, v4, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setMeasuredDimension(II)V

    .line 1156
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 1157
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v2

    .line 1158
    .local v2, "newColumnNum":I
    if-ne v3, v6, :cond_0

    iget v5, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mRequestedNumColumns:I

    if-ne v2, v5, :cond_1

    :cond_0
    if-eq v3, v6, :cond_2

    if-eq v2, v3, :cond_2

    .line 1160
    :cond_1
    iget-object v5, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v5}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->onColumnChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .end local v1    # "height":I
    .end local v2    # "newColumnNum":I
    .end local v3    # "oldColumnNum":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    return-void

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 277
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 281
    move-object v0, p1

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    .line 283
    .local v0, "ss":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;
    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 284
    iget-boolean v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    iput-boolean v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 286
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->requestLayout()V

    .line 287
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 293
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 294
    .local v0, "ss":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;
    iget-boolean v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    iput-boolean v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 295
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 305
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 306
    invoke-direct {p0, p2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 308
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 316
    :cond_0
    iput p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollState:I

    .line 317
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 322
    .local v0, "action":I
    iget-boolean v6, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 323
    .local v6, "wasHeaderChildBeingPressed":Z
    iget-boolean v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-eqz v8, :cond_2

    .line 324
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 325
    .local v5, "tempHeader":Landroid/view/View;
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    move-object v3, v5

    .line 327
    .local v3, "headerHolder":Landroid/view/View;
    :goto_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    .line 328
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 330
    :cond_1
    if-eqz v5, :cond_2

    .line 331
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 332
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 333
    new-instance v8, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$2;

    invoke-direct {v8, p0, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$2;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Landroid/view/View;)V

    .line 337
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v10, v9

    .line 333
    invoke-virtual {v5, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 342
    .end local v3    # "headerHolder":Landroid/view/View;
    .end local v5    # "tempHeader":Landroid/view/View;
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 462
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_2
    return v8

    .line 325
    .restart local v5    # "tempHeader":Landroid/view/View;
    :cond_4
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 326
    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 344
    .end local v5    # "tempHeader":Landroid/view/View;
    :pswitch_0
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;

    if-nez v8, :cond_5

    .line 345
    new-instance v8, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-direct {v8, p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    iput-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;

    .line 347
    :cond_5
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 350
    .local v7, "y":I
    int-to-float v8, v7

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionY:F

    .line 351
    int-to-float v8, v7

    invoke-direct {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->findMotionHeader(F)I

    move-result v8

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 352
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 358
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 359
    .restart local v5    # "tempHeader":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 360
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 361
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 362
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 364
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 365
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_7

    .line 366
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 368
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 371
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 372
    const/4 v8, 0x1

    goto :goto_2

    .line 374
    .end local v5    # "tempHeader":Landroid/view/View;
    .end local v7    # "y":I
    :pswitch_1
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 378
    const/4 v8, -0x1

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 379
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 380
    .local v2, "header":Landroid/view/View;
    if-eqz v2, :cond_9

    .line 381
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 382
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 384
    :cond_9
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 385
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_a

    .line 386
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 388
    :cond_a
    const/4 v8, -0x1

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    goto/16 :goto_1

    .line 392
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "header":Landroid/view/View;
    :pswitch_2
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_b

    .line 393
    const/4 v8, -0x1

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 394
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 396
    :cond_b
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 400
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 401
    .restart local v2    # "header":Landroid/view/View;
    if-nez v6, :cond_11

    .line 402
    if-eqz v2, :cond_11

    .line 403
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v8, :cond_c

    .line 404
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 407
    :cond_c
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

    if-nez v8, :cond_d

    .line 408
    new-instance v8, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V

    iput-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

    .line 411
    :cond_d
    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

    .line 412
    .local v4, "performHeaderClick":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    iput v8, v4, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 413
    invoke-virtual {v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 415
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 416
    :cond_e
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 417
    .restart local v1    # "handler":Landroid/os/Handler;
    if-eqz v1, :cond_f

    .line 418
    iget v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderTap;

    :goto_3
    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    :cond_f
    iget-boolean v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v8, :cond_13

    .line 427
    const/4 v8, 0x1

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 428
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 429
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setPressed(Z)V

    .line 430
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v8, :cond_10

    .line 431
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 433
    :cond_10
    new-instance v8, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;

    invoke-direct {v8, p0, v2, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Landroid/view/View;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 449
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 450
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v10, v9

    .line 449
    invoke-virtual {p0, v8, v10, v11}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "performHeaderClick":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_11
    :goto_4
    const/4 v8, -0x1

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 460
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 418
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v4    # "performHeaderClick":Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_12
    iget-object v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$CheckForHeaderLongPress;

    goto :goto_3

    .line 452
    :cond_13
    const/4 v8, -0x1

    iput v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_4

    .line 454
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_14
    iget-boolean v8, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v8, :cond_11

    .line 455
    invoke-virtual {v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    goto :goto_4

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 466
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;

    if-eqz v2, :cond_1

    .line 467
    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->playSoundEffect(I)V

    .line 468
    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    .line 475
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public performHeaderLongPress(Landroid/view/View;J)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;->onHeaderLongClick(Landroid/widget/AdapterView;Landroid/view/View;J)Z

    move-result v0

    .line 484
    :cond_0
    if-eqz v0, :cond_2

    .line 485
    if-eqz p1, :cond_1

    .line 486
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 488
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->performHapticFeedback(I)Z

    .line 491
    :cond_2
    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1125
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, "result":Z
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 1129
    const/4 v0, 0x1

    .line 1133
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 496
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 500
    :cond_0
    iget-boolean v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v1, :cond_1

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 504
    :cond_1
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mRealAdapter:Landroid/widget/ListAdapter;

    .line 507
    instance-of v1, p1, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 508
    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    .line 517
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    .local v0, "baseAdapter":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;
    :goto_0
    new-instance v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 519
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->setFooter(Ljava/util/ArrayList;)V

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 523
    invoke-direct {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->reset()V

    .line 524
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mAdapter:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    return-void

    .line 509
    .end local v0    # "baseAdapter":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    instance-of v1, p1, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_4

    .line 511
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    check-cast p1, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;
    goto :goto_0

    .line 515
    .end local v0    # "baseAdapter":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;
    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 530
    iput-boolean p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    .line 532
    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    .line 541
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 545
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 546
    iput p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mHorizontalSpacing:I

    .line 547
    return-void
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 242
    iput p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mRequestedNumColumns:I

    .line 243
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderClickListener;

    .line 551
    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setLongClickable(Z)V

    .line 557
    :cond_0
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .line 558
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 563
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 564
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 570
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 571
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 576
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 577
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 582
    return-void
.end method

.method public setStickyHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickyHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 604
    return-void
.end method

.method public setStickyHeaderIsTranscluent(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 595
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value of alpha out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 599
    iput p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mStickyHeaderBackgroundAlpha:I

    .line 600
    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 1
    .param p1, "isTranscluent"    # Z

    .prologue
    .line 585
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 586
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 608
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 609
    iput p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mVerticalSpacing:I

    .line 610
    return-void
.end method
