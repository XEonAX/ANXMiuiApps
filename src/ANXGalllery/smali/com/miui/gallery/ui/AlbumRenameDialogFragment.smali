.class public Lcom/miui/gallery/ui/AlbumRenameDialogFragment;
.super Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
.source "AlbumRenameDialogFragment.java"


# instance fields
.field private mAlbumId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(JLjava/lang/String;Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)Lcom/miui/gallery/ui/AlbumRenameDialogFragment;
    .locals 4
    .param p0, "albumId"    # J
    .param p2, "albumDefaultName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .prologue
    .line 20
    new-instance v1, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;-><init>()V

    .line 21
    .local v1, "fragment":Lcom/miui/gallery/ui/AlbumRenameDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_album_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    const-string v2, "key_album_default_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v1, p3}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->setOnAlbumOperationDoneListener(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)V

    .line 26
    return-object v1
.end method


# virtual methods
.method protected execAlbumOperation(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->mAlbumId:J

    invoke-static {p1, v0, v1, p2}, Lcom/miui/gallery/provider/CloudUtils;->renameAlbum(Landroid/content/Context;JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0c0418

    return v0
.end method

.method protected getOperationFailedString()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0c0419

    return v0
.end method

.method protected getOperationSucceededString()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0c041a

    return v0
.end method

.method protected getResultId(Landroid/os/Bundle;)J
    .locals 4
    .param p1, "resultBundle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-nez p1, :cond_0

    const-wide/16 v0, -0x65

    .line 59
    :goto_0
    return-wide v0

    .line 58
    :cond_0
    const-string v0, "id"

    const-wide/16 v2, -0x1

    .line 59
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected parseArguments()V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "key_album_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->mAlbumId:J

    .line 33
    const-string v1, "key_album_default_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->mDefaultName:Ljava/lang/String;

    .line 34
    return-void
.end method
