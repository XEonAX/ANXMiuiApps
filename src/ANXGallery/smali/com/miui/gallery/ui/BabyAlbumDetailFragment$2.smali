.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$900(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->setTopViewHeight(I)V

    .line 235
    return-void
.end method
