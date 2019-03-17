.class Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;
.super Ljava/lang/Object;
.source "PeopleFaceMergeDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->initPagerLoader(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaderUpdatedItems()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 89
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$300(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$200(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->unblockGetItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->updateItems(Ljava/util/ArrayList;)V

    .line 92
    :cond_0
    return-void
.end method
