.class public Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.super Landroid/widget/HorizontalScrollView;
.source "NvsMultiThumbnailSequenceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;,
        Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;,
        Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;,
        Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;,
        Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;,
        Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Meicam"

.field public static final THUMBNAIL_IMAGE_FILLMODE_ASPECTCROP:I = 0x1

.field public static final THUMBNAIL_IMAGE_FILLMODE_STRETCH:I


# instance fields
.field private m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

.field private m_contentWidth:I

.field private m_descArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;"
        }
    .end annotation
.end field

.field private m_endPadding:I

.field private m_internalObject:J

.field private m_maxTimelinePosToScroll:J

.field private m_pixelPerMicrosecond:D

.field m_placeholderBitmap:Landroid/graphics/Bitmap;

.field private m_scrollChangeListener:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;

.field private m_scrollEnabled:Z

.field private m_startPadding:I

.field private m_thumbnailAspectRatio:F

.field private m_thumbnailImageFillMode:I

.field private m_thumbnailMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private m_thumbnailSequenceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;",
            ">;"
        }
    .end annotation
.end field

.field private m_thumbnailSequenceMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;",
            ">;"
        }
    .end annotation
.end field

.field private m_thumbnailWidth:I

.field private m_updatingThumbnail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 245
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    .line 93
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 94
    const-wide v0, 0x3f0c4fc1df3300deL    # 5.4E-5

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    .line 95
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    .line 96
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    .line 97
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 98
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    .line 133
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    .line 183
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 184
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    .line 246
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 247
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    .line 93
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 94
    const-wide v0, 0x3f0c4fc1df3300deL    # 5.4E-5

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    .line 95
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    .line 96
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    .line 97
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 98
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    .line 133
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    .line 183
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 184
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    .line 253
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 254
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    .line 93
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 94
    const-wide v0, 0x3f0c4fc1df3300deL    # 5.4E-5

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    .line 95
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    .line 96
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    .line 97
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 98
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    .line 133
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    .line 183
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 184
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    .line 260
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 261
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    .line 93
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 94
    const-wide v0, 0x3f0c4fc1df3300deL    # 5.4E-5

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    .line 95
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    .line 96
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    .line 97
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 98
    iput-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    .line 133
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    .line 183
    iput v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 184
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    .line 267
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 268
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->init(Landroid/content/Context;)V

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnails()V

    return-void
.end method

