.class public Lcom/miui/gallery/util/MediaAndAlbumOperations;
.super Ljava/lang/Object;
.source "MediaAndAlbumOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;,
        Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    }
.end annotation


# direct methods
.method private static addRemoveFavorite(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V
    .locals 4
    .param p0, "param"    # Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 319
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask;-><init>()V

    .line 320
    .local v0, "task":Lcom/miui/gallery/ui/AddRemoveFavoritesTask;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask;->setOperationCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    .line 322
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method

.method public static varargs addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZZ[J)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;
    .param p2, "dupType"    # I
    .param p3, "canRemove"    # Z
    .param p4, "operateSync"    # Z
    .param p5, "canAddSecret"    # Z
    .param p6, "ids"    # [J

    .prologue
    const/4 v1, 0x1

    .line 175
    new-instance v7, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-direct {v7}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;-><init>()V

    .line 176
    .local v7, "dialog":Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_copy_or_move"

    invoke-static {p6}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->hasOtherShareMedia([J)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string/jumbo v0, "show_share_album"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-string/jumbo v0, "show_add_secret"

    invoke-virtual {v6, v0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    invoke-virtual {v7, v6}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 182
    new-instance v0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;-><init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;[JIZ)V

    invoke-virtual {v7, v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->setOnAlbumSelectedListener(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AddToAlbumDialogFragment"

    invoke-virtual {v7, v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 207
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZ[J)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;
    .param p2, "dupType"    # I
    .param p3, "canRemove"    # Z
    .param p4, "canAddSecret"    # Z
    .param p5, "ids"    # [J

    .prologue
    .line 169
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZZ[J)V

    .line 170
    return-void
.end method

.method public static addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Ljava/util/ArrayList;ZZ)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;
    .param p3, "canRemove"    # Z
    .param p4, "canAddSecret"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v1, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;-><init>()V

    .line 136
    .local v1, "dialog":Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_copy_or_move"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string/jumbo v2, "show_share_album"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string/jumbo v2, "show_add_secret"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    new-instance v2, Lcom/miui/gallery/util/MediaAndAlbumOperations$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/util/MediaAndAlbumOperations$5;-><init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->setOnAlbumSelectedListener(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AddToAlbumDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static varargs addToFavoritesById(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "ids"    # [J

    .prologue
    .line 301
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;-><init>(II[J)V

    .line 306
    .local v0, "param":Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addRemoveFavorite(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    goto :goto_0
.end method

.method public static varargs addToFavoritesByPath(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "paths"    # [Ljava/lang/String;

    .prologue
    .line 283
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;-><init>(II[Ljava/lang/String;)V

    .line 288
    .local v0, "param":Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addRemoveFavorite(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    goto :goto_0
.end method

.method public static addToSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V

    .line 115
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f0c000a

    .line 105
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    .line 106
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c00ca

    .line 107
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c02f9

    .line 108
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/util/MediaAndAlbumOperations$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/gallery/util/MediaAndAlbumOperations$3;-><init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 114
    .local v0, "fragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ensureSecret"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs addToSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "ids"    # [J

    .prologue
    .line 40
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V

    .line 56
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f0c000a

    .line 46
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    array-length v4, p2

    .line 47
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c00ca

    .line 48
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    const v3, 0x7f0c02f9

    .line 49
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/util/MediaAndAlbumOperations$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/gallery/util/MediaAndAlbumOperations$1;-><init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 55
    .local v0, "fragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ensureSecret"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;
    .param p3, "albumId"    # J
    .param p5, "albumName"    # Ljava/lang/String;
    .param p6, "dupType"    # I
    .param p7, "deleteReason"    # I
    .param p8, "ids"    # [J

    .prologue
    .line 213
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lcom/miui/gallery/ui/DeletionTask$Param;

    move-object/from16 v2, p8

    move v3, p6

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/ui/DeletionTask$Param;-><init>([JIJLjava/lang/String;I)V

    invoke-static {v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->newInstance(Lcom/miui/gallery/ui/DeletionTask$Param;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    move-result-object v0

    .line 216
    .local v0, "fragment":Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->setOnDeletionCompleteListener(Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 219
    .end local v0    # "fragment":Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
    :cond_0
    return-void
.end method

.method public static varargs deleteInService(Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteOptions"    # I
    .param p2, "deleteReason"    # I
    .param p3, "filePaths"    # [Ljava/lang/String;

    .prologue
    .line 222
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/provider/MediaOperationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_METHOD:Ljava/lang/String;

    const-string v3, "delete"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "delete_by"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v2, "extra_paths"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    const-string v2, "extra_delete_options"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v2, "extra_delete_reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    sget-object v2, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_BUNDLE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method public static doChangeAutoUpload(Landroid/content/Context;JZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "enable"    # Z

    .prologue
    .line 326
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;JJZZ)V

    .line 328
    return-void
.end method

.method public static doChangeShowInOtherAlbums(Landroid/content/Context;JZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "enable"    # Z

    .prologue
    .line 331
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x40

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;JJZZ)V

    .line 333
    return-void
.end method

.method public static doChangeShowInPhotosTab(Landroid/content/Context;JZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "showInPhotosTab"    # Z

    .prologue
    .line 245
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x4

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;JJZZ)V

    .line 247
    return-void
.end method

.method public static doForceTop(Landroid/content/Context;JZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "forceTop"    # Z

    .prologue
    .line 256
    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 257
    .local v0, "ids":[J
    if-eqz p3, :cond_0

    .line 258
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/provider/CloudUtils;->forceTop(Landroid/content/Context;Landroid/net/Uri;[J)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/provider/CloudUtils;->unforceTop(Landroid/content/Context;Landroid/net/Uri;[J)V

    goto :goto_0
.end method

.method public static doHideOrUnhide(Landroid/content/Context;JZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "hide"    # Z

    .prologue
    const/4 v7, 0x1

    .line 250
    new-array v3, v7, [J

    const/4 v0, 0x0

    aput-wide p1, v3, v0

    .line 251
    .local v3, "ids":[J
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x10

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;[JJZZ)V

    .line 253
    return-void
.end method

.method public static doProduceCreation(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/List;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    new-instance v0, Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ProduceCreationDialog;-><init>()V

    .line 61
    .local v0, "produceCreationDialog":Lcom/miui/gallery/ui/ProduceCreationDialog;
    new-instance v1, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$2;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog;->setOnOperationSelectedListener(Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ProduceCreationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/ProduceCreationDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private static hasOtherShareMedia([J)Z
    .locals 6
    .param p0, "ids"    # [J

    .prologue
    const/4 v2, 0x0

    .line 236
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 237
    .local v0, "id":J
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    const/4 v2, 0x1

    .line 241
    .end local v0    # "id":J
    :cond_0
    return v2

    .line 236
    .restart local v0    # "id":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs removeFromFavoritesById(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "ids"    # [J

    .prologue
    .line 310
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;-><init>(II[J)V

    .line 315
    .local v0, "param":Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addRemoveFavorite(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    goto :goto_0
.end method

.method public static varargs removeFromFavoritesByPath(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "paths"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 292
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    invoke-direct {v0, v2, v2, p2}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;-><init>(II[Ljava/lang/String;)V

    .line 297
    .local v0, "param":Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addRemoveFavorite(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    goto :goto_0
.end method

.method public static varargs removeFromSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "ids"    # [J

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v1, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;-><init>()V

    .line 119
    .local v1, "dialog":Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_copy_or_move"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string/jumbo v2, "show_share_album"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string/jumbo v2, "show_add_secret"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    new-instance v2, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;-><init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->setOnAlbumSelectedListener(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AddToAlbumDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 131
    return-void
.end method
