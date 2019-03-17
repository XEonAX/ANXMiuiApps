.class public Lcom/miui/gallery/share/AlbumShareInvitationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlbumShareInvitationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;,
        Lcom/miui/gallery/share/AlbumShareInvitationReceiver$UpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/share/Path;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/Path;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver;->openInvitation(Lcom/miui/gallery/share/Path;I)V

    return-void
.end method

.method public static handleInvitation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "opt"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "addListener"    # Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    .prologue
    .line 56
    invoke-static {p0, p4}, Lcom/miui/gallery/share/AlbumShareUIManager;->addInvitationToDBAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 57
    return-void
.end method

.method private static openInvitation(Lcom/miui/gallery/share/Path;I)V
    .locals 4
    .param p0, "path"    # Lcom/miui/gallery/share/Path;
    .param p1, "errorCode"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.intent.action.OPEN_INVIATAION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "path"

    invoke-virtual {p0}, Lcom/miui/gallery/share/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "error_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected handleInvitation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "opt"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    new-instance v1, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$UpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$UpdateListener;-><init>(Lcom/miui/gallery/share/AlbumShareInvitationReceiver$1;)V

    invoke-direct {v0, p2, v1}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;-><init>(ILcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver;->handleInvitation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;)V

    .line 52
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 26
    .local v6, "action":Ljava/lang/String;
    const-string v0, "AlbumShareInvitationReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlbumShareInvitationReceiveronReceive = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v0, "com.miui.gallery.ACTION_ALBUM_SHARE_INVITATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "invitation_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "url":Ljava/lang/String;
    const-string v0, "invitation_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "type":Ljava/lang/String;
    const-string v0, "invitation_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "title":Ljava/lang/String;
    const-string v0, "invitation_content"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "content":Ljava/lang/String;
    const-string v0, "invitation_opt"

    const/4 v7, 0x5

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 36
    .local v2, "opt":I
    invoke-static {v1}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareInvitationUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "opt":I
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v1    # "url":Ljava/lang/String;
    .restart local v2    # "opt":I
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "content":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    const v0, 0x7f0c01b4

    invoke-static {p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver;->handleInvitation(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
