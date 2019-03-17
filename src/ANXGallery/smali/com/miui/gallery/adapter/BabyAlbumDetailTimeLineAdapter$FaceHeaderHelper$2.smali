.class Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2;
.super Ljava/lang/Object;
.source "BabyAlbumDetailTimeLineAdapter.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


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
        "Lcom/miui/gallery/threadpool/FutureListener",
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
    .line 277
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iput-object p2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2;->val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2$1;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method
