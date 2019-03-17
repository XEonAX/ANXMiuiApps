.class Lcom/miui/gallery/ui/HomePageFragment$6$1;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment$6;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/HomePageFragment$6;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment$6;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/HomePageFragment$6;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$6$1;->this$1:Lcom/miui/gallery/ui/HomePageFragment$6;

    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageFragment$6$1;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([JZ)V
    .locals 2
    .param p1, "result"    # [J
    .param p2, "deleteOrigin"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$6$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 567
    const-string v0, "home"

    const-string v1, "add_to_album"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method
