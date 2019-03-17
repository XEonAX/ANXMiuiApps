.class Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;
.super Ljava/lang/Object;
.source "FaceAlbumRenameHandler.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->onClick(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field final synthetic val$folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;->val$folderName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;->val$folderName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$400(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V

    .line 242
    return-void
.end method
