.class public Lcom/meicam/sdk/NvsThumbnailSequenceView;
.super Landroid/view/ViewGroup;
.source "NvsThumbnailSequenceView.java"


# instance fields
.field private m_duration:J

.field private m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

.field private m_mediaFilePath:Ljava/lang/String;

.field private m_needsUpdateInternalView:Z

.field private m_startTime:J

.field private m_stillImageHint:Z

.field private m_thumbnailAspectRatio:F

.field private m_thumbnailImageFillMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    .line 40
    const-wide/32 v0, 0x3d0900

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    .line 41
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 42
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    .line 43
    iput v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 46
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    .line 40
    const-wide/32 v0, 0x3d0900

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    .line 41
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 42
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    .line 43
    iput v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 46
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    .line 40
    const-wide/32 v0, 0x3d0900

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    .line 41
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 42
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    .line 43
    iput v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 46
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    .line 66
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 67
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    .line 40
    const-wide/32 v0, 0x3d0900

    iput-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    .line 41
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 42
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    .line 43
    iput v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 46
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/meicam/sdk/NvsThumbnailSequenceView;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->doUpdateInternalView()V

    return-void
.end method

.method private doUpdateInternalView()V
    .locals 6

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    .line 295
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    iget v1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setThumbnailAspectRatio(F)V

    .line 296
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->getWidth()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setPixelPerMicrosecond(D)V

    .line 298
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    iget v1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setThumbnailImageFillMode(I)V

    .line 300
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_mediaFilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setThumbnailSequenceDescArray(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_mediaFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 307
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 308
    iget-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    iput-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 309
    iget-wide v2, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    iput-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 310
    iget-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    iget-wide v4, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 311
    iget-boolean v1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    iput-boolean v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setThumbnailSequenceDescArray(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 80
    new-instance v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-direct {v0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 81
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setScrollEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method private updateInternalView()V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_needsUpdateInternalView:Z

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meicam/sdk/NvsThumbnailSequenceView$1;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView$1;-><init>(Lcom/meicam/sdk/NvsThumbnailSequenceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 188
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    return-wide v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 138
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_mediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 163
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    return-wide v0
.end method

.method public getStillImageHint()Z
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 239
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    return v0
.end method

.method public getThumbnailAspectRatio()F
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 216
    iget v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    return v0
.end method

.method public getThumbnailImageFillMode()I
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 114
    iget v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->layout(IIII)V

    .line 256
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_internalView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v0, p1, p2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->measure(II)V

    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 250
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 261
    if-eq p3, p1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    .line 264
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 265
    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 173
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 174
    const-wide/16 p1, 0x1

    .line 175
    :cond_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_1
    iput-wide p1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_duration:J

    .line 179
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    goto :goto_0
.end method

.method public setMediaFilePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 125
    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_mediaFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_mediaFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_mediaFilePath:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 147
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 148
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 150
    :cond_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_1
    iput-wide p1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_startTime:J

    .line 154
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    goto :goto_0
.end method

.method public setStillImageHint(Z)V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 226
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    if-ne p1, v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_stillImageHint:Z

    .line 230
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    goto :goto_0
.end method

.method public setThumbnailAspectRatio(F)V
    .locals 3

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    const v0, 0x3dcccccd    # 0.1f

    .line 197
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 198
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 203
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 208
    :goto_1
    return-void

    .line 200
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 201
    goto :goto_0

    .line 206
    :cond_2
    iput p1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 207
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    goto :goto_1
.end method

.method public setThumbnailImageFillMode(I)V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 94
    iget v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 100
    :cond_0
    iget v0, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    if-ne v0, p1, :cond_1

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 104
    invoke-direct {p0}, Lcom/meicam/sdk/NvsThumbnailSequenceView;->updateInternalView()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method
