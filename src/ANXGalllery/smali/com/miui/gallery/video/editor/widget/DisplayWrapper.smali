.class public abstract Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
.super Landroid/view/ViewGroup;
.source "DisplayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;
    }
.end annotation


# static fields
.field public static LEFT:I

.field public static RIGHT:I


# instance fields
.field private LAYOUT:I

.field private downX:F

.field private dx:F

.field private mAspectRatio:F

.field private mAudioVoice:Landroid/widget/ImageView;

.field private mAutoTrimButton:Landroid/widget/TextView;

.field private mDisplayView:Landroid/view/View;

.field private mExtraContent:Landroid/view/View;

.field private mIProgress:Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

.field private mIvPlay:Landroid/widget/ImageView;

.field private mPercent:F

.field private mPlayProgress:Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;

.field private mScaledTouchSlop:I

.field private mThumbnailImageView:Landroid/widget/ImageView;

.field private mViewWidth:F

.field private moveX:F

.field private upX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LEFT:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->RIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    .line 26
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->downX:F

    .line 27
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->moveX:F

    .line 28
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->upX:F

    .line 29
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->dx:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LAYOUT:I

    .line 32
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    .line 26
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->downX:F

    .line 27
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->moveX:F

    .line 28
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->upX:F

    .line 29
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->dx:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LAYOUT:I

    .line 32
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    .line 26
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->downX:F

    .line 27
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->moveX:F

    .line 28
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->upX:F

    .line 29
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->dx:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LAYOUT:I

    .line 32
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->downX:F

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->downX:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->moveX:F

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->moveX:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->dx:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->dx:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mPercent:F

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mPercent:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LAYOUT:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LAYOUT:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mIProgress:Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->upX:F

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->upX:F

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mThumbnailImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected abstract createDisplayView()Landroid/view/View;
.end method

.method public getAudioVoiceSelected()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAudioVoice:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method public getDisplayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    return-object v0
.end method

.method public getViewWidth()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    return v0
.end method

.method public hideThumbnail()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$2;-><init>(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->createDisplayView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    .line 56
    const v0, 0x7f12017f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mExtraContent:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->addView(Landroid/view/View;I)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mScaledTouchSlop:I

    .line 59
    const v0, 0x7f120180

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mThumbnailImageView:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f120182

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mIvPlay:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f120184

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAudioVoice:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f120183

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mPlayProgress:Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;

    .line 63
    const v0, 0x7f120181

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAutoTrimButton:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;-><init>(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
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
    .line 157
    sub-int v5, p4, p2

    .line 158
    .local v5, "width":I
    sub-int v4, p5, p3

    .line 160
    .local v4, "height":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 161
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 162
    .local v1, "dl":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v2, v1, v6

    .line 163
    .local v2, "dr":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v4, v6

    int-to-double v6, v6

    const-wide v8, 0x3ff999999999999aL    # 1.6

    div-double/2addr v6, v8

    double-to-int v3, v6

    .line 164
    .local v3, "dt":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v0, v3, v6

    .line 165
    .local v0, "db":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 166
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mExtraContent:Landroid/view/View;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 168
    .end local v0    # "db":I
    .end local v1    # "dl":I
    .end local v2    # "dr":I
    .end local v3    # "dt":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 172
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 174
    .local v3, "mWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 175
    .local v2, "mHeight":I
    int-to-float v5, v3

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 176
    .local v4, "wAspectRatio":F
    move v1, v3

    .line 177
    .local v1, "displayWidth":I
    move v0, v2

    .line 178
    .local v0, "displayHeight":I
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 180
    int-to-float v5, v1

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 185
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 186
    iget-object v5, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mExtraContent:Landroid/view/View;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 187
    int-to-float v5, v1

    iput v5, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mViewWidth:F

    .line 188
    invoke-virtual {p0, v3, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setMeasuredDimension(II)V

    .line 189
    return-void

    .line 182
    :cond_1
    int-to-float v5, v0

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 151
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAspectRatio:F

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->requestLayout()V

    .line 153
    return-void
.end method

.method public setAudioVoiceListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAudioVoice:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method public setAudioVoiceSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAudioVoice:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 226
    return-void
.end method

.method public setAutoTrimEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAutoTrimButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    return-void
.end method

.method public setAutoTrimListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAutoTrimButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mDisplayView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method public setIProgress(Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;)V
    .locals 0
    .param p1, "IProgress"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mIProgress:Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    .line 213
    return-void
.end method

.method public setIvPlayListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method

.method public showAudioVoice(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAudioVoice:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAudioVoice:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showAutoTrimBtn(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAutoTrimButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mAutoTrimButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showPlayBtn(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mIvPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mIvPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showPlayProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mPlayProgress:Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mPlayProgress:Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    return-void
.end method

.method public updatePlayProgress(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "stopX"    # I
    .param p4, "stopY"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->mPlayProgress:Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->updateWidth(IIII)V

    .line 97
    return-void
.end method
