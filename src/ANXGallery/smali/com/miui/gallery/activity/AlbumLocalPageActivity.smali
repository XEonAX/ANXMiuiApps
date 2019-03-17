.class public Lcom/miui/gallery/activity/AlbumLocalPageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "AlbumLocalPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/AlbumLocalPageActivity;->setContentView(I)V

    .line 13
    return-void
.end method
