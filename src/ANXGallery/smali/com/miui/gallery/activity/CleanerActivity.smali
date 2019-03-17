.class public Lcom/miui/gallery/activity/CleanerActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "CleanerActivity.java"


# instance fields
.field private mCleanerFragment:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onAttachedToWindow()V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/activity/CleanerActivity;->mCleanerFragment:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerFragment;->onActivityAttachedToWindow()V

    .line 31
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/activity/CleanerActivity;->mCleanerFragment:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 25
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
    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/CleanerActivity;->setContentView(I)V

    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/activity/CleanerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f120100

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/CleanerFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/CleanerActivity;->mCleanerFragment:Lcom/miui/gallery/ui/CleanerFragment;

    .line 17
    invoke-virtual {p0}, Lcom/miui/gallery/activity/CleanerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 18
    return-void
.end method
