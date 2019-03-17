.class Lcom/miui/gallery/ui/FacePageFragment$16$1;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/FacePageFragment$16;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/FacePageFragment$16;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$16$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 644
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$16$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$16;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->setFaceRecommendGroupHidden(Ljava/lang/String;Z)V

    .line 645
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$16$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$16;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$1500(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$16$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$16;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$2700(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeHeaderView(Landroid/view/View;)Z

    .line 646
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$16$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$16;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$1500(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$16$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$16;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$1400(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addFooterView(Landroid/view/View;)V

    .line 647
    const-string v0, "face"

    const-string v1, "face_close_recommend_panel"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void
.end method
