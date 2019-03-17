.class public abstract Lcom/miui/gallery/movie/ui/view/BaseMovieView;
.super Landroid/view/ViewGroup;
.source "BaseMovieView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;
    }
.end annotation


# instance fields
.field protected mDisplayView:Landroid/view/View;

.field private mExtraContent:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIVDelete:Landroid/widget/ImageView;

.field private mIvPlay:Landroid/widget/ImageView;

.field private mLoadingView:Landroid/view/View;

.field private mPercent:F

.field private mPlayProgress:Lcom/miui/gallery/movie/ui/view/PlayProgressView;

.field private mPreviewBtn:Landroid/widget/Button;

.field private mProgressChangeListener:Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

.field private mScaledTouchSlop:I

.field private mTVDuration:Landroid/widget/TextView;

.field private mTouchAvailable:Z

.field private mViewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mViewWidth:F

    .line 54
    new-instance v0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;-><init>(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mViewWidth:F

    .line 54
    new-instance v0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;-><init>(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mViewWidth:F

    .line 54
    new-instance v0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;-><init>(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mTouchAvailable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mViewWidth:F

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPercent:F

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/movie/ui/view/BaseMovieView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPercent:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mProgressChangeListener:Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    return-object v0
.end method

.method public static showView(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "show"    # Z

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 259
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method protected abstract createDisplayView()Landroid/view/View;
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400c1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->createDisplayView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    .line 83
    const v1, 0x7f12017f

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mExtraContent:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->addView(Landroid/view/View;I)V

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mScaledTouchSlop:I

    .line 87
    const v1, 0x7f120182

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIvPlay:Landroid/widget/ImageView;

    .line 88
    const v1, 0x7f120183

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/movie/ui/view/PlayProgressView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPlayProgress:Lcom/miui/gallery/movie/ui/view/PlayProgressView;

    .line 89
    const v1, 0x7f1201d0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mTVDuration:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f1201e7

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIVDelete:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f1201e6

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPreviewBtn:Landroid/widget/Button;

    .line 92
    const v1, 0x7f1201e8

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mLoadingView:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    new-instance v2, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;-><init>(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 196
    sub-int v5, p4, p2

    .line 197
    .local v5, "width":I
    sub-int v4, p5, p3

    .line 199
    .local v4, "height":I
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 200
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 201
    .local v1, "dl":I
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v2, v1, v6

    .line 202
    .local v2, "dr":I
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v4, v6

    int-to-double v6, v6

    const-wide v8, 0x3ff999999999999aL    # 1.6

    div-double/2addr v6, v8

    double-to-int v3, v6

    .line 203
    .local v3, "dt":I
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v0, v3, v6

    .line 204
    .local v0, "db":I
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 205
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mExtraContent:Landroid/view/View;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 207
    .end local v0    # "db":I
    .end local v1    # "dl":I
    .end local v2    # "dr":I
    .end local v3    # "dt":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 211
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 212
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 213
    .local v5, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 215
    .local v2, "height":I
    invoke-static {}, Lcom/miui/gallery/movie/MovieConfig;->getMovieRatio()F

    move-result v3

    .line 216
    .local v3, "movieRatio":F
    int-to-float v6, v5

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 217
    .local v4, "wAspectRatio":F
    move v1, v5

    .line 218
    .local v1, "displayWidth":I
    move v0, v2

    .line 219
    .local v0, "displayHeight":I
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    cmpg-float v6, v4, v3

    if-gez v6, :cond_1

    .line 221
    int-to-float v6, v1

    div-float/2addr v6, v3

    float-to-int v0, v6

    .line 226
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 227
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mExtraContent:Landroid/view/View;

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 228
    int-to-float v6, v1

    iput v6, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mViewWidth:F

    .line 229
    invoke-virtual {p0, v5, v2}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->setMeasuredDimension(II)V

    .line 230
    return-void

    .line 223
    :cond_1
    int-to-float v6, v0

    mul-float/2addr v6, v3

    float-to-int v1, v6

    goto :goto_0
.end method

.method public setDeleteClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIVDelete:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIVDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 6
    .param p1, "second"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mTVDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mTVDuration:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "00:%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setIvPlayListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method public setPreviewBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPreviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method public setProgressChangeListener(Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;)V
    .locals 0
    .param p1, "progressChangeListener"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mProgressChangeListener:Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    .line 243
    return-void
.end method

.method public setTouchAvailable(Z)V
    .locals 0
    .param p1, "touchAvailable"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mTouchAvailable:Z

    .line 139
    return-void
.end method

.method public showDeleteIcon(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIVDelete:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    .line 167
    return-void
.end method

.method public showDuration(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mTVDuration:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    .line 163
    return-void
.end method

.method public showExtraContent(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 184
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mExtraContent:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v6, v1, [F

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v6, v7

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :goto_1
    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 185
    .local v0, "translate":Landroid/animation/Animator;
    new-instance v1, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 187
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 188
    return-void

    .end local v0    # "translate":Landroid/animation/Animator;
    :cond_0
    move v1, v3

    .line 184
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method public showLoadingView(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public showPlayBtn(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mIvPlay:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    .line 159
    return-void
.end method

.method public showPlayProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPlayProgress:Lcom/miui/gallery/movie/ui/view/PlayProgressView;

    invoke-static {v0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    .line 155
    return-void
.end method

.method public showPreviewBtn(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPreviewBtn:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    .line 171
    return-void
.end method

.method public updatePlayProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->mPlayProgress:Lcom/miui/gallery/movie/ui/view/PlayProgressView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->setProgress(F)V

    .line 151
    return-void
.end method
