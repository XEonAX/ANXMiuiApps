.class Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;
.super Ljava/lang/Object;
.source "BabyAlbumDetailTimeLineAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iput-object p2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .line 325
    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1000(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iget-object v1, v1, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1000(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1400(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1500(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4$1;->this$2:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    iget-object v2, v2, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;->val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1300(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    goto :goto_0
.end method
