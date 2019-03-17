.class Lcom/miui/gallery/ui/FacePageFragment$2;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$400(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendInfo()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v2, Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "server_id_of_album"

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "local_id_of_album"

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$500(Lcom/miui/gallery/ui/FacePageFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    const-string v1, "album_name"

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$600(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "server_ids_of_faces"

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$400(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->getServerIdsIn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$2;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/ui/FacePageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    const-string v1, "face"

    const-string v2, "face_enter_recommend"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
