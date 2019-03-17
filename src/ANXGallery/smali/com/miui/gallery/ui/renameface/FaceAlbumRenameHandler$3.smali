.class Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;
.super Ljava/lang/Object;
.source "FaceAlbumRenameHandler.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->onClick(Lcom/miui/gallery/model/PeopleContactInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field final synthetic val$contact:Lcom/miui/gallery/model/PeopleContactInfo;

.field final synthetic val$folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;->val$folderName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;->val$contact:Lcom/miui/gallery/model/PeopleContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;->val$folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;->val$contact:Lcom/miui/gallery/model/PeopleContactInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$300(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V

    .line 210
    return-void
.end method
