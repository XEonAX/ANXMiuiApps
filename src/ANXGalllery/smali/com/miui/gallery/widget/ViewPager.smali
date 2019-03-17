.class public Lcom/miui/gallery/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"

# interfaces
.implements Lcom/miui/gallery/widget/slip/ISlipAnimView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/ViewPager$LayoutParams;,
        Lcom/miui/gallery/widget/ViewPager$PagerObserver;,
        Lcom/miui/gallery/widget/ViewPager$SavedState;,
        Lcom/miui/gallery/widget/ViewPager$Decor;,
        Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;,
        Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;,
        Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomMarginProgress:F

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field mDragEnabled:Z

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFirstOffsetLeftScreen:F

.field private mFlingDistance:I

.field private mForceReplayout:Z

.field private mGutterSize:I

.field private mHeightSlipRatio:F

.field private mInLayout:Z

.field private mInitialHeight:I

.field private mInitialMotionX:F

.field private mInitialPageMargin:I

.field private mInitialWidth:I

.field private mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLastOffsetLeftScreen:F

.field private mLastOrientation:I

.field mLastPageOffset:F

.field private mLastSettledItem:I

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftOffscreenPageLimit:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMarginSlipRatio:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/miui/gallery/widget/ViewPager$PagerObserver;

.field private mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredCurItem:I

.field private mReverseVelocity:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mRightOffscreenPageLimit:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSlipProgress:F

