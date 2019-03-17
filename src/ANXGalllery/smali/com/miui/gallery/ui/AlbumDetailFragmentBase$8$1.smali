.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$1;
.super Ljava/lang/Object;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$1;->this$1:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([JZ)V
    .locals 2
    .param p1, "result"    # [J
    .param p2, "deleteOrigin"    # Z

    .prologue
    .line 682
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$1;->this$1:Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->access$400(Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 683
    const-string v0, "album_detail"

    const-string v1, "add_to_album"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void
.end method
