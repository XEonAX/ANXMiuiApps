.class Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;
.super Ljava/lang/Object;
.source "BabyAlbumDetailTimeLineAdapter.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

.field final synthetic val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iput-object p2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;->val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;->val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iget-object v1, v1, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->isOtherShareAlbum()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getFaceInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
