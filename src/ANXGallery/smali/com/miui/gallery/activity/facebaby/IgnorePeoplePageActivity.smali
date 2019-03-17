.class public Lcom/miui/gallery/activity/facebaby/IgnorePeoplePageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "IgnorePeoplePageActivity.java"


# instance fields
.field private mFragment:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/IgnorePeoplePageActivity;->mFragment:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/IgnorePeoplePageActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/IgnorePeoplePageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f120198

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/IgnorePeoplePageActivity;->mFragment:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .line 19
    return-void
.end method