.field private final mTempItem:Lcom/miui/gallery/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthSlipRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "ViewPager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/miui/gallery/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 111
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/miui/gallery/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 118
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/miui/gallery/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 347
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/miui/gallery/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mTempItem:Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 132
    iput v5, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredCurItem:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 145
    const v0, -0x800001

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffset:F

    .line 146
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffset:F

    .line 149
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffsetLeftScreen:F

    .line 150
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffsetLeftScreen:F

    .line 159
    iput v4, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    .line 160
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    .line 180
    iput v5, p0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 211
    iput-boolean v4, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstLayout:Z

    .line 212
    iput-boolean v1, p0, Lcom/miui/gallery/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 224
    iput-boolean v4, p0, Lcom/miui/gallery/widget/ViewPager;->mDragEnabled:Z

    .line 226
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mLastPageOffset:F

    .line 246
    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollState:I

    .line 249
    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialWidth:I

    .line 250
    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialHeight:I

    .line 251
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialPageMargin:I

    .line 252
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mSlipProgress:F

    .line 253
    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mWidthSlipRatio:F

    .line 254
    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mHeightSlipRatio:F

    .line 255
    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginSlipRatio:F

    .line 257
    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOrientation:I

    .line 348
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/gallery/widget/ViewPager;->initViewPager(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 349
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/miui/gallery/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageLimits(I)V
    .locals 3
    .param p1, "newCurrentItem"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1095
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-le v0, p1, :cond_1

    .line 1097
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    .line 1098
    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ge v0, p1, :cond_0

    .line 1101
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    .line 1102
    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    goto :goto_0
.end method

.method private calculatePageOffsets(Lcom/miui/gallery/widget/ViewPager$ItemInfo;ILcom/miui/gallery/widget/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .prologue
    .line 1157
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->calculatePageWidthFactor(Lcom/miui/gallery/widget/ViewPager$ItemInfo;)V

    .line 1158
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 1159
    .local v1, "N":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v11

    .line 1160
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1162
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1163
    move-object/from16 v0, p3

    iget v8, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 1165
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1166
    const/4 v5, 0x0

    .line 1168
    .local v5, "itemIndex":I
    move-object/from16 v0, p3

    iget v12, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1169
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1170
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1171
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1172
    .local v3, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1173
    add-int/lit8 v5, v5, 0x1

    .line 1174
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    goto :goto_2

    .line 1160
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1176
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1179
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1180
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1182
    :cond_2
    iput v7, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1183
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1170
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1185
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1186
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1188
    .restart local v5    # "itemIndex":I
    move-object/from16 v0, p3

    iget v7, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1189
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1190
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1191
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1192
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1193
    add-int/lit8 v5, v5, -0x1

    .line 1194
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    goto :goto_5

    .line 1196
    :cond_4
    :goto_6
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1199
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1200
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1202
    :cond_5
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1203
    iput v7, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1190
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1209
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1210
    .local v4, "itemCount":I
    iget v7, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1211
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1212
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffset:F

    .line 1213
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_8

    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    :goto_8
    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffsetLeftScreen:F

    .line 1214
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_9

    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    :goto_9
    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffset:F

    .line 1216
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_a

    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    :goto_a
    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffsetLeftScreen:F

    .line 1218
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_d

    .line 1219
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1220
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_b

    .line 1221
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1212
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1213
    :cond_8
    const/4 v12, 0x0

    goto :goto_8

    .line 1214
    :cond_9
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_9

    .line 1216
    :cond_a
    const/4 v12, 0x0

    goto :goto_a

    .line 1223
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_b
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1224
    iput v7, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1225
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_c

    .line 1226
    iput v7, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffset:F

    .line 1227
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffsetLeftScreen:F

    .line 1218
    :cond_c
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_b

    .line 1230
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_d
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1231
    iget v12, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1233
    add-int/lit8 v2, p2, 0x1

    :goto_d
    if-ge v2, v4, :cond_10

    .line 1234
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1235
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_e
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_e

    .line 1236
    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_e

    .line 1238
    :cond_e
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_f

    .line 1239
    iput v7, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffset:F

    .line 1240
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffsetLeftScreen:F

    .line 1242
    :cond_f
    iput v7, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1243
    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1233
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 1246
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_10
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/miui/gallery/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1247
    return-void
.end method

.method private calculatePageWidthFactor(Lcom/miui/gallery/widget/ViewPager$ItemInfo;)V
    .locals 8
    .param p1, "curItem"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1113
    iget v0, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1114
    .local v0, "curItemLastWidthFactor":F
    iget v3, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginSlipRatio:F

    sub-float v3, v6, v3

    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mSlipProgress:F

    mul-float/2addr v3, v4

    sub-float v3, v6, v3

    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialPageMargin:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    .line 1115
    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1116
    .local v1, "item":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1117
    .local v2, "wRatio":F
    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mSlipProgress:F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1118
    iget v4, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/ViewPager;->getSlipScale(I)F

    move-result v4

    sub-float v4, v6, v4

    iget v5, p0, Lcom/miui/gallery/widget/ViewPager;->mSlipProgress:F

    mul-float/2addr v4, v5

    sub-float v2, v6, v4

    .line 1120
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget v5, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    mul-float/2addr v4, v2

    iput v4, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1122
    iget v4, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v4, v6, v4

    div-float/2addr v4, v7

    iput v4, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    goto :goto_0

    .line 1124
    .end local v1    # "item":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v2    # "wRatio":F
    :cond_1
    iget v3, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v4, v0, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 1125
    return-void
.end method

.method private callBackPageSettled()V
    .locals 2

    .prologue
    .line 507
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastSettledItem:I

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-eq v0, v1, :cond_0

    .line 508
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastSettledItem:I

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;->onPageSettled(I)V

    .line 513
    :cond_0
    return-void
.end method

.method private completeScroll()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1814
    iget v9, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollState:I

    if-ne v9, v10, :cond_5

    move v2, v7

    .line 1815
    .local v2, "needPopulate":Z
    :goto_0
    iget v9, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollState:I

    if-ne v9, v10, :cond_6

    move v1, v7

    .line 1816
    .local v1, "needCallbackSettled":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 1818
    invoke-direct {p0, v8}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1819
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1820
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 1821
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 1822
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1823
    .local v5, "x":I
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1824
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1825
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 1827
    :cond_1
    invoke-direct {p0, v8}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 1829
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    if-eqz v1, :cond_3

    .line 1830
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->callBackPageSettled()V

    .line 1832
    :cond_3
    iput-boolean v8, p0, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 1833
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1834
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget-boolean v9, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v9, :cond_4

    .line 1835
    const/4 v2, 0x1

    .line 1836
    iput-boolean v8, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->scrolling:Z

    goto :goto_2

    .end local v0    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v1    # "needCallbackSettled":Z
    .end local v2    # "needPopulate":Z
    :cond_5
    move v2, v8

    .line 1814
    goto :goto_0

    .restart local v2    # "needPopulate":Z
    :cond_6
    move v1, v8

    .line 1815
    goto :goto_1

    .line 1839
    .restart local v1    # "needCallbackSettled":Z
    :cond_7
    if-eqz v2, :cond_8

    .line 1840
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 1842
    :cond_8
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 11
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const v9, 0x3e99999a    # 0.3f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2252
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mFlingDistance:I

    if-le v4, v7, :cond_9

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mMinimumVelocity:I

    if-le v4, v7, :cond_9

    .line 2253
    if-gez p4, :cond_5

    .line 2254
    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mReverseVelocity:I

    if-le p3, v4, :cond_4

    move v4, v6

    :goto_0
    add-int v3, p1, v4

    .line 2255
    .local v3, "targetPage":I
    if-gez p3, :cond_1

    .line 2257
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2258
    sget-boolean v4, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2259
    const-string v4, "ViewPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "go on scrolling to new page, offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    :cond_0
    add-float v4, p2, v9

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 2281
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2282
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2283
    .local v1, "firstItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2286
    .local v2, "lastItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v4, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v7, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2289
    .end local v1    # "firstItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_2
    sget-boolean v4, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 2290
    const-string v4, "ViewPager"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "deltaX: %s, velocity: %s, offset: %s, curItem: %s, displayItem: %s, tarItem: %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_3
    return v3

    .end local v3    # "targetPage":I
    :cond_4
    move v4, v5

    .line 2254
    goto/16 :goto_0

    .line 2265
    :cond_5
    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mReverseVelocity:I

    neg-int v4, v4

    if-ge p3, v4, :cond_7

    move v4, v5

    :goto_2
    add-int v3, p1, v4

    .line 2266
    .restart local v3    # "targetPage":I
    if-lez p3, :cond_1

    .line 2268
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2269
    sget-boolean v4, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 2270
    const-string v4, "ViewPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "go on scrolling to new page, offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :cond_6
    cmpg-float v4, p2, v9

    if-gez v4, :cond_8

    move v4, v5

    :goto_3
    sub-int/2addr v3, v4

    goto/16 :goto_1

    .end local v3    # "targetPage":I
    :cond_7
    move v4, v6

    .line 2265
    goto :goto_2

    .restart local v3    # "targetPage":I
    :cond_8
    move v4, v6

    .line 2272
    goto :goto_3

    .line 2277
    .end local v3    # "targetPage":I
    :cond_9
    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-lt p1, v4, :cond_a

    const v0, 0x3f19999a    # 0.6f

    .line 2278
    .local v0, "factor":F
    :goto_4
    int-to-float v4, p1

    add-float v7, p2, v0

    add-float/2addr v4, v7

    float-to-int v3, v4

    .restart local v3    # "targetPage":I
    goto/16 :goto_1

    .line 2277
    .end local v0    # "factor":F
    .end local v3    # "targetPage":I
    :cond_a
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_4
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2526
    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    .line 2527
    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2529
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2533
    :cond_0
    return-void
.end method

.method private findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1853
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1854
    .local v2, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1855
    .local v1, "pointCount":I
    if-ltz v2, :cond_0

    if-lt v2, v1, :cond_1

    .line 1856
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1857
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "invalid_pointer"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "id[%d], index[%d], count[%d]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    const-string v3, "gesture"

    const-string v4, "gesture_view_pager"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1859
    const/4 v2, -0x1

    .line 1861
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "pointerIndex":I
    :cond_1
    return v2
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2668
    if-nez p1, :cond_0

    .line 2669
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2671
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2672
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2690
    :cond_1
    return-object p1

    .line 2675
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2676
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2677
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2678
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2680
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2681
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2682
    check-cast v0, Landroid/view/ViewGroup;

    .line 2683
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2684
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2685
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2686
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2688
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2689
    goto :goto_0
.end method

.method private getMaxScrollOffset()F
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffset:F

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffsetLeftScreen:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMinScrollOffset()F
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffset:F

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffsetLeftScreen:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getSlipScale(I)F
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/widget/ViewPager;->mHeightSlipRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/gallery/widget/PagerAdapter;->getSlipWidth(II)I

    move-result v0

    .line 1108
    .local v0, "itemSlipWidth":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mWidthSlipRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mWidthSlipRatio:F

    goto :goto_0
.end method

.method private infoForCurrentScrollPosition()Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2208
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v12

    .line 2209
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2210
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2211
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2212
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2213
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2214
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2216
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2217
    .local v3, "lastItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2218
    iget-object v13, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2220
    .local v2, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2222
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mTempItem:Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2223
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 2224
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 2225
    iget-object v13, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget v14, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2226
    add-int/lit8 v1, v1, -0x1

    .line 2228
    :cond_1
    iget v9, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 2230
    .local v9, "offset":F
    iget v13, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float v7, v9, v13

    .line 2231
    .local v7, "leftBound":F
    iget v13, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float v13, v9, v13

    iget v14, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v10, v13, v8

    .line 2232
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2233
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2246
    .end local v2    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v3    # "lastItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2209
    goto :goto_0

    .line 2239
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v3    # "lastItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2240
    iget v5, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 2241
    move v4, v9

    .line 2242
    iget v6, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2243
    move-object v3, v2

    .line 2217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1845
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needIntercept(FF)Z
    .locals 6
    .param p1, "xDiff"    # F
    .param p2, "yDiff"    # F

    .prologue
    .line 1849
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    float-to-double v2, p2

    const-wide v4, 0x3fdbecde5da115a9L    # 0.4363323129985824

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2512
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2513
    .local v1, "pointerId":I
    iget v3, p0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2516
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2517
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 2518
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 2519
    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2520
    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2523
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2516
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(IZ)Z
    .locals 10
    .param p1, "xpos"    # I
    .param p2, "updateCurrentItem"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1691
    iget-object v8, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1692
    iput-boolean v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCalledSuper:Z

    .line 1693
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/miui/gallery/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1694
    iget-boolean v8, p0, Lcom/miui/gallery/widget/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1695
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->infoForCurrentScrollPosition()Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v1

    .line 1701
    .local v1, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v5

    .line 1702
    .local v5, "width":I
    iget v8, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1703
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1704
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 1705
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1707
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1741
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCalledSuper:Z

    .line 1742
    invoke-virtual {p0, v0, v4, v3}, Lcom/miui/gallery/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1743
    iget-boolean v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1744
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1748
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2155
    const/4 v7, 0x0

    .line 2157
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2158
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 2160
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2161
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2162
    .local v12, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v13

    .line 2164
    .local v13, "width":I
    int-to-float v14, v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getMinScrollOffset()F

    move-result v15

    mul-float v6, v14, v15

    .line 2165
    .local v6, "leftBound":F
    int-to-float v14, v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getMaxScrollOffset()F

    move-result v15

    mul-float v11, v14, v15

    .line 2166
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2167
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2169
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2170
    .local v3, "firstItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2171
    .local v4, "lastItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v14, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2172
    const/4 v5, 0x0

    .line 2173
    iget v14, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v15, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float/2addr v14, v15

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2175
    :cond_0
    iget v14, v4, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v15}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2176
    const/4 v10, 0x0

    .line 2177
    iget v14, v4, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v15, v4, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float/2addr v14, v15

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2180
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2181
    if-eqz v5, :cond_2

    .line 2182
    sub-float v9, v6, v12

    .line 2183
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2184
    const/4 v7, 0x1

    .line 2186
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2196
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 2197
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 2198
    float-to-int v14, v12

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/miui/gallery/widget/ViewPager;->pageScrolled(IZ)Z

    .line 2200
    return v7

    .line 2187
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2188
    if-eqz v10, :cond_5

    .line 2189
    sub-float v9, v12, v11

    .line 2190
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2191
    const/4 v7, 0x1

    .line 2193
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private populateLeft(Lcom/miui/gallery/widget/ViewPager$ItemInfo;II)I
    .locals 8
    .param p1, "curItem"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "startPos"    # I

    .prologue
    const/4 v6, 0x0

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "extraWidthLeft":F
    add-int/lit8 v2, p2, -0x1

    .line 1035
    .local v2, "itemIndex":I
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v1, v5

    .line 1036
    .local v1, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    iget v7, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v3, v5, v7

    .line 1037
    .local v3, "leftWidthNeeded":F
    iget v5, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    add-int/lit8 v4, v5, -0x1

    .local v4, "pos":I
    :goto_1
    if-ltz v4, :cond_0

    .line 1038
    cmpl-float v5, v0, v3

    if-ltz v5, :cond_5

    if-ge v4, p3, :cond_5

    .line 1039
    if-nez v1, :cond_2

    .line 1060
    :cond_0
    return p2

    .end local v1    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v3    # "leftWidthNeeded":F
    .end local v4    # "pos":I
    :cond_1
    move-object v1, v6

    .line 1035
    goto :goto_0

    .line 1042
    .restart local v1    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v3    # "leftWidthNeeded":F
    .restart local v4    # "pos":I
    :cond_2
    iget v5, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v5, :cond_3

    iget-boolean v5, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_3

    .line 1043
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1044
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v7, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v4, v7}, Lcom/miui/gallery/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1045
    add-int/lit8 v2, v2, -0x1

    .line 1046
    add-int/lit8 p2, p2, -0x1

    .line 1047
    if-ltz v2, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v1, v5

    .line 1037
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    move-object v1, v6

    .line 1047
    goto :goto_2

    .line 1049
    :cond_5
    if-eqz v1, :cond_7

    iget v5, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v5, :cond_7

    .line 1050
    iget v5, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    .line 1051
    add-int/lit8 v2, v2, -0x1

    .line 1052
    if-ltz v2, :cond_6

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v1, v5

    :goto_3
    goto :goto_2

    :cond_6
    move-object v1, v6

    goto :goto_3

    .line 1054
    :cond_7
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/widget/ViewPager;->addNewItem(II)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v1

    .line 1055
    iget v5, v1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    .line 1056
    add-int/lit8 p2, p2, 0x1

    .line 1057
    if-ltz v2, :cond_8

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v1, v5

    :goto_4
    goto :goto_2

    :cond_8
    move-object v1, v6

    goto :goto_4
