.class public Lmiui/widget/MiCloudStateView;
.super Landroid/widget/FrameLayout;
.source "MiCloudStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/MiCloudStateView$UpdateStateTask;,
        Lmiui/widget/MiCloudStateView$SyncObserver;,
        Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;,
        Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    }
.end annotation


# static fields
.field private static final SYNC_OBSERVER_MASK:I = 0xd

.field private static final SYNC_OBSERVER_TYPE_STATUS:I = 0x8


# instance fields
.field private mCloudCountNormalTextAppearance:I

.field private mCloudStatusDisabledTextAppearance:I

.field private mCloudStatusHighlightTextAppearance:I

.field private mCloudStatusNormalTextAppearance:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

.field private mDisabledStatusText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

.field private mMiCloudCountText:Landroid/widget/TextView;

.field private mMiCloudStatusText:Landroid/widget/TextView;

.field private mPendingUpdate:Z

.field private mSyncChangeHandle:Ljava/lang/Object;

.field private mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

.field private mSyncing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MiCloudStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MiCloudStateView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .line 31
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/widget/MiCloudStateView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    return p1
.end method

.method static synthetic access$302(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$UpdateStateTask;)Lmiui/widget/MiCloudStateView$UpdateStateTask;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Lmiui/widget/MiCloudStateView$UpdateStateTask;

    .line 31
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    return-object p1
.end method

