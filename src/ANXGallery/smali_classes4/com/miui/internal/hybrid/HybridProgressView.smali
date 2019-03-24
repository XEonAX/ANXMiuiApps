.class public Lcom/miui/internal/hybrid/HybridProgressView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final fl:I = 0x2710

.field private static final fm:I = 0x2a

.field private static final fn:I = 0xa

.field private static final fo:I = 0x28

.field private static final fp:I = 0x251c

.field private static final fq:I = 0x320


# instance fields
.field private fr:I

.field private fs:I

.field private ft:I

.field private fu:Landroid/graphics/Rect;

.field private fv:Landroid/graphics/drawable/Drawable;

.field private fw:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->d(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->d(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->d(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridProgressView;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fs:I

    return p0
.end method

.method static synthetic c(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->ft:I

    return p0
.end method

.method static synthetic d(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    .line 65
    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    .line 66
    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fs:I

    .line 67
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$drawable;->hybrid_progress_reverse:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fv:Landroid/graphics/drawable/Drawable;

    .line 68
    new-instance p1, Lcom/miui/internal/hybrid/HybridProgressView$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/hybrid/HybridProgressView$1;-><init>(Lcom/miui/internal/hybrid/HybridProgressView;)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fw:Landroid/graphics/Rect;

    .line 90
    return-void
.end method

.method static synthetic e(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 113
    const/16 v0, 0x64

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 119
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    neg-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fw:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fv:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fw:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 95
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    mul-int/2addr p4, p2

    div-int/lit16 p4, p4, 0x2710

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 96
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 97
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fu:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 98
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 101
    mul-int/lit8 p1, p1, 0x64

    .line 102
    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fs:I

    const/16 v1, 0x320

    if-gt v0, v1, :cond_0

    .line 103
    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fs:I

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    .line 105
    :cond_0
    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fs:I

    .line 106
    iget p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fs:I

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->fr:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->ft:I

    .line 108
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
