.class public abstract Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field protected final mHeaderImage:Landroid/widget/ImageView;

.field protected final mHeaderProgress:Landroid/widget/ProgressBar;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/view/View;

.field protected final mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 66
    iput-object p3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mScrollDirection:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    .line 68
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout$1;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040093

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    const v5, 0x7f120192

    invoke-virtual {p0, v5}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    .line 76
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    const v6, 0x7f120195

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 77
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    const v6, 0x7f120194

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 78
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    const v6, 0x7f120196

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 79
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    const v6, 0x7f120193

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 81
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout$1;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    .line 86
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_8

    const/16 v5, 0x50

    :goto_0
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    const v5, 0x7f0c0252

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 90
    const v5, 0x7f0c0253

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 91
    const v5, 0x7f0c0254

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 95
    const/4 v5, 0x1

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    const/4 v5, 0x1

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 102
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 104
    .local v4, "styleID":Landroid/util/TypedValue;
    const/16 v5, 0xa

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 105
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setTextAppearance(I)V

    .line 107
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .restart local v4    # "styleID":Landroid/util/TypedValue;
    const/16 v5, 0xb

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 110
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setSubTextAppearance(I)V

    .line 114
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    const/4 v5, 0x2

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 116
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 117
    invoke-direct {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    const/4 v5, 0x3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 121
    const/4 v5, 0x3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 123
    invoke-direct {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    const/4 v2, 0x0

    .line 129
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x6

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    const/4 v5, 0x6

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 135
    :cond_5
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout$1;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 138
    const/4 v5, 0x7

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    const/4 v5, 0x7

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    :cond_6
    :goto_1
    if-nez v2, :cond_7

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getDefaultDrawableResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    :cond_7
    invoke-virtual {p0, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->reset()V

    .line 163
    return-void

    .line 86
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v5, 0x5

    goto/16 :goto_0

    .line 140
    .restart local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    const/16 v5, 0x12

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    const/16 v5, 0x12

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 146
    :pswitch_0
    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 147
    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 148
    :cond_a
    const/16 v5, 0x13

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    const/16 v5, 0x13

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 349
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 355
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 364
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    :cond_1
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout$1;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mScrollDirection:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .locals 1
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->onPullImpl(F)V

    .line 206
    :cond_0
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->pullToRefreshImpl()V

    .line 215
    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_1
    return-void

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->refreshingImpl()V

    goto :goto_0
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->releaseToRefreshImpl()V

    .line 241
    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :cond_1
    :goto_1
    return-void

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->resetImpl()V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 167
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->requestLayout()V

    .line 169
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mUseIntrinsicAnimation:Z

    .line 276
    invoke-virtual {p0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    .line 277
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 281
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 285
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 289
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 173
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->requestLayout()V

    .line 175
    return-void
.end method