.method static synthetic access$400(Lmiui/widget/MiCloudStateView;ZZ[I)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # [I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MiCloudStateView;->updateLayout(ZZ[I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/MiCloudStateView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .line 31
    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$502(Lmiui/widget/MiCloudStateView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    return p1
.end method

.method private getTotalCount([I)I
    .locals 4
    .param p1, "counts"    # [I

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "totalCount":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 334
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 335
    .local v3, "cnt":I
    add-int/2addr v0, v3

    .line 334
    .end local v3    # "cnt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 103
    sget-object v0, Lcom/miui/system/internal/R$styleable;->MiCloudStateView:[I

    sget v1, Lcom/miui/system/internal/R$attr;->cloudStateViewStyle:I

    sget v2, Lmiui/system/R$style;->Widget_MiCloudStateView_Light:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudCountNormalTextAppearance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudCountNormalTextAppearance:I

    .line 109
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusNormalTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    .line 111
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusHighlightTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I

    .line 113
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusDisabledTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusDisabledTextAppearance:I

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$string;->cloud_state_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/MiCloudStateView;->mDisabledStatusText:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mContext:Landroid/content/Context;

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/widget/MiCloudStateView;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method private updateLayout(ZZ[I)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "syncing"    # Z
    .param p3, "unsyncedCounts"    # [I

    .line 292
    invoke-direct {p0, p3}, Lmiui/widget/MiCloudStateView;->getTotalCount([I)I

    move-result v0

    .line 293
    .local v0, "totalUnsyncedCount":I
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/system/internal/R$drawable;->cloud_state_disabled_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudStateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mDisabledStatusText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    .line 298
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$drawable;->cloud_btn:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 297
    invoke-virtual {v2, v1, v1, v3, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 300
    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 301
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$drawable;->cloud_state_enabled_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmiui/widget/MiCloudStateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 304
    if-lez v0, :cond_1

    .line 305
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p3}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getUnsyncedCountText(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    sget v2, Lcom/miui/system/internal/R$string;->cloud_state_finished:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$drawable;->cloud_state_enabled_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmiui/widget/MiCloudStateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    sget v2, Lcom/miui/system/internal/R$string;->cloud_state_syncing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 317
    .local v1, "context":Landroid/content/Context;
    if-nez p2, :cond_3

    if-lez v0, :cond_3

    .line 318
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v3, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 319
    :cond_3
    if-nez p1, :cond_4

    .line 320
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v3, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusDisabledTextAppearance:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 322
    :cond_4
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v3, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 325
    :goto_1
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

    invoke-interface {v2, p1, p2, p3}, Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;->onLayoutUpdate(ZZ[I)V

    .line 328
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->requestLayout()V

    .line 329
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 261
    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 127
    sget v0, Lcom/miui/system/internal/R$id;->cloud_count:I

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/miui/system/internal/R$id;->cloud_status:I

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/MiCloudStateView;->mCloudCountNormalTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 133
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 270
    add-int v1, p3, p5

    div-int/lit8 v1, v1, 0x2

    .line 271
    .local v1, "verticalCenter":I
    add-int v2, p2, p4

    div-int/lit8 v2, v2, 0x2

    .line 272
    .local v2, "horizontalCenter":I
    iget-object v3, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    .line 273
    .local v3, "childStatusLeft":I
    iget-object v4, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 274
    .local v4, "childStatusRight":I
    iget-object v5, v0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 275
    .local v5, "isCountTextVisible":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 276
    iget-object v6, v0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 277
    .local v6, "totalHeight":I
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v1, v7

    .line 278
    .local v7, "childTop":I
    iget-object v8, v0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v7

    .line 279
    .local v8, "childBottom":I
    iget-object v9, v0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmiui/widget/MiCloudStateView;->getPaddingStart()I

    move-result v10

    add-int/2addr v10, p2

    invoke-virtual {v0}, Lmiui/widget/MiCloudStateView;->getPaddingEnd()I

    move-result v11

    sub-int v11, p4, v11

    invoke-virtual {v9, v10, v7, v11, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 280
    move v7, v8

    .line 281
    iget-object v9, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 282
    iget-object v9, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v9, v3, v7, v4, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 283
    .end local v6    # "totalHeight":I
    .end local v7    # "childTop":I
    .end local v8    # "childBottom":I
    goto :goto_1

    .line 284
    :cond_1
    iget-object v6, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 285
    .restart local v6    # "totalHeight":I
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v1, v7

    .line 286
    .restart local v7    # "childTop":I
    iget-object v8, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v7

    .line 287
    .restart local v8    # "childBottom":I
    iget-object v9, v0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v9, v3, v7, v4, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 289
    .end local v6    # "totalHeight":I
    .end local v7    # "childTop":I
    .end local v8    # "childBottom":I
    :goto_1
    return-void
.end method

.method public registerObserver()V
    .locals 2

    .line 192
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 193
    const/16 v0, 0xd

    new-instance v1, Lmiui/widget/MiCloudStateView$SyncObserver;

    invoke-direct {v1, p0}, Lmiui/widget/MiCloudStateView$SyncObserver;-><init>(Lmiui/widget/MiCloudStateView;)V

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    .line 196
    :cond_0
    return-void
.end method

.method public setDisabledStatusText(Ljava/lang/String;)V
    .locals 1
    .param p1, "disabledStatusText"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mDisabledStatusText:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setLayoutUpdateListener(Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

    .line 169
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

    .line 170
    return-void
.end method

.method public setSyncInfoProvider(Lmiui/widget/MiCloudStateView$ISyncInfoProvider;)V
    .locals 0
    .param p1, "provider"    # Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    .line 161
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    .line 162
    return-void
.end method

.method public setTotalCountText(Ljava/lang/String;)V
    .locals 1
    .param p1, "countText"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public unregisterObserver()V
    .locals 1

    .line 202
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 1

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    .line 213
    return-void
.end method

.method public updateState(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 221
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/widget/MiCloudStateView$1;

    invoke-direct {v1, p0, p1}, Lmiui/widget/MiCloudStateView$1;-><init>(Lmiui/widget/MiCloudStateView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 232
    if-eqz p1, :cond_1

    .line 233
    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    .line 235
    :cond_1
    return-void

    .line 241
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    if-eqz v0, :cond_3

    .line 242
    return-void

    .line 245
    :cond_3
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    if-eqz v0, :cond_5

    .line 249
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    if-nez v0, :cond_4

    .line 250
    new-instance v0, Lmiui/widget/MiCloudStateView$UpdateStateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;-><init>(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$1;)V

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    .line 251
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 253
    :cond_4
    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSyncInfoProvider can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
