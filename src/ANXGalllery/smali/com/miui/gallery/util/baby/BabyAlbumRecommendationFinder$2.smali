.class Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;
.super Ljava/lang/Object;
.source "BabyAlbumRecommendationFinder.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->findRecommendation(Landroid/util/SparseArray;Ljava/lang/String;)V
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
        "Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

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
            "Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v2, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    invoke-static {v2, v1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$102(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    .line 115
    iget-object v1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    invoke-static {v1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$200(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;

    move-result-object v0

    .line 116
    .local v0, "l":Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    invoke-static {v1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$100(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;->onRecommendationFound(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V

    .line 120
    .end local v0    # "l":Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    invoke-static {v1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$300(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$302(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;

    .line 123
    :cond_1
    return-void
.end method
