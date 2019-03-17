.class public abstract Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field private mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

.field private mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private mMaximumPullScroll:I

.field private mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 75
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 76
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 82
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 83
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 84
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 85
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 89
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 75
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 76
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 82
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 83
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 84
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 85
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 89
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 75
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 76
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 82
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 83
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 84
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 85
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 89
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 116
    iput-object p2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 75
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 76
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 82
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 83
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 84
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 85
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 89
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 122
    iput-object p2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 123
    iput-object p3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1023
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1024
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1027
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    return-void
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1032
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1190
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1196
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1192
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1202
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1207
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMaximumPullScroll:I

    if-eqz v0, :cond_0

    .line 1208
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMaximumPullScroll:I

    .line 1210
    :goto_0
    return v0

    .line 1204
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v9, 0x9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 1045
    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1051
    invoke-virtual {p0, v7}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 1055
    :goto_0
    invoke-virtual {p0, v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    .line 1057
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1058
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    .line 1061
    sget-object v3, Lcom/miui/gallery/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1063
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 1067
    :cond_0
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1074
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1075
    iget-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1078
    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 1079
    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 1084
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1085
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1086
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1087
    iget-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1097
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1100
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1101
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1105
    :cond_4
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1106
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMaximumPullScroll:I

    .line 1112
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1116
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 1117
    return-void

    .line 1047
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1089
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_6
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1090
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1091
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1092
    iget-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1120
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1122
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    .line 1124
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    .line 1126
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1143
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1150
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .line 1151
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 1155
    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1162
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1163
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1167
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1169
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1170
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1171
    .local v4, "scale":F
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1177
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->onPull(F)V

    .line 1181
    :goto_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1182
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 1187
    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .line 1145
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    .line 1146
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 1147
    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1157
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1158
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1159
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1173
    .restart local v4    # "scale":F
    :pswitch_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->onPull(F)V

    goto :goto_2

    .line 1183
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1184
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1155
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1171
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1221
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1222
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1226
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1231
    :cond_0
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1237
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1241
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1242
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1244
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1246
    :cond_1
    new-instance v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;IIJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    .line 1248
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1254
    :cond_2
    :goto_1
    return-void

    .line 1233
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1234
    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1251
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 133
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void

    .line 138
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 560
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 568
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 572
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 573
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    .line 572
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    move-result-object v0

    .line 574
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 575
    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 583
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;-><init>()V

    .line 585
    .local v0, "proxy":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;)V

    .line 588
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;)V

    .line 592
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getCurrentMode()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    .locals 1

    .prologue
    .line 616
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 620
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    .locals 1

    .prologue
    .line 624
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 628
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 172
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 632
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 636
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 640
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 650
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 204
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 290
    :goto_0
    return v6

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 231
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 232
    :cond_1
    iput-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 236
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 237
    goto :goto_0

    .line 240
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 290
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 242
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 247
    .local v4, "x":F
    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 254
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 255
    .local v2, "diff":F
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 258
    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 260
    .local v0, "absDiff":F
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 261
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 262
    iput v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 263
    iput v4, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 264
    iput-boolean v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 265
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 266
    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 249
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 250
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 251
    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .line 268
    .restart local v0    # "absDiff":F
    :cond_6
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 269
    iput v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 270
    iput v4, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 271
    iput-boolean v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 272
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 273
    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 281
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 284
    iput-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 677
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 686
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 693
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 704
    :goto_0
    return-void

    .line 695
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 295
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 298
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 713
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->refreshing()V

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->refreshing()V

    .line 720
    :cond_1
    if-eqz p1, :cond_3

    .line 721
    iget-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_2

    .line 724
    new-instance v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    .line 731
    .local v0, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 738
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 748
    .end local v0    # "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_0
    return-void

    .line 734
    .restart local v0    # "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 742
    .end local v0    # "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 746
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 755
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 766
    :goto_0
    return-void

    .line 757
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 760
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 773
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 777
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->reset()V

    .line 778
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->reset()V

    .line 780
    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    .line 781
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 785
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 786
    check-cast v0, Landroid/os/Bundle;

    .line 788
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 789
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 791
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 792
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 795
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 797
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .line 798
    .local v1, "viewState":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 799
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 803
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 808
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 807
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 812
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 818
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 821
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 822
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 823
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 825
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 833
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 836
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 837
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 325
    goto :goto_0

    .line 312
    :pswitch_1
    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 316
    goto :goto_0

    .line 332
    :pswitch_2
    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 333
    iput-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 335
    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_4

    .line 337
    :cond_3
    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 338
    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 344
    goto :goto_0

    .line 349
    :cond_5
    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 351
    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 7

    .prologue
    .line 844
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 846
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 847
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 848
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 849
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 851
    .local v1, "pBottom":I
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 888
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 889
    return-void

    .line 853
    :pswitch_0
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setWidth(I)V

    .line 855
    neg-int v2, v0

    .line 860
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 861
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setWidth(I)V

    .line 862
    neg-int v3, v0

    goto :goto_0

    .line 857
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 864
    :cond_1
    const/4 v3, 0x0

    .line 866
    goto :goto_0

    .line 869
    :pswitch_1
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setHeight(I)V

    .line 871
    neg-int v4, v0

    .line 876
    :goto_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 877
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setHeight(I)V

    .line 878
    neg-int v1, v0

    goto :goto_0

    .line 873
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 880
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 368
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 369
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 373
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 374
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 924
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 925
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 927
    iget-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 928
    if-gez p1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 948
    :cond_0
    :goto_0
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 956
    :goto_1
    return-void

    .line 930
    :cond_1
    if-lez p1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 933
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 934
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 950
    :pswitch_0
    invoke-virtual {p0, v3, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 953
    :pswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 382
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 389
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 403
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 404
    return-void
.end method

.method public final setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 408
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 412
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 413
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 415
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    .line 419
    return-void
.end method

.method public final setOnRefreshListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 431
    return-void
.end method

.method public final setOnRefreshListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 425
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 438
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 455
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 456
    return-void

    .line 455
    :cond_0
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 460
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 461
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 470
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 473
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 480
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 497
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 498
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 505
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 507
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 510
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 511
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 361
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 362
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 515
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 516
    return-void
.end method

.method final varargs setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 525
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 530
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 553
    :cond_0
    return-void

    .line 532
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 535
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 538
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 542
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 965
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 966
    return-void
.end method

.method protected final smoothScrollTo(ILcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 976
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 977
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 996
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 999
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1010
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1011
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1019
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 1020
    return-void

    .line 1019
    :cond_4
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method
