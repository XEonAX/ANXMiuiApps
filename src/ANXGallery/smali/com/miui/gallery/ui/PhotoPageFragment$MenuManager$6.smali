.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$6;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onMenuItemClick(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$6;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([JZ)V
    .locals 4
    .param p1, "result"    # [J
    .param p2, "deleteOrigin"    # Z

    .prologue
    .line 1629
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$6;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    .line 1632
    :cond_0
    return-void
.end method
