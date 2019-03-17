.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->intialFaceHeader(Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 244
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$1000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    .line 250
    :cond_0
    return-void
.end method
