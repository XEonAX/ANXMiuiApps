.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->inflateTitle()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper$1;->this$1:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 114
    return-void
.end method
