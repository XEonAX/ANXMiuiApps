.class public Lcom/miui/gallery/video/editor/VideoThumbnail;
.super Ljava/lang/Object;
.source "VideoThumbnail.java"


# instance fields
.field private endTime:I

.field private intrinsicTime:I

.field private startTime:I

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(IIILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "startTime"    # I
    .param p2, "endTime"    # I
    .param p3, "intrinsicTime"    # I
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->startTime:I

    .line 21
    iput p2, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->endTime:I

    .line 22
    iput p3, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->intrinsicTime:I

    .line 23
    iput-object p4, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->thumbnail:Landroid/graphics/Bitmap;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "intrinsicTime"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->thumbnail:Landroid/graphics/Bitmap;

    .line 16
    iput p2, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->intrinsicTime:I

    .line 17
    return-void
.end method


# virtual methods
.method public getIntrinsicTime()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->intrinsicTime:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoThumbnail;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method
