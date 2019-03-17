.class public Lcom/miui/gallery/activity/TrashActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "TrashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const v0, 0x7f04015f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/TrashActivity;->setContentView(I)V

    .line 11
    return-void
.end method