.end method

.method private populateRight(Lcom/miui/gallery/widget/ViewPager$ItemInfo;II)I
    .locals 9
    .param p1, "curItem"    # Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "endPos"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 1064
    iget v1, p1, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1065
    .local v1, "extraWidthRight":F
    add-int/lit8 v3, p2, 0x1

    .line 1066
    .local v3, "itemIndex":I
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1067
    .local v0, "N":I
    cmpg-float v5, v1, v8

    if-gez v5, :cond_0

    .line 1068
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v2, v5

    .line 1069
    .local v2, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_0
    iget v5, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    add-int/lit8 v4, v5, 0x1

    .local v4, "pos":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 1070
    cmpl-float v5, v1, v8

    if-ltz v5, :cond_5

    if-le v4, p3, :cond_5

    .line 1071
    if-nez v2, :cond_2

    .line 1091
    .end local v2    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v4    # "pos":I
    :cond_0
    return p2

    :cond_1
    move-object v2, v6

    .line 1068
    goto :goto_0

    .line 1074
    .restart local v2    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v4    # "pos":I
    :cond_2
    iget v5, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v5, :cond_3

    iget-boolean v5, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_3

    .line 1075
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1076
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v7, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v4, v7}, Lcom/miui/gallery/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1077
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v2, v5

    .line 1069
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v6

    .line 1077
    goto :goto_2

    .line 1079
    :cond_5
    if-eqz v2, :cond_7

    iget v5, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v5, :cond_7

    .line 1080
    iget v5, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v5

    .line 1081
    add-int/lit8 v3, v3, 0x1

    .line 1082
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v2, v5

    :goto_3
    goto :goto_2

    :cond_6
    move-object v2, v6

    goto :goto_3

    .line 1084
    :cond_7
    invoke-virtual {p0, v4, v3}, Lcom/miui/gallery/widget/ViewPager;->addNewItem(II)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1085
    add-int/lit8 v3, v3, 0x1

    .line 1086
    iget v5, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v5

    .line 1087
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object v2, v5

    :goto_4
    goto :goto_2

    :cond_8
    move-object v2, v6

    goto :goto_4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 22
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1497
    if-lez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1498
    add-int v20, p1, p3

    .line 1499
    .local v20, "widthWithMargin":I
    add-int v15, p2, p4

    .line 1500
    .local v15, "oldWidthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v21

    .line 1501
    .local v21, "xpos":I
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v4, v15

    div-float v16, v2, v4

    .line 1502
    .local v16, "pageOffset":F
    move/from16 v0, v20

    int-to-float v2, v0

    mul-float v2, v2, v16

    float-to-int v3, v2

    .line 1504
    .local v3, "newOffsetPixels":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->timePassed()I

    move-result v4

    sub-int v7, v2, v4

    .line 1508
    .local v7, "newDuration":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/ViewPager;->infoForPosition(I)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v19

    .line 1509
    .local v19, "targetInfo":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v19, :cond_1

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget v5, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float/2addr v5, v6

    move/from16 v0, p1

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1527
    .end local v3    # "newOffsetPixels":I
    .end local v7    # "newDuration":I
    .end local v15    # "oldWidthWithMargin":I
    .end local v16    # "pageOffset":F
    .end local v19    # "targetInfo":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v20    # "widthWithMargin":I
    .end local v21    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1516
    .restart local v3    # "newOffsetPixels":I
    .restart local v15    # "oldWidthWithMargin":I
    .restart local v16    # "pageOffset":F
    .restart local v20    # "widthWithMargin":I
    .restart local v21    # "xpos":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 1519
    .end local v3    # "newOffsetPixels":I
    .end local v15    # "oldWidthWithMargin":I
    .end local v16    # "pageOffset":F
    .end local v20    # "widthWithMargin":I
    .end local v21    # "xpos":I
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/ViewPager;->infoForPosition(I)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1520
    .local v14, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v14, :cond_3

    iget v2, v14, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/gallery/widget/ViewPager;->mLastOffset:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 1521
    .local v17, "scrollOffset":F
    :goto_1
    move/from16 v0, p1

    int-to-float v2, v0

    mul-float v2, v2, v17

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1522
    .local v18, "scrollPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v2

    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    .line 1523
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->completeScroll()V

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1520
    .end local v17    # "scrollOffset":F
    .end local v18    # "scrollPos":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_1
.end method

