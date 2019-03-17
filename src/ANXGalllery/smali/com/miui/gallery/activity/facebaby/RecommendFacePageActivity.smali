.class public Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "RecommendFacePageActivity.java"


# instance fields
.field mRecommendFaceFragment:Lcom/miui/gallery/ui/RecommendFacePageFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;->mRecommendFaceFragment:Lcom/miui/gallery/ui/RecommendFacePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/RecommendFacePageFragment;->onActivityFinish()V

    .line 24
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 25
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f040118

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f120265

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/RecommendFacePageFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;->mRecommendFaceFragment:Lcom/miui/gallery/ui/RecommendFacePageFragment;

    .line 19
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 29
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/RecommendFacePageActivity;->finish()V

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
