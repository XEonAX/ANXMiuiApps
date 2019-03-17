.class public Lcom/miui/gallery/search/widget/bannerView/BannerView;
.super Landroid/widget/ViewAnimator;
.source "BannerView.java"

# interfaces
.implements Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnDataChangedListener;
.implements Lcom/miui/gallery/search/widget/bannerView/ILoopController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

.field private mDefaultItemDisplayDuration:I

.field private mIsStarted:Z

.field private mPosition:I

.field private mRunnable:Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;

.field private mShouldStartLoopingWhenAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mDefaultItemDisplayDuration:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mShouldStartLoopingWhenAttached:Z

    .line 145
    new-instance v0, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;-><init>(Lcom/miui/gallery/search/widget/bannerView/BannerView;Lcom/miui/gallery/search/widget/bannerView/BannerView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mRunnable:Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/widget/bannerView/BannerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/widget/bannerView/BannerView;

    .prologue
    .line 14
    iget v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/search/widget/bannerView/BannerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/widget/bannerView/BannerView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/widget/bannerView/BannerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/widget/bannerView/BannerView;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getCircledNextPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/widget/bannerView/BannerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/widget/bannerView/BannerView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->postDelayed(I)V

    return-void
.end method

.method private getCircledNextPosition()I
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->setAnimateFirstView(Z)V

    .line 42
    sget-object v1, Lcom/miui/gallery/R$styleable;->BannerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "array":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mDefaultItemDisplayDuration:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mDefaultItemDisplayDuration:I

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method

.method private postDelayed(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v2, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->getItem(I)Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;

    move-result-object v1

    .line 123
    .local v1, "itemData":Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;
    invoke-virtual {v1}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->getDisplayDuration()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->getDisplayDuration()I

    move-result v0

    .line 125
    .local v0, "delayMills":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mRunnable:Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void

    .line 124
    .end local v0    # "delayMills":I
    :cond_0
    iget v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mDefaultItemDisplayDuration:I

    goto :goto_0
.end method

.method private setupAdapter()V
    .locals 5

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->removeAllViews()V

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 68
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->getView(Lcom/miui/gallery/search/widget/bannerView/BannerView;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "view":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->addView(Landroid/view/View;I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->bindView(Landroid/view/View;I)V

    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mIsStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->isLooping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mShouldStartLoopingWhenAttached:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->startLoop()V

    .line 171
    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "shouldContinueLooping":Z
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->stopLoop()V

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->setupAdapter()V

    .line 136
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->startLoop()V

    .line 139
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->stopLoop()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mShouldStartLoopingWhenAttached:Z

    .line 163
    :cond_0
    return-void
.end method

.method public performNext()V
    .locals 6

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    .local v0, "currIndex":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getChildCount()I

    move-result v5

    rem-int v1, v4, v5

    .line 106
    .local v1, "next":I
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, "nextView":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-direct {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getCircledNextPosition()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->bindView(Landroid/view/View;I)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->showNext()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "adapter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "you have already set an Adapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->setOnDataChangedListener(Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnDataChangedListener;)V

    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->setupAdapter()V

    .line 57
    return-void
.end method

.method public startLoop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call setContentAdapter() before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mIsStarted:Z

    if-nez v0, :cond_1

    .line 85
    iput-boolean v1, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mIsStarted:Z

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mAdapter:Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 87
    iget v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mPosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->postDelayed(I)V

    .line 90
    :cond_1
    return-void
.end method

.method public stopLoop()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mRunnable:Lcom/miui/gallery/search/widget/bannerView/BannerView$AnimRunnable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/widget/bannerView/BannerView;->mIsStarted:Z

    .line 96
    return-void
.end method
