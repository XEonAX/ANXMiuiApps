.class public Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;
.super Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
.source "AlbumCreatorDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected execAlbumOperation(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1, p2}, Lcom/miui/gallery/provider/CloudUtils;->create(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f0c013b

    return v0
.end method

.method protected getOperationFailedString()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0c013c

    return v0
.end method

.method protected getOperationSucceededString()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected getResultId(Landroid/os/Bundle;)J
    .locals 4
    .param p1, "resultBundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    if-nez p1, :cond_0

    const-wide/16 v0, -0x65

    .line 48
    :goto_0
    return-wide v0

    .line 47
    :cond_0
    const-string v0, "id"

    const-wide/16 v2, -0x1

    .line 48
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method

.method protected parseArguments()V
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;->mDefaultName:Ljava/lang/String;

    .line 23
    return-void
.end method
