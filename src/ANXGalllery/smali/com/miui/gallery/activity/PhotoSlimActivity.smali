.class public Lcom/miui/gallery/activity/PhotoSlimActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "PhotoSlimActivity.java"


# instance fields
.field private mPhotoSlimFragment:Lcom/miui/gallery/ui/PhotoSlimFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/activity/PhotoSlimActivity;->mPhotoSlimFragment:Lcom/miui/gallery/ui/PhotoSlimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 24
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f040100

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PhotoSlimActivity;->setContentView(I)V

    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PhotoSlimActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12024b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoSlimFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/PhotoSlimActivity;->mPhotoSlimFragment:Lcom/miui/gallery/ui/PhotoSlimFragment;

    .line 17
    return-void
.end method
