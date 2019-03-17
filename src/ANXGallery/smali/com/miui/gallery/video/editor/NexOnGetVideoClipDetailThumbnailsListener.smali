.class public Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;
.super Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;
.source "NexOnGetVideoClipDetailThumbnailsListener.java"


# instance fields
.field private listener:Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/VideoThumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->listener:Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;

    .line 20
    return-void
.end method


# virtual methods
.method public onGetDetailThumbnailResult(ILandroid/graphics/Bitmap;III)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "index"    # I
    .param p4, "totalCount"    # I
    .param p5, "timestamp"    # I

    .prologue
    .line 24
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_Ok:I

    if-ne p1, v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->thumbnails:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->thumbnails:Ljava/util/List;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->thumbnails:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/video/editor/VideoThumbnail;

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2, p5}, Lcom/miui/gallery/video/editor/VideoThumbnail;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_0
    return-void

    .line 29
    :cond_1
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_Completed:I

    if-ne p1, v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->listener:Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->thumbnails:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;->onGetVideoThumbnailCompleted(Ljava/util/List;)V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexOnGetVideoClipDetailThumbnailsListener;->listener:Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;->onGetVideoThumbnailCompleted(Ljava/util/List;)V

    goto :goto_0
.end method
