.class Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;
.super Ljava/lang/Object;
.source "FaceAlbumRenameHandler.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field final synthetic val$dialog:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;->val$dialog:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeopleSelect(Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;ZI)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;
    .param p2, "exist"    # Z
    .param p3, "type"    # I

    .prologue
    .line 160
    if-nez p3, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$000(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Z)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;->val$dialog:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->dismiss()V

    .line 166
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v1, p1, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;->name:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$100(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Z)V

    goto :goto_0
.end method
