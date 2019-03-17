.class Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$1;
.super Ljava/lang/Object;
.source "RecentDiscoveryFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$1;->this$1:Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([JZ)V
    .locals 1
    .param p1, "result"    # [J
    .param p2, "deleteOrigin"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$1;->this$1:Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;

    invoke-static {v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->access$200(Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 370
    return-void
.end method