.method private refreshItem(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 877
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-nez v1, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 884
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v0, :cond_0

    .line 885
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget v3, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/PagerAdapter;->refreshItem(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 445
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 447
    .local v2, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 448
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->removeViewAt(I)V

    .line 449
    add-int/lit8 v1, v1, -0x1

    .line 444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private resetSlipInitials()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1542
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mSlipProgress:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialHeight:I

    if-eqz v0, :cond_0

    .line 1543
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialHeight:I

    .line 1544
    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialWidth:I

    .line 1546
    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 385
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iput p1, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollState:I

    .line 390
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2536
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2537
    iput-boolean p1, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2548
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2714
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 2752
    :cond_0
    :goto_0
    return-void

    .line 2717
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2719
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2721
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_3

    .line 2722
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2723
    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2724
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 2725
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2726
    .local v4, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_2

    iget v5, v4, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2

    .line 2727
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2722
    .end local v4    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2737
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_3
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_4

    .line 2740
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2743
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2746
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 2747
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2750
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewItem(II)Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 784
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/miui/gallery/widget/ViewPager$ItemInfo;-><init>()V

    .line 785
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 786
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/miui/gallery/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 787
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 788
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    :goto_0
    return-object v0

    .line 791
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2762
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2763
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2764
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2765
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2766
    .local v2, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2767
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2762
    .end local v2    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2771
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1328
    invoke-virtual {p0, p3}, Lcom/miui/gallery/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1329
    invoke-virtual {p0, p3}, Lcom/miui/gallery/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1331
    check-cast v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 1332
    .local v0, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/miui/gallery/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1333
    iget-boolean v1, p0, Lcom/miui/gallery/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1334
    iget-boolean v1, v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1335
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1338
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1350
    :goto_0
    return-void

    .line 1340
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0x11

    .line 2625
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2626
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    .line 2628
    :cond_0
    const/4 v2, 0x0

    .line 2630
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2632
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_6

    .line 2633
    if-ne p1, v6, :cond_4

    .line 2636
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Lcom/miui/gallery/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2637
    .local v4, "nextLeft":I
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lcom/miui/gallery/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2638
    .local v0, "currLeft":I
    if-eqz v1, :cond_3

    if-lt v4, v0, :cond_3

    .line 2639
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->pageLeft()Z

    move-result v2

    .line 2661
    .end local v0    # "currLeft":I
    .end local v4    # "nextLeft":I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2662
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/gallery/widget/ViewPager;->playSoundEffect(I)V

    .line 2664
    :cond_2
    return v2

    .line 2641
    .restart local v0    # "currLeft":I
    .restart local v4    # "nextLeft":I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2643
    .end local v0    # "currLeft":I
    .end local v4    # "nextLeft":I
    :cond_4
    if-ne p1, v7, :cond_1

    .line 2646
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Lcom/miui/gallery/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2647
    .restart local v4    # "nextLeft":I
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lcom/miui/gallery/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2648
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_5

    if-gt v4, v0, :cond_5

    .line 2649
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0

    .line 2651
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2654
    .end local v0    # "currLeft":I
    .end local v4    # "nextLeft":I
    :cond_6
    if-eq p1, v6, :cond_7

    const/4 v5, 0x1

    if-ne p1, v5, :cond_8

    .line 2656
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->pageLeft()Z

    move-result v2

    goto :goto_0

    .line 2657
    :cond_8
    if-eq p1, v7, :cond_9

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 2659
    :cond_9
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2562
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2563
    check-cast v7, Landroid/view/ViewGroup;

    .line 2564
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2565
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2566
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2568
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2571
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2572
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 2573
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 2574
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 2575
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2574
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2576
    const/4 v0, 0x1

    .line 2581
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2568
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2581
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2840
    instance-of v0, p1, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1666
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1667
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1668
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1669
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1670
    .local v2, "x":I
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1672
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1673
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 1674
    invoke-direct {p0, v2, v5}, Lcom/miui/gallery/widget/ViewPager;->pageScrolled(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1675
    iget-object v4, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1676
    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 1681
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1687
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1686
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 799
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getLeftOffscreenPageLimit()I

    move-result v12

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getRightOffscreenPageLimit()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_1

    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 800
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_1

    move v6, v9

    .line 801
    .local v6, "needPopulate":Z
    :goto_0
    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    .line 803
    .local v7, "newCurrItem":I
    const/4 v4, 0x0

    .line 804
    .local v4, "isUpdating":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_7

    .line 805
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 806
    .local v3, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget v13, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v11, v12, v13}, Lcom/miui/gallery/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;I)I

    move-result v8

    .line 808
    .local v8, "newPos":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 804
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v4    # "isUpdating":Z
    .end local v6    # "needPopulate":Z
    .end local v7    # "newCurrItem":I
    .end local v8    # "newPos":I
    :cond_1
    move v6, v10

    .line 800
    goto :goto_0

    .line 813
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v4    # "isUpdating":Z
    .restart local v6    # "needPopulate":Z
    .restart local v7    # "newCurrItem":I
    .restart local v8    # "newPos":I
    :cond_2
    const/4 v11, -0x3

    if-ne v8, v11, :cond_3

    .line 814
    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/ViewPager;->refreshItem(I)V

    goto :goto_2

    .line 818
    :cond_3
    const/4 v11, -0x2

    if-ne v8, v11, :cond_5

    .line 819
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 820
    add-int/lit8 v2, v2, -0x1

    .line 822
    if-nez v4, :cond_4

    .line 823
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v11, p0}, Lcom/miui/gallery/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 824
    const/4 v4, 0x1

    .line 827
    :cond_4
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget-object v13, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, p0, v12, v13}, Lcom/miui/gallery/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 828
    const/4 v6, 0x1

    .line 830
    iget v11, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget v12, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_0

    .line 832
    iget v11, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget-object v12, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 833
    const/4 v6, 0x1

    goto :goto_2

    .line 838
    :cond_5
    iget v11, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-eq v11, v8, :cond_0

    .line 839
    iget v11, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_6

    .line 841
    move v7, v8

    .line 844
    :cond_6
    iput v8, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 845
    const/4 v6, 0x1

    goto :goto_2

    .line 849
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_7
    if-eqz v4, :cond_8

    .line 850
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v11, p0}, Lcom/miui/gallery/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 853
    :cond_8
    iget-object v11, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v12, Lcom/miui/gallery/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 855
    if-eqz v6, :cond_b

    .line 857
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 858
    .local v1, "childCount":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_a

    .line 859
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 860
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 861
    .local v5, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v11, v5, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_9

    .line 862
    const/4 v11, 0x0

    iput v11, v5, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 858
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 866
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    :cond_a
    invoke-virtual {p0, v7, v10, v9}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 867
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->requestLayout()V

    .line 869
    .end local v1    # "childCount":I
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2587
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2813
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 2814
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2815
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2816
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2817
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v3

    .line 2818
    .local v3, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2819
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2820
    const/4 v4, 0x1

    .line 2825
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 2814
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2825
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 720
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 721
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 722
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2297
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2298
    const/4 v1, 0x0

    .line 2300
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getOverScrollMode()I

    move-result v2

    .line 2301
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    .line 2303
    invoke-virtual {v5}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2304
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2306
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2307
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2309
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2310
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2311
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2312
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 2313
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2316
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2318
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2319
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2321
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2322
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2323
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2324
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2325
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2332
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2334
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2336
    :cond_3
    return-void

    .line 2328
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2329
    iget-object v5, p0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 708
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 709
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 710
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 713
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2599
    const/4 v0, 0x0

    .line 2600
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2601
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2621
    :cond_0
    :goto_0
    return v0

    .line 2603
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2604
    goto :goto_0

    .line 2606
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2607
    goto :goto_0

    .line 2609
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2612
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2613
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2614
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2615
    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2601
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2830
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/miui/gallery/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2845
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final getActiveCount()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAdapter()Lcom/miui/gallery/widget/PagerAdapter;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 891
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 892
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v2, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 893
    iget-object v1, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 896
    .end local v0    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getItemByNativeIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 901
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 902
    :cond_0
    const/4 v0, 0x0

    .line 904
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getLeftOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method public getRightOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1363
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 1364
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    .line 1365
    const/4 v1, 0x0

    .line 1369
    :goto_1
    return-object v1

    :cond_0
    move-object p1, v0

    .line 1367
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1369
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1354
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v3, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/miui/gallery/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    .end local v0    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method infoForPosition(I)Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 1374
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v2, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1378
    .end local v0    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initViewPager(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 352
    if-eqz p2, :cond_0

    .line 353
    sget-object v3, Lcom/miui/gallery/R$styleable;->ViewPager:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    .line 355
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    .line 356
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mWidthSlipRatio:F

    .line 357
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mHeightSlipRatio:F

    .line 358
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginSlipRatio:F

    .line 359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/miui/gallery/widget/ViewPager;->setWillNotDraw(Z)V

    .line 363
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/ViewPager;->setDescendantFocusability(I)V

    .line 364
    invoke-virtual {p0, v5}, Lcom/miui/gallery/widget/ViewPager;->setFocusable(Z)V

    .line 365
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/miui/gallery/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, p1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 366
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 367
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    .line 368
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mMinimumVelocity:I

    .line 369
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mMaximumVelocity:I

    .line 370
    iget v3, p0, Lcom/miui/gallery/widget/ViewPager;->mMinimumVelocity:I

    mul-int/lit8 v3, v3, 0xa

    iget v4, p0, Lcom/miui/gallery/widget/ViewPager;->mMaximumVelocity:I

    div-int/lit8 v4, v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mReverseVelocity:I

    .line 371
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 372
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 375
    .local v2, "density":F
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mFlingDistance:I

    .line 376
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mCloseEnough:I

    .line 377
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/gallery/widget/ViewPager;->mDefaultGutterSize:I

    .line 379
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 380
    invoke-virtual {p0, v5}, Lcom/miui/gallery/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 382
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1383
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstLayout:Z

    .line 1385
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1531
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1532
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 1533
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastOrientation:I

    .line 1534
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->resetSlipInitials()V

    .line 1536
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2341
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2342
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v10

    .line 2343
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v11

    .line 2345
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2346
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2347
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 2348
    .local v3, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v8, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    .line 2349
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2350
    .local v4, "itemCount":I
    iget v2, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 2351
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    iget v6, v13, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 2352
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2353
    :goto_1
    iget v13, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    goto :goto_1

    .line 2358
    :cond_0
    iget v13, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2359
    iget v13, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2360
    .local v1, "drawAt":F
    iget v13, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2367
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v1, v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/widget/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2374
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2380
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2381
    return-void

    .line 2362
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v13, v9}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2363
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2364
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2352
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2850
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2851
    const-class v0, Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2852
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2856
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2857
    const-class v1, Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2858
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2859
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2860
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2862
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2863
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2865
    :cond_1
    return-void

    .line 2858
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1867
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1868
    const/4 v0, 0x0

    .line 2021
    :goto_0
    return v0

    .line 1876
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1879
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 1881
    :cond_1
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ViewPager"

    const-string v1, "Intercept done!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    .line 1883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1884
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 1885
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 1886
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1889
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1894
    :cond_4
    if-eqz v6, :cond_8

    .line 1895
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1896
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ViewPager"

    const-string v1, "Intercept returning true!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 1899
    :cond_6
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_8

    .line 1900
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ViewPager"

    const-string v1, "Intercept returning false!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 1905
    :cond_8
    sparse-switch v6, :sswitch_data_0

    .line 2012
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 2013
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2015
    :cond_a
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2021
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1916
    :sswitch_0
    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 1917
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_9

    .line 1922
    invoke-direct {p0, p1, v7}, Lcom/miui/gallery/widget/ViewPager;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1925
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_9

    .line 1930
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1931
    .local v10, "x":F
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1932
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1933
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1934
    .local v12, "y":F
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1935
    .local v13, "yDiff":F
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moved x to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " diff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_b
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/miui/gallery/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 1938
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1940
    iput v10, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    iput v10, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    .line 1941
    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionY:F

    .line 1942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1943
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1945
    :cond_c
    invoke-direct {p0, v11, v13}, Lcom/miui/gallery/widget/ViewPager;->needIntercept(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1946
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "ViewPager"

    const-string v1, "Starting drag!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    .line 1948
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 1950
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 1951
    iput v10, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    iput v10, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    .line 1952
    iput v12, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionY:F

    .line 1957
    :goto_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1968
    :cond_e
    :goto_3
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    .line 1970
    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1971
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1954
    :cond_f
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_10

    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    goto :goto_2

    :cond_10
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_4

    .line 1959
    :cond_11
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_e

    .line 1964
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "ViewPager"

    const-string v1, "Starting unable to drag!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1982
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 1983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionY:F

    .line 1984
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 1985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1987
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1988
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1989
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_13

    .line 1991
    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 1993
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 1994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    .line 1995
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 2001
    :goto_5
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Down at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBeingDragged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsUnableToDrag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gallery/widget/ViewPager;->mIsUnableToDrag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1997
    :cond_13
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->completeScroll()V

    .line 1998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    goto :goto_5

    .line 2008
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1905
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1550
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mInLayout:Z

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 1552
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mInLayout:Z

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v5

    .line 1555
    .local v5, "count":I
    sub-int v20, p4, p2

    .line 1556
    .local v20, "width":I
    sub-int v7, p5, p3

    .line 1557
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingLeft()I

    move-result v15

    .line 1558
    .local v15, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingTop()I

    move-result v17

    .line 1559
    .local v17, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingRight()I

    move-result v16

    .line 1560
    .local v16, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingBottom()I

    move-result v14

    .line 1561
    .local v14, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v18

    .line 1563
    .local v18, "scrollX":I
    const/4 v6, 0x0

    .line 1565
    .local v6, "decorCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mInitialHeight:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 1566
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mInitialWidth:I

    .line 1567
    move-object/from16 v0, p0

    iput v7, v0, Lcom/miui/gallery/widget/ViewPager;->mInitialHeight:I

    .line 1572
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 1573
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1574
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 1575
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 1578
    .local v13, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1579
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v9, v22, 0x7

    .line 1580
    .local v9, "hgrav":I
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v19, v22, 0x70

    .line 1581
    .local v19, "vgrav":I
    packed-switch v9, :pswitch_data_0

    .line 1583
    :pswitch_0
    move v3, v15

    .line 1598
    .local v3, "childLeft":I
    :goto_1
    sparse-switch v19, :sswitch_data_0

    .line 1600
    move/from16 v4, v17

    .line 1615
    .local v4, "childTop":I
    :goto_2
    add-int v3, v3, v18

    .line 1617
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    .line 1618
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    .line 1616
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1619
    add-int/lit8 v6, v6, 0x1

    .line 1572
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v9    # "hgrav":I
    .end local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .end local v19    # "vgrav":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1586
    .restart local v9    # "hgrav":I
    .restart local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .restart local v19    # "vgrav":I
    :pswitch_1
    move v3, v15

    .line 1587
    .restart local v3    # "childLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v15, v15, v22

    .line 1588
    goto :goto_1

    .line 1590
    .end local v3    # "childLeft":I
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v22, v20, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1592
    .restart local v3    # "childLeft":I
    goto :goto_1

    .line 1594
    .end local v3    # "childLeft":I
    :pswitch_3
    sub-int v22, v20, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v3, v22, v23

    .line 1595
    .restart local v3    # "childLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v16, v16, v22

    goto :goto_1

    .line 1603
    :sswitch_0
    move/from16 v4, v17

    .line 1604
    .restart local v4    # "childTop":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v17, v17, v22

    .line 1605
    goto :goto_2

    .line 1607
    .end local v4    # "childTop":I
    :sswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v22, v7, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1609
    .restart local v4    # "childTop":I
    goto :goto_2

    .line 1611
    .end local v4    # "childTop":I
    :sswitch_2
    sub-int v22, v7, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v4, v22, v23

    .line 1612
    .restart local v4    # "childTop":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v14, v14, v22

    goto :goto_2

    .line 1625
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v9    # "hgrav":I
    .end local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .end local v19    # "vgrav":I
    :cond_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_7

    .line 1626
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1627
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 1628
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 1630
    .restart local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v11

    .local v11, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_6

    .line 1631
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v11, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v12, v0

    .line 1632
    .local v12, "loff":I
    add-int v3, v15, v12

    .line 1633
    .restart local v3    # "childLeft":I
    iget v0, v11, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetTopScreen:F

    move/from16 v22, v0

    int-to-float v0, v7

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v4, v0

    .line 1634
    .restart local v4    # "childTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mForceReplayout:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    iget-boolean v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1637
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1638
    sub-int v22, v20, v15

    sub-int v22, v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1642
    .local v21, "widthSpec":I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mForceReplayout:Z

    .line 1644
    sub-int v22, v7, v17

    sub-int v22, v22, v14

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1647
    .local v8, "heightSpec":I
    move/from16 v0, v21

    invoke-virtual {v2, v0, v8}, Landroid/view/View;->measure(II)V

    .line 1649
    .end local v8    # "heightSpec":I
    .end local v21    # "widthSpec":I
    :cond_4
    sget-boolean v22, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v22, :cond_5

    const-string v22, "ViewPager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Positioning #"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " f="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v11, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1650
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1651
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1649
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    .line 1654
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    mul-int/lit8 v24, v4, 0x2

    sub-int v23, v23, v24

    .line 1652
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1625
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v11    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v12    # "loff":I
    .end local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1658
    .end local v2    # "child":Landroid/view/View;
    :cond_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mTopPageBounds:I

    .line 1659
    sub-int v22, v7, v14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mBottomPageBounds:I

    .line 1660
    move-object/from16 v0, p0

    iput v6, v0, Lcom/miui/gallery/widget/ViewPager;->mDecorChildCount:I

    .line 1661
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mFirstLayout:Z

    .line 1662
    return-void

    .line 1581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1598
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1394
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    .line 1395
    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1394
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1398
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1399
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mGutterSize:I

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1403
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1410
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v16

    .line 1411
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1412
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1413
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1414
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 1415
    .local v13, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1416
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1417
    .local v11, "hgrav":I
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1418
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1419
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1420
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1421
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1423
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1424
    const/high16 v18, 0x40000000    # 2.0f

    .line 1429
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1430
    .local v19, "widthSize":I
    move v9, v4

    .line 1432
    .local v9, "heightSize":I
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1433
    const/high16 v18, 0x40000000    # 2.0f

    .line 1434
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1435
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1438
    :cond_3
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1439
    const/high16 v8, 0x40000000    # 2.0f

    .line 1440
    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1441
    iget v9, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->height:I

    .line 1444
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1445
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1446
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1448
    if-eqz v7, :cond_9

    .line 1449
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1411
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1420
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1421
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1425
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1426
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1450
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1451
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1457
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1458
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1461
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mInLayout:Z

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 1463
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mInLayout:Z

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v16

    .line 1467
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1468
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1469
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1470
    sget-boolean v21, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v21, :cond_b

    const-string v21, "ViewPager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Measuring #"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mChildWidthMeasureSpec:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 1474
    .restart local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1475
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1478
    .restart local v20    # "widthSpec":I
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1480
    .restart local v10    # "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1467
    .end local v10    # "heightSpec":I
    .end local v13    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1484
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 16
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1765
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/widget/ViewPager;->mDecorChildCount:I

    if-lez v14, :cond_2

    .line 1766
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v12

    .line 1767
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1768
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1769
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v13

    .line 1770
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1771
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1772
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1773
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 1774
    .local v9, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v14, v9, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_1

    .line 1771
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1776
    :cond_1
    iget v14, v9, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v14, 0x7

    .line 1778
    .local v7, "hgrav":I
    packed-switch v7, :pswitch_data_0

    .line 1780
    :pswitch_0
    move v5, v10

    .line 1795
    .local v5, "childLeft":I
    :goto_2
    add-int/2addr v5, v12

    .line 1797
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v6, v5, v14

    .line 1798
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1799
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1783
    .end local v5    # "childLeft":I
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1784
    .restart local v5    # "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v10, v14

    .line 1785
    goto :goto_2

    .line 1787
    .end local v5    # "childLeft":I
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1789
    .restart local v5    # "childLeft":I
    goto :goto_2

    .line 1791
    .end local v5    # "childLeft":I
    :pswitch_3
    sub-int v14, v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v5, v14, v15

    .line 1792
    .restart local v5    # "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_2

    .line 1804
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v13    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_3

    .line 1805
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1807
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_4

    .line 1808
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1810
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/widget/ViewPager;->mCalledSuper:Z

    .line 1811
    return-void

    .line 1778
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2782
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 2783
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2784
    const/4 v6, 0x0

    .line 2785
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2786
    .local v5, "increment":I
    move v2, v1

    .line 2792
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2793
    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2794
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2795
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2796
    .local v4, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2797
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2798
    const/4 v7, 0x1

    .line 2803
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2788
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2789
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2790
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2792
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2803
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1309
    instance-of v1, p1, Lcom/miui/gallery/widget/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1310
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1324
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1314
    check-cast v0, Lcom/miui/gallery/widget/ViewPager$SavedState;

    .line 1315
    .local v0, "ss":Lcom/miui/gallery/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1317
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1318
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v2, v0, Lcom/miui/gallery/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1319
    iget v1, v0, Lcom/miui/gallery/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1321
    :cond_1
    iget v1, v0, Lcom/miui/gallery/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredCurItem:I

    .line 1322
    iget-object v1, v0, Lcom/miui/gallery/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1298
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1299
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/miui/gallery/widget/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1300
    .local v0, "ss":Lcom/miui/gallery/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iput v2, v0, Lcom/miui/gallery/widget/ViewPager$SavedState;->position:I

    .line 1301
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1302
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1304
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v0, 0x0

    .line 1488
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1491
    if-eq p1, p3, :cond_0

    .line 1492
    invoke-direct {p0, p1, p3, v0, v0}, Lcom/miui/gallery/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1494
    :cond_0
    return-void
.end method

.method public onSlipping(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1129
    iput p1, p0, Lcom/miui/gallery/widget/ViewPager;->mSlipProgress:F

    .line 1130
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2026
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mFakeDragging:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2030
    const/16 v22, 0x1

    .line 2151
    :goto_0
    return v22

    .line 2033
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_1

    .line 2036
    const/16 v22, 0x0

    goto :goto_0

    .line 2039
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v22

    if-nez v22, :cond_3

    .line 2041
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 2044
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 2045
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2047
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2049
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2050
    .local v4, "action":I
    const/4 v10, 0x0

    .line 2052
    .local v10, "needsInvalidate":Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 2148
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v10, :cond_6

    .line 2149
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2151
    :cond_6
    const/16 v22, 0x1

    goto :goto_0

    .line 2054
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2055
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 2056
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 2057
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    .line 2058
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 2061
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 2062
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 2066
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    .line 2067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 2068
    .local v13, "pointerIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_5

    .line 2071
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 2072
    .local v18, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 2073
    .local v19, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 2074
    .local v20, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLastMotionY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 2075
    .local v21, "yDiff":F
    sget-boolean v22, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v22, :cond_7

    const-string v22, "ViewPager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Moved x to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " diff="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->needIntercept(FF)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2077
    sget-boolean v22, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v22, :cond_8

    const-string v22, "ViewPager"

    const-string v23, "Starting drag!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    .line 2079
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 2081
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 2082
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2086
    .end local v13    # "pointerIndex":I
    .end local v18    # "x":F
    .end local v19    # "xDiff":F
    .end local v20    # "y":F
    .end local v21    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 2088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 2089
    .local v5, "activePointerIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_5

    .line 2092
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 2093
    .restart local v18    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->performDrag(F)Z

    move-result v10

    .line 2094
    goto/16 :goto_1

    .line 2079
    .end local v5    # "activePointerIndex":I
    .restart local v13    # "pointerIndex":I
    .restart local v19    # "xDiff":F
    .restart local v20    # "y":F
    .restart local v21    # "yDiff":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    goto :goto_2

    .line 2097
    .end local v13    # "pointerIndex":I
    .end local v18    # "x":F
    .end local v19    # "xDiff":F
    .end local v20    # "y":F
    .end local v21    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 2099
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    .line 2101
    .local v9, "initialVelocity":I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 2102
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v17

    .line 2103
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v14

    .line 2104
    .local v14, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->infoForCurrentScrollPosition()Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v7

    .line 2105
    .local v7, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v6, v7, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    .line 2106
    .local v6, "currentPage":I
    int-to-float v0, v14

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    iget v0, v7, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v7, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v7, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 2107
    .local v12, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 2108
    .restart local v5    # "activePointerIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_5

    .line 2111
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 2112
    .restart local v18    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v15, v0

    .line 2113
    .local v15, "totalDelta":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v9, v15}, Lcom/miui/gallery/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v11

    .line 2115
    .local v11, "nextPage":I
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2116
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 2117
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->endDrag()V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v23

    or-int v10, v22, v23

    .line 2121
    goto/16 :goto_1

    .line 2124
    .end local v5    # "activePointerIndex":I
    .end local v6    # "currentPage":I
    .end local v7    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v9    # "initialVelocity":I
    .end local v11    # "nextPage":I
    .end local v12    # "pageOffset":F
    .end local v14    # "scrollX":I
    .end local v15    # "totalDelta":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v17    # "width":I
    .end local v18    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 2125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 2126
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    .line 2127
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->endDrag()V

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v23

    or-int v10, v22, v23

    goto/16 :goto_1

    .line 2134
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 2135
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    .line 2136
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2140
    .end local v8    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/ViewPager;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 2142
    .restart local v13    # "pointerIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_5

    .line 2145
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2694
    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2695
    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2698
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2702
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2703
    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2706
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2869
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2886
    :goto_0
    return v0

    .line 2872
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2886
    goto :goto_0

    .line 2874
    :sswitch_0
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2875
    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2878
    goto :goto_0

    .line 2880
    :sswitch_1
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2881
    iget v1, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2884
    goto :goto_0

    .line 2872
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method populate()V
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->populate(I)V

    .line 873
    return-void
.end method

.method populate(I)V
    .locals 20
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 913
    const/4 v15, 0x0

    .line 914
    .local v15, "oldCurInfo":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 915
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/widget/ViewPager;->calculatePageLimits(I)V

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->infoForPosition(I)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v15

    .line 917
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    .line 920
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 1030
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 929
    sget-boolean v17, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v17, :cond_1

    const-string v17, "ViewPager"

    const-string v18, "populate is pending, skipping for now..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 942
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getLeftOffscreenPageLimit()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 943
    .local v16, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v4

    .line 944
    .local v4, "N":I
    add-int/lit8 v17, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getRightOffscreenPageLimit()I

    move-result v19

    add-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 948
    .local v10, "endPos":I
    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v13, 0x1

    .line 952
    .local v13, "isFirstPupolate":Z
    :goto_1
    const/4 v8, 0x0

    .line 953
    .local v8, "curItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    const/4 v7, 0x0

    .local v7, "curIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 955
    .local v12, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget v0, v12, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 956
    iget v0, v12, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object v8, v12

    .line 961
    .end local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_4
    if-nez v8, :cond_5

    if-lez v4, :cond_5

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/miui/gallery/widget/ViewPager;->addNewItem(II)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v8

    .line 968
    :cond_5
    if-eqz v8, :cond_6

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    .line 971
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v8, v7, v1}, Lcom/miui/gallery/widget/ViewPager;->populateLeft(Lcom/miui/gallery/widget/ViewPager$ItemInfo;II)I

    move-result v7

    .line 972
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v10}, Lcom/miui/gallery/widget/ViewPager;->populateRight(Lcom/miui/gallery/widget/ViewPager$ItemInfo;II)I

    move-result v7

    .line 978
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v15}, Lcom/miui/gallery/widget/ViewPager;->calculatePageOffsets(Lcom/miui/gallery/widget/ViewPager$ItemInfo;ILcom/miui/gallery/widget/ViewPager$ItemInfo;)V

    .line 981
    :cond_6
    sget-boolean v17, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v17, :cond_a

    .line 982
    const-string v17, "ViewPager"

    const-string v18, "Current page list:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 984
    const-string v18, "ViewPager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": page "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 948
    .end local v7    # "curIndex":I
    .end local v8    # "curItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v11    # "i":I
    .end local v13    # "isFirstPupolate":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 953
    .restart local v7    # "curIndex":I
    .restart local v8    # "curItem":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v13    # "isFirstPupolate":Z
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 974
    .end local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v10}, Lcom/miui/gallery/widget/ViewPager;->populateRight(Lcom/miui/gallery/widget/ViewPager$ItemInfo;II)I

    move-result v7

    .line 975
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v8, v7, v1}, Lcom/miui/gallery/widget/ViewPager;->populateLeft(Lcom/miui/gallery/widget/ViewPager$ItemInfo;II)I

    move-result v7

    goto :goto_3

    .line 988
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v19, v0

    if-eqz v8, :cond_c

    iget-object v0, v8, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 994
    .local v6, "childCount":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    if-ge v11, v6, :cond_d

    .line 995
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 996
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/widget/ViewPager$LayoutParams;

    .line 997
    .local v14, "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    iget-boolean v0, v14, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 999
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v12

    .line 1000
    .restart local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    if-eqz v12, :cond_b

    .line 1001
    iget v0, v12, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/miui/gallery/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 994
    .end local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 988
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v14    # "lp":Lcom/miui/gallery/widget/ViewPager$LayoutParams;
    :cond_c
    const/16 v17, 0x0

    goto :goto_5

    .line 1006
    .restart local v6    # "childCount":I
    .restart local v11    # "i":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 1008
    .local v9, "currentFocused":Landroid/view/View;
    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/gallery/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v12

    .line 1009
    .restart local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :goto_7
    if-eqz v12, :cond_e

    iget v0, v12, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1010
    :cond_e
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_f

    .line 1011
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1012
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/gallery/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v12

    .line 1013
    if-eqz v12, :cond_12

    iget v0, v12, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1014
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1022
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "currentFocused":Landroid/view/View;
    .end local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_f
    if-eqz v13, :cond_1

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1026
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/ViewPager;->mPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;->onPageSettled(I)V

    goto/16 :goto_0

    .line 1008
    .restart local v9    # "currentFocused":Landroid/view/View;
    :cond_11
    const/4 v12, 0x0

    goto :goto_7

    .line 1010
    .restart local v5    # "child":Landroid/view/View;
    .restart local v12    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method

