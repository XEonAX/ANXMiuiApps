.class Lcom/miui/gallery/ui/PeoplePageFragment$6;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;->mergePeople([JLandroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$6;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$6;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "merge"    # Z

    .prologue
    .line 752
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$6;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$6$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$6$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    const-string v0, "people"

    const-string v1, "people_merge_album"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method
