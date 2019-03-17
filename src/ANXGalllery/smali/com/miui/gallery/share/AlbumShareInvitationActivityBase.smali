.class public Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;
.super Landroid/app/Activity;
.source "AlbumShareInvitationActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/AlbumShareInvitationActivityBase$OnBlockMessageCancelled;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;->requestWindowFeature(I)Z

    .line 19
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareInvitationActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    return-void
.end method
