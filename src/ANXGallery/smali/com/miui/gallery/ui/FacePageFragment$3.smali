.class Lcom/miui/gallery/ui/FacePageFragment$3;
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
    .line 193
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$3;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$3;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/FacePageFragment;->getIsHasEverNotCreateBabyAlbumFromThis()J

    move-result-wide v0

    .line 198
    .local v0, "albumId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$3;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$700(Lcom/miui/gallery/ui/FacePageFragment;)V

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$3;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v3, Lcom/miui/gallery/share/Path;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v5, v4}, Lcom/miui/gallery/share/Path;-><init>(JZZ)V

    invoke-static {v2, v3, v5}, Lcom/miui/gallery/share/UIHelper;->showAlbumShareInfo(Landroid/app/Activity;Lcom/miui/gallery/share/Path;I)V

    .line 203
    const-string v2, "face"

    const-string v3, "face_enter_album_share"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
