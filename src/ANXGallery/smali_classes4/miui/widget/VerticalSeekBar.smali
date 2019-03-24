.class public Lmiui/widget/VerticalSeekBar;
.super Lmiui/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private final fu:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/VerticalSeekBar;->fu:Landroid/graphics/Rect;

    .line 32
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/widget/VerticalSeekBar;->setLayoutDirection(I)V

    .line 33
    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 6

    .line 42
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 49
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v1

    .line 50
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v2

    .line 51
    sub-int v3, v2, v1

    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 52
    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 53
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, v2, v1

    .line 54
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    .line 55
    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 8

    .line 61
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lmiui/widget/VerticalSeekBar;->fu:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 69
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 70
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 71
    sub-int/2addr v4, v2

    .line 74
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getThumbOffset()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 76
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getMax()I

    move-result v5

    .line 77
    if-lez v5, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgress()I

    move-result v7

    int-to-float v7, v7

    int-to-float v5, v5

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 78
    :goto_0
    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    .line 79
    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 81
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object p1, p0, Lmiui/widget/VerticalSeekBar;->fu:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;->g(Landroid/graphics/Canvas;)V

    .line 38
    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;->h(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 92
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 93
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 94
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 95
    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 96
    invoke-super {p0, p1}, Lmiui/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
