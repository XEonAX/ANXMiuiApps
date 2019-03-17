.class public Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
.super Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;
.source "BiDirectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;,
        Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;
    }
.end annotation


# instance fields
.field private mAnchor:I

.field private mMax:I

.field private mStickyState:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mTouchSlop:I

    .line 41
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    return v0
.end method


# virtual methods
.method public getCurrentValue()I
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 46
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mStickyState:Z

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 48
    .local v0, "action":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 49
    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mAnchor:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mTouchSlop:I

    if-ge v3, v4, :cond_2

    move v1, v2

    .line 66
    .end local v0    # "action":I
    :goto_0
    return v1

    .line 52
    .restart local v0    # "action":I
    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 53
    :cond_1
    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mAnchor:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 54
    iput-boolean v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mStickyState:Z

    .line 58
    .end local v0    # "action":I
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 60
    .local v1, "handled":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->getCurrentValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 61
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mStickyState:Z

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mAnchor:I

    goto :goto_0

    .line 64
    :cond_3
    iput-boolean v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mStickyState:Z

    goto :goto_0
.end method

.method public setCurrentValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setProgress(I)V

    .line 106
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 92
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setMax(I)V

    .line 93
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    .line 94
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 71
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;-><init>(Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-super {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v4, 0x102000d

    .line 76
    instance-of v2, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 78
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    .local v1, "progress":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 80
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 81
    invoke-super {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .end local v0    # "layer":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "progress":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 84
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_1
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    invoke-super {p0, v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method updateThumb(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->mMax:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->updateThumb(I)V

    .line 111
    return-void
.end method
