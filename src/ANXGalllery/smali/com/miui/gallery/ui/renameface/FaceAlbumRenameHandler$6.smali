.class Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$6;
.super Ljava/lang/Object;
.source "FaceAlbumRenameHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->dialogToast(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field final synthetic val$task:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$6;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$6;->val$task:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$6;->val$task:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;

    invoke-interface {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;->run()V

    .line 269
    return-void
.end method