.method public setAdapter(Lcom/miui/gallery/widget/PagerAdapter;)V
    .locals 9
    .param p1, "adapter"    # Lcom/miui/gallery/widget/PagerAdapter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 405
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mObserver:Lcom/miui/gallery/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 407
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 408
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 409
    .local v0, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget v4, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->position:I

    iget-object v5, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lcom/miui/gallery/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_0

    .line 411
    .end local v0    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 412
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 413
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->removeNonDecorViews()V

    .line 414
    iput v6, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    .line 415
    invoke-virtual {p0, v6, v6}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    .line 419
    .local v1, "oldAdapter":Lcom/miui/gallery/widget/PagerAdapter;
    iput-object p1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    .line 421
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mObserver:Lcom/miui/gallery/widget/ViewPager$PagerObserver;

    if-nez v2, :cond_2

    .line 423
    new-instance v2, Lcom/miui/gallery/widget/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v7}, Lcom/miui/gallery/widget/ViewPager$PagerObserver;-><init>(Lcom/miui/gallery/widget/ViewPager;Lcom/miui/gallery/widget/ViewPager$1;)V

    iput-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mObserver:Lcom/miui/gallery/widget/ViewPager$PagerObserver;

    .line 425
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mObserver:Lcom/miui/gallery/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 426
    iput-boolean v6, p0, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 427
    iput-boolean v8, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstLayout:Z

    .line 428
    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_5

    .line 429
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget-object v3, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v7}, Lcom/miui/gallery/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 430
    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v2, v6, v8}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 431
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredCurItem:I

    .line 432
    iput-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 438
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapterChangeListener:Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v2, :cond_4

    if-eq v1, p1, :cond_4

    .line 439
    iget-object v2, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapterChangeListener:Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v2, v1, p1}, Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/miui/gallery/widget/PagerAdapter;Lcom/miui/gallery/widget/PagerAdapter;)V

    .line 441
    :cond_4
    return-void

    .line 434
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setBottomMarginProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 2909
    iput p1, p0, Lcom/miui/gallery/widget/ViewPager;->mBottomMarginProgress:F

    .line 2910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mForceReplayout:Z

    .line 2911
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->requestLayout()V

    .line 2912
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->invalidate()V

    .line 2913
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 476
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 477
    return-void

    :cond_0
    move v0, v1

    .line 476
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPopulatePending:Z

    .line 487
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 488
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 496
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 516
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v7

    if-gtz v7, :cond_2

    .line 517
    :cond_0
    invoke-direct {p0, v6}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    if-nez p3, :cond_3

    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-ne v7, p1, :cond_3

    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 521
    invoke-direct {p0, v6}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 525
    :cond_3
    if-gez p1, :cond_6

    .line 526
    const/4 p1, 0x0

    .line 530
    :cond_4
    :goto_1
    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getRightOffscreenPageLimit()I

    move-result v8

    add-int/2addr v7, v8

    if-gt p1, v7, :cond_5

    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getLeftOffscreenPageLimit()I

    move-result v8

    sub-int/2addr v7, v8

    if-ge p1, v7, :cond_7

    .line 534
    :cond_5
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    .line 535
    .local v3, "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    iput-boolean v2, v3, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->scrolling:Z

    goto :goto_2

    .line 527
    .end local v3    # "ii":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    :cond_6
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v7

    if-lt p1, v7, :cond_4

    .line 528
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 p1, v7, -0x1

    goto :goto_1

    .line 538
    :cond_7
    iget v7, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    if-eq v7, p1, :cond_a

    .line 539
    .local v2, "dispatchSelected":Z
    :goto_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->populate(I)V

    .line 540
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->infoForPosition(I)Lcom/miui/gallery/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 541
    .local v0, "curInfo":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 542
    .local v1, "destX":I
    if-eqz v0, :cond_8

    .line 543
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v5

    .line 544
    .local v5, "width":I
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->getMinScrollOffset()F

    move-result v7

    iget v8, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offset:F

    iget v9, v0, Lcom/miui/gallery/widget/ViewPager$ItemInfo;->offsetLeftScreen:F

    sub-float/2addr v8, v9

    .line 545
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->getMaxScrollOffset()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 544
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 546
    .local v4, "offset":F
    int-to-float v7, v5

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .line 548
    .end local v4    # "offset":F
    .end local v5    # "width":I
    :cond_8
    if-eqz p2, :cond_b

    .line 549
    invoke-virtual {p0, v1, v6, p4}, Lcom/miui/gallery/widget/ViewPager;->smoothScrollTo(III)V

    .line 550
    if-eqz v2, :cond_9

    iget-object v6, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_9

    .line 551
    iget-object v6, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 553
    :cond_9
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_1

    .line 554
    iget-object v6, p0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto/16 :goto_0

    .end local v0    # "curInfo":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .end local v1    # "destX":I
    .end local v2    # "dispatchSelected":Z
    :cond_a
    move v2, v6

    .line 538
    goto :goto_3

    .line 557
    .restart local v0    # "curInfo":Lcom/miui/gallery/widget/ViewPager$ItemInfo;
    .restart local v1    # "destX":I
    .restart local v2    # "dispatchSelected":Z
    :cond_b
    if-eqz v2, :cond_c

    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v7, :cond_c

    .line 558
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v7, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 560
    :cond_c
    if-eqz v2, :cond_d

    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    if-eqz v7, :cond_d

    .line 561
    iget-object v7, p0, Lcom/miui/gallery/widget/ViewPager;->mInternalPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v7, p1}, Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 563
    :cond_d
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->completeScroll()V

    .line 564
    invoke-virtual {p0, v1, v6}, Lcom/miui/gallery/widget/ViewPager;->scrollTo(II)V

    .line 565
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->callBackPageSettled()V

    goto/16 :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2890
    iput-boolean p1, p0, Lcom/miui/gallery/widget/ViewPager;->mDragEnabled:Z

    .line 2891
    return-void
