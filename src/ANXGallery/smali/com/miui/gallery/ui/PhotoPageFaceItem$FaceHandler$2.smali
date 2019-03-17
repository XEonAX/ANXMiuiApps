.class Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$2;
.super Ljava/lang/Object;
.source "PhotoPageFaceItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->renameFace(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "merge"    # Z

    .prologue
    .line 270
    invoke-static {}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->getInstance()Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->clearCache()V

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->notifyDataChanged()V

    .line 274
    :cond_0
    return-void
.end method
