.class Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;
.super Ljava/lang/Object;
.source "BabyAlbumDetailTimeLineAdapter.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImageFromByFirstGetSharerInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Lcom/miui/gallery/share/Path;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "key"    # Lcom/miui/gallery/share/Path;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    .line 362
    if-eqz p4, :cond_0

    .line 363
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1600(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateInvitationAsync cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    .line 364
    :cond_0
    if-nez p3, :cond_1

    .line 365
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5$1;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;)V

    new-instance v2, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5$2;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;->this$1:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1600(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInvitationAsync error, errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;->onCompletion(Lcom/miui/gallery/share/Path;Ljava/lang/String;IZ)V

    return-void
.end method
