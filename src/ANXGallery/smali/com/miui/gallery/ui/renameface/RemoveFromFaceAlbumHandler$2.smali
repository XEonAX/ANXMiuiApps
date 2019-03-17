.class Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;
.super Ljava/lang/Object;
.source "RemoveFromFaceAlbumHandler.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->showRemoveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

.field final synthetic val$dialog:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->val$dialog:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeopleSelect(Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;ZI)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;
    .param p2, "exist"    # Z
    .param p3, "type"    # I

    .prologue
    .line 94
    if-nez p3, :cond_1

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->showInputFolderNameDialog(ILjava/lang/String;Z)V

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->val$dialog:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->dismiss()V

    .line 102
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-direct {v1, v2, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;->onGetFolderItem(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    goto :goto_0
.end method
