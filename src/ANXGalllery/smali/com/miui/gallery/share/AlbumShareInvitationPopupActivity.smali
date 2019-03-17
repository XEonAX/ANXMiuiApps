.class public Lcom/miui/gallery/share/AlbumShareInvitationPopupActivity;
.super Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;
.source "AlbumShareInvitationPopupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 18
    invoke-super {p0, p1}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 19
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .local v1, "pathStr":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 25
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const-string v2, "AlbumShareInvitationPopupActivity"

    const-string v3, "bad path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationPopupActivity;->finish()V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_2
    const/4 v2, 0x0

    const v3, 0x7f0c023b

    invoke-virtual {p0, v3}, Lcom/miui/gallery/share/AlbumShareInvitationPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase$OnBlockMessageCancelled;

    invoke-direct {v4, p0}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase$OnBlockMessageCancelled;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v2, v3, v5, v4}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v0

    .line 35
    .local v0, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    invoke-static {v1}, Lcom/miui/gallery/share/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/share/Path;

    move-result-object v2

    invoke-static {p0, v2, v5, v0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->applyToShareAlbum(Landroid/app/Activity;Lcom/miui/gallery/share/Path;ZLcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    goto :goto_0
.end method