.method static synthetic access$200(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->requestUpdateThumbnailSequenceGeometry()V

    return-void
.end method

.method static synthetic access$300(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    return-void
.end method

.method private cancelIconTask()V
    .locals 4

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->nativeCancelIconTask(JJ)V

    .line 926
    :cond_0
    return-void
.end method

.method private clearThumbnailSequences()V
    .locals 1

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->cancelIconTask()V

    .line 907
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->clearThumbnails()V

    .line 909
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 910
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 911
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    .line 912
    return-void
.end method

.method private clearThumbnails()V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 917
    iget-object v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;

    iget-object v0, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 920
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 644
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setVerticalScrollBarEnabled(Z)V

    .line 645
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setHorizontalScrollBarEnabled(Z)V

    .line 648
    new-instance v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    invoke-direct {v0, p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;-><init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    .line 649
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    return-void
.end method

.method private native nativeCancelIconTask(JJ)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeGetIcon(JLjava/lang/String;J)J
.end method

.method private native nativeGetIconFromCache(JLjava/lang/String;J)Landroid/graphics/Bitmap;
.end method

.method private native nativeInit()J
.end method

.method private requestUpdateThumbnailSequenceGeometry()V
    .locals 2

    .prologue
    .line 654
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$1;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$1;-><init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    return-void
.end method

.method private setBitmapToImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 890
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 894
    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    if-ge v1, v2, :cond_2

    .line 895
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    div-int/2addr v1, v2

    .line 896
    if-eqz v1, :cond_0

    .line 898
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 900
    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 901
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateThumbnailSequenceGeometry()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 664
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->cancelIconTask()V

    .line 667
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->clearThumbnails()V

    .line 670
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getHeight()I

    move-result v0

    .line 671
    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    int-to-float v0, v0

    iget v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 674
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 676
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 678
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    .line 679
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    .line 680
    iget-wide v4, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_inPoint:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    add-int/2addr v4, v2

    .line 681
    iget-wide v6, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_outPoint:J

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    iget v5, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    add-int/2addr v2, v5

    .line 682
    if-le v2, v4, :cond_2

    .line 687
    iput v4, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    .line 688
    sub-int v1, v2, v4

    iput v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_width:I

    .line 689
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 692
    goto :goto_1

    .line 696
    :cond_3
    iget-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    .line 697
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    add-int/2addr v1, v0

    .line 703
    :cond_4
    :goto_2
    iput v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    .line 705
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    iget v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v12, v12, v1, v2}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->layout(IIII)V

    .line 706
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->requestLayout()V

    .line 708
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    if-le v0, v1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 710
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 711
    invoke-virtual {p0, v0, v12}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->scrollTo(II)V

    goto/16 :goto_0

    .line 699
    :cond_5
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 700
    if-ge v0, v1, :cond_4

    move v1, v0

    .line 701
    goto :goto_2
.end method

.method private updateThumbnails()V
    .locals 12

    .prologue
    .line 717
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->clearThumbnails()V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 723
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v1

    .line 724
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getWidth()I

    move-result v2

    .line 725
    sub-int/2addr v1, v0

    iget v3, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 726
    add-int v1, v5, v2

    add-int v6, v1, v0

    .line 727
    if-gt v6, v5, :cond_2

    .line 728
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->clearThumbnails()V

    goto :goto_0

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 733
    if-nez v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 737
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 738
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    .line 739
    iget v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    iget v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_width:I

    add-int/2addr v1, v2

    if-lt v1, v5, :cond_4

    .line 741
    iget v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    if-lt v1, v6, :cond_8

    .line 800
    :cond_5
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    .line 802
    const/4 v0, 0x0

    .line 803
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 804
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 805
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v0

    .line 806
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 807
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    .line 808
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;

    .line 811
    iget-object v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 812
    iget-object v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_6

    .line 814
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_6

    .line 816
    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_placeholderBitmap:Landroid/graphics/Bitmap;

    .line 820
    :cond_6
    iget-boolean v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_touched:Z

    if-nez v0, :cond_e

    .line 822
    iget-wide v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_iconTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 823
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    iget-wide v2, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_iconTaskId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->nativeCancelIconTask(JJ)V

    .line 825
    :cond_7
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    iget-object v1, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->removeView(Landroid/view/View;)V

    .line 826
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 745
    :cond_8
    iget v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    if-ge v1, v5, :cond_9

    .line 746
    iget v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    iget v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    sub-int v2, v5, v2

    iget v3, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 750
    :goto_3
    const/4 v3, 0x0

    .line 751
    iget v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    iget v4, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_width:I

    add-int v8, v2, v4

    move v4, v1

    .line 752
    :goto_4
    if-ge v4, v8, :cond_19

    .line 753
    if-lt v4, v6, :cond_a

    .line 754
    const/4 v0, 0x1

    .line 793
    :goto_5
    if-eqz v0, :cond_4

    goto :goto_1

    .line 748
    :cond_9
    iget v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    goto :goto_3

    .line 758
    :cond_a
    iget v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailWidth:I

    .line 759
    add-int v2, v4, v1

    if-le v2, v8, :cond_18

    .line 760
    sub-int v1, v8, v4

    move v2, v1

    .line 763
    :goto_6
    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->calcTimestampFromX(I)J

    move-result-wide v10

    .line 766
    new-instance v9, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;

    iget v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_index:I

    invoke-direct {v9, v1, v10, v11}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;-><init>(IJ)V

    .line 767
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;

    .line 768
    if-nez v1, :cond_d

    .line 770
    new-instance v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;

    invoke-direct {v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;-><init>()V

    .line 771
    iput-object v0, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_owner:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    .line 772
    iput-wide v10, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_timestamp:J

    .line 773
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageViewUpToDate:Z

    .line 774
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_touched:Z

    .line 776
    iget-object v10, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v10, v9, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    .line 779
    iget v9, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    if-nez v9, :cond_c

    .line 780
    iget-object v9, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 784
    :cond_b
    :goto_7
    iget-object v9, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    iget-object v10, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->addView(Landroid/view/View;)V

    .line 785
    iget-object v1, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    add-int v10, v4, v2

    iget-object v11, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentView:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;

    invoke-virtual {v11}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->getHeight()I

    move-result v11

    invoke-virtual {v1, v4, v9, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 790
    :goto_8
    add-int v1, v4, v2

    move v4, v1

    .line 791
    goto :goto_4

    .line 781
    :cond_c
    iget v9, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 782
    iget-object v9, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_7

    .line 787
    :cond_d
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_touched:Z

    goto :goto_8

    .line 831
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_touched:Z

    .line 833
    iget-boolean v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageViewUpToDate:Z

    if-eqz v0, :cond_f

    .line 834
    iget-object v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 835
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v8

    :goto_9
    move v8, v0

    .line 850
    goto/16 :goto_2

    .line 837
    :cond_f
    iget-object v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_owner:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    iget-boolean v0, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_stillImageHint:Z

    if-eqz v0, :cond_10

    const-wide/16 v4, 0x0

    .line 838
    :goto_a
    iget-wide v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    iget-object v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_owner:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    iget-object v3, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_mediaFilePath:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->nativeGetIconFromCache(JLjava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_11

    .line 840
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    iget-object v1, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setBitmapToImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageViewUpToDate:Z

    .line 843
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_iconTaskId:J

    move v0, v8

    goto :goto_9

    .line 837
    :cond_10
    iget-wide v4, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_timestamp:J

    goto :goto_a

    .line 846
    :cond_11
    const/4 v8, 0x1

    .line 847
    iget-wide v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    iget-object v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_owner:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    iget-object v3, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_mediaFilePath:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->nativeGetIcon(JLjava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_iconTaskId:J

    :cond_12
    move v0, v8

    goto :goto_9

    .line 852
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    .line 854
    if-eqz v8, :cond_0

    .line 857
    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 859
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_placeholderBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;

    .line 862
    iget-boolean v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageViewUpToDate:Z

    if-nez v2, :cond_14

    .line 863
    iget-object v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_placeholderBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setBitmapToImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Z

    goto :goto_b

    .line 871
    :cond_15
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 872
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;

    .line 873
    iget-boolean v3, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageViewUpToDate:Z

    if-nez v3, :cond_16

    .line 879
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_17

    .line 882
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setBitmapToImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Z

    goto :goto_c

    .line 884
    :cond_17
    invoke-virtual {v9}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->setBitmapToImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Z

    goto :goto_c

    :cond_18
    move v2, v1

    goto/16 :goto_6

    :cond_19
    move v0, v3

    goto/16 :goto_5
.end method


# virtual methods
.method public getEndPadding()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    return v0
.end method

.method public getMaxTimelinePosToScroll()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    return-wide v0
.end method

.method public getOnScrollChangeListenser()Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;
    .locals 1

    .prologue
    .line 552
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 553
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollChangeListener:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;

    return-object v0
.end method

.method public getPixelPerMicrosecond()D
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    return-wide v0
.end method

.method public getScrollEnabled()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    return v0
.end method

.method public getStartPadding()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    return v0
.end method

.method public getThumbnailAspectRatio()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    return v0
.end method

.method public getThumbnailImageFillMode()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    return v0
.end method

.method public getThumbnailSequenceDescArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_descArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public mapTimelinePosFromX(I)J
    .locals 4

    .prologue
    .line 492
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 493
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v0

    .line 494
    add-int/2addr v0, p1

    iget v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    sub-int/2addr v0, v1

    .line 495
    int-to-double v0, v0

    iget-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 496
    return-wide v0
.end method

.method public mapXFromTimelinePos(J)I
    .locals 5

    .prologue
    .line 507
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 508
    long-to-double v0, p1

    iget-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 509
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v1

    .line 510
    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected notifyIconArrived()V
    .locals 2

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_updatingThumbnail:Z

    if-nez v0, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnails()V

    .line 940
    :goto_0
    return-void

    .line 933
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$2;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$2;-><init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 593
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 595
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    .line 597
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->cancelIconTask()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollChangeListener:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;

    .line 606
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->nativeClose(J)V

    .line 608
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_internalObject:J

    .line 610
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 611
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    if-eqz v0, :cond_0

    .line 627
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 587
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 588
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 617
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollChangeListener:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollChangeListener:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;

    invoke-interface {v0, p0, p1, p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;->onScrollChanged(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;II)V

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnails()V

    .line 620
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 581
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 582
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    if-eqz v0, :cond_0

    .line 636
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scaleWithAnchor(DI)V
    .locals 5

    .prologue
    .line 520
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 521
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p0, p3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->mapTimelinePosFromX(I)J

    move-result-wide v0

    .line 525
    iget-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    .line 526
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    .line 527
    invoke-virtual {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->mapXFromTimelinePos(J)I

    move-result v0

    .line 528
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p3

    .line 531
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setEndPadding(I)V
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 438
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    if-ne p1, v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_endPadding:I

    .line 442
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_0
.end method

.method public setMaxTimelinePosToScroll(I)V
    .locals 6

    .prologue
    .line 463
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 464
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 465
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_maxTimelinePosToScroll:J

    .line 470
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_0
.end method

.method public setOnScrollChangeListenser(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;)V
    .locals 0

    .prologue
    .line 541
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 542
    iput-object p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollChangeListener:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;

    .line 543
    return-void
.end method

.method public setPixelPerMicrosecond(D)V
    .locals 3

    .prologue
    .line 387
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 388
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iput-wide p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_pixelPerMicrosecond:D

    .line 392
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_0
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_scrollEnabled:Z

    .line 565
    return-void
.end method

.method public setStartPadding(I)V
    .locals 1

    .prologue
    .line 412
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 413
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    if-ne p1, v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_startPadding:I

    .line 417
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_0
.end method

.method public setThumbnailAspectRatio(F)V
    .locals 3

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    const v0, 0x3dcccccd    # 0.1f

    .line 357
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 358
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 363
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 368
    :goto_1
    return-void

    .line 360
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 361
    goto :goto_0

    .line 366
    :cond_2
    iput p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailAspectRatio:F

    .line 367
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_1
.end method

.method public setThumbnailImageFillMode(I)V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 327
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 333
    :cond_0
    iget v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    if-ne v0, p1, :cond_1

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailImageFillMode:I

    .line 337
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_0
.end method

.method public setThumbnailSequenceDescArray(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 277
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 278
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_descArray:Ljava/util/ArrayList;

    if-ne p1, v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->clearThumbnailSequences()V

    .line 283
    iput-object p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_descArray:Ljava/util/ArrayList;

    .line 284
    if-eqz p1, :cond_3

    .line 285
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    .line 288
    iget-object v7, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    cmp-long v7, v8, v2

    if-ltz v7, :cond_1

    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    iget-wide v10, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    cmp-long v7, v8, v4

    if-ltz v7, :cond_1

    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    iget-wide v10, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 292
    :cond_1
    const-string v0, "Meicam"

    const-string v7, "Invalid ThumbnailSequenceDesc!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    :cond_2
    new-instance v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

    invoke-direct {v3}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;-><init>()V

    .line 297
    add-int/lit8 v2, v1, 0x1

    iput v1, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_index:I

    .line 298
    iget-object v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    iput-object v1, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_mediaFilePath:Ljava/lang/String;

    .line 299
    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    iput-wide v8, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_inPoint:J

    .line 300
    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    iput-wide v8, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_outPoint:J

    .line 301
    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    iput-wide v8, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_trimIn:J

    .line 302
    iget-wide v8, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    iget-wide v10, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    sub-long/2addr v8, v10

    iput-wide v8, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_trimDuration:J

    .line 303
    iget-boolean v1, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    iput-boolean v1, v3, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_stillImageHint:Z

    .line 305
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_thumbnailSequenceArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-wide v0, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide v12, v0

    move v1, v2

    move-wide v2, v12

    .line 308
    goto :goto_1

    .line 311
    :cond_3
    invoke-direct {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V

    goto :goto_0
.end method
