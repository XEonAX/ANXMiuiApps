.class Lcom/miui/gallery/ui/FacePageFragment$4;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->toast2CreateBabyAlbumBeforeShare()V
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
    .line 265
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$4;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$4;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$4;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 270
    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$500(Lcom/miui/gallery/ui/FacePageFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment$4;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 271
    invoke-virtual {v4}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment$4;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/FacePageFragment;->access$600(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$4;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/FacePageAdapter;->getFirstFaceServerId()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/baby/FindFace2CreateBabyAlbum;->gotoFillBabyAlbumInfo(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    .line 272
    const-string v0, "face"

    const-string v1, "face_create_baby_album"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
