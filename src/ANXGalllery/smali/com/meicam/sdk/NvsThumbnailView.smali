.class public Lcom/meicam/sdk/NvsThumbnailView;
.super Landroid/view/View;
.source "NvsThumbnailView.java"


# instance fields
.field private m_iconGetter:J

.field private m_mediaFilePath:Ljava/lang/String;

.field private m_needUpdate:Z

.field private m_painting:Z

.field private m_thumbnail:Landroid/graphics/Bitmap;

.field private m_thumbnailView:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    .line 43
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    .line 43
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    .line 43
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    .line 43
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/meicam/sdk/NvsThumbnailView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private cancelIconTask()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsThumbnailView;->nativeCancelIconTask(J)V

    .line 145
    :cond_0
    return-void
.end method

.method private native nativeCancelIconTask(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeGetThumbnail(JLjava/lang/String;)V
.end method

.method private native nativeInit()J
.end method


# virtual methods
.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 83
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyThumbnailArrived(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    if-nez v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailView;->invalidate()V

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meicam/sdk/NvsThumbnailView$1;

    invoke-direct {v1, p0, p1}, Lcom/meicam/sdk/NvsThumbnailView$1;-><init>(Lcom/meicam/sdk/NvsThumbnailView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailView;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    .line 128
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 132
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailView;->cancelIconTask()V

    .line 133
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 134
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsThumbnailView;->nativeClose(J)V

    .line 135
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    .line 136
    iput-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 139
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 140
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    if-eqz v0, :cond_4

    .line 94
    :cond_2
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnailView:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 97
    iput-boolean v3, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    .line 99
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_iconGetter:J

    iget-object v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/sdk/NvsThumbnailView;->nativeGetThumbnail(JLjava/lang/String;)V

    .line 101
    :cond_3
    iput-boolean v3, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_painting:Z

    goto :goto_0

    .line 105
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsThumbnailView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 107
    iget-object v1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 108
    iget-object v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 109
    int-to-double v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 110
    int-to-double v6, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v6, v8

    .line 111
    cmpl-double v3, v4, v6

    if-lez v3, :cond_5

    .line 112
    int-to-double v2, v1

    div-double/2addr v2, v6

    .line 113
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v4, v2

    div-double/2addr v4, v10

    double-to-int v4, v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 114
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 120
    :goto_1
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 121
    iget-object v2, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_thumbnail:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 116
    :cond_5
    int-to-double v2, v2

    div-double/2addr v2, v4

    .line 117
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v4, v2

    div-double/2addr v4, v10

    double-to-int v4, v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 118
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public setMediaFilePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 68
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_mediaFilePath:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailView;->m_needUpdate:Z

    .line 73
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailView;->cancelIconTask()V

    .line 74
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailView;->invalidate()V

    goto :goto_0
.end method
