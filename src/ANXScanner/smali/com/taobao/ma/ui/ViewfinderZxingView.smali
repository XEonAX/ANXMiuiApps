.class public final Lcom/taobao/ma/ui/ViewfinderZxingView;
.super Landroid/view/View;
.source "ViewfinderZxingView.java"


# static fields
.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I


# instance fields
.field public ANIMATION_DELAY:J

.field public VIEWFINDER_CORNER_HEIGHT:I

.field public VIEWFINDER_CORNER_WIDTH:I

.field public VIEWFINDER_HEIGHT:I

.field public VIEWFINDER_MIDDLE_LINE_PADDING:I

.field public VIEWFINDER_MIDDLE_LINE_WIDTH:I

.field public VIEWFINDER_WIDTH:I

.field private isFirst:Z

.field public laserColor:I

.field private mContext:Landroid/content/Context;

.field private metrics:Landroid/util/DisplayMetrics;

.field private final paint:Landroid/graphics/Paint;

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/ma/ui/ViewfinderZxingView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x294

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide/16 v0, 0x5a

    iput-wide v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->ANIMATION_DELAY:J

    .line 45
    iput v3, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_WIDTH:I

    .line 50
    iput v3, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_HEIGHT:I

    .line 55
    const/16 v0, 0x10

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_MIDDLE_LINE_WIDTH:I

    .line 70
    const/16 v0, 0xf

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_MIDDLE_LINE_PADDING:I

    .line 75
    const-string v0, "#ffcc0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->laserColor:I

    .line 81
    iput-boolean v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->isFirst:Z

    .line 88
    iput-object p1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    .line 90
    iput v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->scannerAlpha:I

    .line 91
    iget-object v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->metrics:Landroid/util/DisplayMetrics;

    .line 92
    return-void
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getViewFinderRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/taobao/ma/ui/ViewfinderZxingView;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 133
    .local v3, "screenResolution":Landroid/graphics/Point;
    iget v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_WIDTH:I

    .line 134
    .local v5, "width":I
    iget v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_HEIGHT:I

    .line 136
    .local v0, "height":I
    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    div-int/lit8 v1, v6, 0x2

    .line 137
    .local v1, "leftOffset":I
    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    div-int/lit8 v4, v6, 0x2

    .line 138
    .local v4, "topOffset":I
    new-instance v2, Landroid/graphics/Rect;

    add-int v6, v1, v5

    add-int v7, v4, v0

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    .local v2, "rect":Landroid/graphics/Rect;
    return-object v2
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 150
    iput-object v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->mContext:Landroid/content/Context;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->isFirst:Z

    .line 152
    iput-object v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->metrics:Landroid/util/DisplayMetrics;

    .line 153
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/taobao/ma/ui/ViewfinderZxingView;->getViewFinderRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 97
    .local v8, "frame":Landroid/graphics/Rect;
    if-nez v8, :cond_0

    .line 128
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->isFirst:Z

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->isFirst:Z

    .line 103
    iget v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 114
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_WIDTH:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->VIEWFINDER_CORNER_HEIGHT:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lcom/taobao/ma/ui/ViewfinderZxingView;->SCANNER_ALPHA:[I

    iget v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    iget v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/taobao/ma/ui/ViewfinderZxingView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->scannerAlpha:I

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int v9, v0, v1

    .line 124
    .local v9, "middle":I
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    add-int/lit8 v0, v9, -0x1

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v9, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    iget-wide v2, p0, Lcom/taobao/ma/ui/ViewfinderZxingView;->ANIMATION_DELAY:J

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0x6

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0x6

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0x6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/ma/ui/ViewfinderZxingView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method
