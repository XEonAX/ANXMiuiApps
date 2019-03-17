.class public Lcom/miui/gallery/share/AlbumShareInvitationAcceptActivity;
.super Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;
.source "AlbumShareInvitationAcceptActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    const v2, 0x7f0c01b4

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationAcceptActivity;->finish()V

    .line 43
    :goto_0
    return-void

    .line 25
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationAcceptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationAcceptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "invitation-url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    const-string v2, "invitation-url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareInvitationUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    const/4 v2, 0x0

    const v3, 0x7f0c023b

    .line 33
    invoke-virtual {p0, v3}, Lcom/miui/gallery/share/AlbumShareInvitationAcceptActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase$OnBlockMessageCancelled;

    invoke-direct {v5, p0}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase$OnBlockMessageCancelled;-><init>(Landroid/app/Activity;)V

    .line 32
    invoke-static {p0, v2, v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v0

    .line 35
    .local v0, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    const/16 v2, 0x10

    invoke-static {p0, v1, v2, v0}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->acceptShareInvitation(Landroid/app/Activity;Ljava/lang/String;ILcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    goto :goto_0

    .line 41
    .end local v0    # "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const v2, 0x7f0c026e

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationAcceptActivity;->finish()V

    goto :goto_0
.end method