.end method

.method public setHeightSlipRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 1133
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mHeightSlipRatio:F

    .line 1134
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ViewPager"

    const-string/jumbo v1, "update height slip ratio, request layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->requestLayout()V

    .line 1138
    :cond_1
    return-void
.end method

.method public setLeftOffscreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 633
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    if-eq p1, v0, :cond_0

    .line 634
    iput p1, p0, Lcom/miui/gallery/widget/ViewPager;->mLeftOffscreenPageLimit:I

    .line 635
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 637
    :cond_0
    return-void
.end method

.method public setMarginSlipRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 1149
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginSlipRatio:F

    .line 1150
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ViewPager"

    const-string/jumbo v1, "update margin slip ratio, request layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->requestLayout()V

    .line 1154
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapterChangeListener:Lcom/miui/gallery/widget/ViewPager$OnAdapterChangeListener;

    .line 465
    return-void
.end method

.method public setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/miui/gallery/widget/ViewPager;->mOnPageChangeListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    .line 577
    return-void
.end method

.method public setOnPageSettledListener(Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/miui/gallery/widget/ViewPager;->mPageSettledListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    .line 585
    return-void
.end method

.method public setPageMargin(I)V
    .locals 3
    .param p1, "marginPixels"    # I

    .prologue
    .line 655
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    .line 656
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    .line 657
    iget v2, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    iput v2, p0, Lcom/miui/gallery/widget/ViewPager;->mInitialPageMargin:I

    .line 659
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v1

    .line 660
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/miui/gallery/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 662
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->requestLayout()V

    .line 663
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 680
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 681
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "invalidate"    # Z

    .prologue
    .line 684
    iput-object p1, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 685
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->refreshDrawableState()V

    .line 686
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setWillNotDraw(Z)V

    .line 687
    if-eqz p2, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->invalidate()V

    .line 690
    :cond_1
    return-void

    .line 686
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRightOffscreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 640
    iget v0, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    if-eq p1, v0, :cond_0

    .line 641
    iput p1, p0, Lcom/miui/gallery/widget/ViewPager;->mRightOffscreenPageLimit:I

    .line 642
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 644
    :cond_0
    return-void
.end method

.method public setWidthSlipRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 1141
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ViewPager;->mWidthSlipRatio:F

    .line 1142
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    sget-boolean v0, Lcom/miui/gallery/widget/ViewPager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ViewPager"

    const-string/jumbo v1, "update width slip ratio, request layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->requestLayout()V

    .line 1146
    :cond_1
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 745
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 781
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 749
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 750
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 751
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 752
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 753
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->completeScroll()V

    .line 754
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->populate()V

    .line 755
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 756
    invoke-direct {p0}, Lcom/miui/gallery/widget/ViewPager;->callBackPageSettled()V

    goto :goto_0

    .line 760
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 761
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/ViewPager;->setScrollState(I)V

    .line 763
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v12

    .line 764
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 765
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 766
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    .line 767
    invoke-virtual {p0, v8}, Lcom/miui/gallery/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 770
    .local v7, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 771
    if-lez p3, :cond_2

    .line 772
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 778
    .local v6, "duration":I
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 779
    iget-object v1, p0, Lcom/miui/gallery/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 780
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 774
    .end local v6    # "duration":I
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/miui/gallery/widget/ViewPager;->mAdapter:Lcom/miui/gallery/widget/PagerAdapter;

    iget v14, p0, Lcom/miui/gallery/widget/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 775
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/miui/gallery/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 776
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    .restart local v6    # "duration":I
    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
