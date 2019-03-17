.class public Lcom/miui/gallery/activity/CloudSpaceStatusActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "CloudSpaceStatusActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/CloudSpaceStatusActivity;->setContentView(I)V

    .line 13
    return-void
.end method
