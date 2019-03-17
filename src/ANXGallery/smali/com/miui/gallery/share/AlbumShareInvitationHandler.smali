.class public Lcom/miui/gallery/share/AlbumShareInvitationHandler;
.super Ljava/lang/Object;
.source "AlbumShareInvitationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/AlbumShareInvitationHandler$CancelListener;,
        Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;,
        Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;,
        Lcom/miui/gallery/share/AlbumShareInvitationHandler$DenyListener;,
        Lcom/miui/gallery/share/AlbumShareInvitationHandler$AlreadyApplyListener;,
        Lcom/miui/gallery/share/AlbumShareInvitationHandler$AbsListener;
    }
.end annotation


# direct methods
.method public static acceptShareInvitation(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    const/4 v2, 0x1

    .line 71
    new-instance v0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;-><init>(Landroid/app/Activity;Z)V

    new-instance v1, Lcom/miui/gallery/share/AlbumShareInvitationHandler$CancelListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$CancelListener;-><init>(Landroid/app/Activity;Z)V

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->tryToAccept(Lcom/miui/gallery/share/Path;Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/Dialog;)V

    .line 76
    return-void
.end method

.method public static acceptShareInvitation(Landroid/app/Activity;Ljava/lang/String;ILcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "opt"    # I
    .param p3, "msgWhenUpdate"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/miui/gallery/share/AlbumShareInvitationHandler$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$1;-><init>(Landroid/app/Activity;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    .line 65
    .local v0, "updateListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    new-instance v1, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    invoke-direct {v1, p2, v0}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;-><init>(ILcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    invoke-static {p1, p2, v2, v2, v1}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver;->handleInvitation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->startShareAlbumView(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->startCloudPage(Landroid/app/Activity;)V

    return-void
.end method

.method public static applyToShareAlbum(Landroid/app/Activity;Lcom/miui/gallery/share/Path;ZLcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 8
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "finishActivity"    # Z
    .param p3, "msgWhenUpdate"    # Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    .prologue
    const/4 v7, 0x1

    .line 31
    new-instance v2, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;

    invoke-direct {v2, p0, p2, v7}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$ApplyListener;-><init>(Landroid/app/Activity;ZZ)V

    new-instance v3, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;

    invoke-direct {v3, p0, p2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$AcceptListener;-><init>(Landroid/app/Activity;Z)V

    new-instance v4, Lcom/miui/gallery/share/AlbumShareInvitationHandler$DenyListener;

    invoke-direct {v4, p0, p2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$DenyListener;-><init>(Landroid/app/Activity;Z)V

    new-instance v5, Lcom/miui/gallery/share/AlbumShareInvitationHandler$CancelListener;

    invoke-direct {v5, p0, p2}, Lcom/miui/gallery/share/AlbumShareInvitationHandler$CancelListener;-><init>(Landroid/app/Activity;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/share/AlbumShareUIManager;->applyToShareAlbum(Landroid/app/Activity;Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Landroid/content/DialogInterface$OnCancelListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;Z)V

    .line 40
    return-void
.end method

.method private static startCloudPage(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIEW_ALBUM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static startShareAlbumView(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->getMediaSet()Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getSharerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    const-string v0, "com.miui.gallery.action.VIEW_SHARED_BABY_ALBUM"

    .line 249
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    const-string v2, "album_id"

    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareAlbumManager;->getUniformAlbumId(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    const-string v2, "album_name"

    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->getMediaSet()Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "other_share_album"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    return-void

    .line 247
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "com.miui.gallery.action.VIEW_SHARED_ALBUM"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 257
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
