.class public Lcom/miui/gallery/activity/PhotoPreviewSelectActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "PhotoPreviewSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x1020002

    return v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PhotoPreviewSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 14
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 15
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PhotoPreviewSelectActivity;->finish()V

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->newInstance(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    move-result-object v2

    const-string v3, "PhotoPreviewSelectFragment"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/gallery/activity/PhotoPreviewSelectActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 35
    return-void
.end method
