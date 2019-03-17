.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->refreshRecommandBar(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

.field final synthetic val$photoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iput-object p2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->val$photoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->val$photoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    iget-object v2, v2, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->peopleServerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->val$photoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    iget-object v3, v3, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->peopleLocalId:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->val$photoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    iget-object v4, v4, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->ids:Ljava/util/ArrayList;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/IntentUtil;->pickFace(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IZ)V

    .line 645
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 647
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->setLastClickBabyPhotosRecommandationTime(Ljava/lang/String;)V

    .line 649
    return-void
.end method
