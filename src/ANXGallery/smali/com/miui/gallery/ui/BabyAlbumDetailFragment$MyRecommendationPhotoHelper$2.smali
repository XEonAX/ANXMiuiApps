.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->seeIfHasRecommendationPhotoFromFaceAlbum(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecommendationFound(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
    .locals 2
    .param p1, "datas"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1900(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method
