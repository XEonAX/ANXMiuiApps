.class Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;
.super Ljava/lang/Object;
.source "RemoveFromFaceAlbumHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    packed-switch p2, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown item clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;->onGetFolderItem(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;->this$0:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->showRemoveDialog()V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
