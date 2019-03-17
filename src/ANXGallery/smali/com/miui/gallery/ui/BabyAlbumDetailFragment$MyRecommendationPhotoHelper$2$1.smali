.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;->onRecommendationFound(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

.field final synthetic val$datas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

    iput-object p2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;->val$datas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2$1;->val$datas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$2100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V

    .line 556
    :cond_0
    return-void
.end method
