.class public Lcom/miui/gallery/activity/BackupDetailActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "BackupDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/BackupDetailActivity;->setContentView(I)V

    .line 12
    return-void
.end method
