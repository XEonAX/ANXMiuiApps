.class public Lcom/miui/gallery/activity/AlbumNewPhotoDetailActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "AlbumNewPhotoDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentId()I
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f040012

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/activity/AlbumNewPhotoDetailActivity;->getContentId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/AlbumNewPhotoDetailActivity;->setContentView(I)V

    .line 14
    return-void
.end method
