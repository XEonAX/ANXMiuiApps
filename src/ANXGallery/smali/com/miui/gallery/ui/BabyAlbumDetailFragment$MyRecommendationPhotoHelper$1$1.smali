.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;->onBabyAlbumsFound(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

.field final synthetic val$yesFindCandidate:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

    iput-object p2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;->val$yesFindCandidate:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;->this$2:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1$1;->val$yesFindCandidate:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1800(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Ljava/lang/Boolean;)V

    .line 531
    :cond_0
    return-void
.end method
