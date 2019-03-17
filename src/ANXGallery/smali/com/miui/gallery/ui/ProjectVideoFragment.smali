.class public Lcom/miui/gallery/ui/ProjectVideoFragment;
.super Landroid/app/Fragment;
.source "ProjectVideoFragment.java"

# interfaces
.implements Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;


# instance fields
.field private mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setResult()V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectVideoFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 66
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 67
    const/16 v1, 0x19

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static showProjectVideoFragment(Lcom/miui/gallery/activity/BaseActivity;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 4
    .param p0, "activity"    # Lcom/miui/gallery/activity/BaseActivity;
    .param p1, "projectItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v3, 0x1

    .line 23
    new-instance v1, Lcom/miui/gallery/ui/ProjectVideoFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/ProjectVideoFragment;-><init>()V

    .line 24
    .local v1, "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "photo_data_item"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/miui/gallery/activity/BaseActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 28
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "photo_data_item"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/BaseDataItem;

    .line 41
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/ProjectVideoFragment;->mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/miui/gallery/projection/ProjectionVideoController;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 42
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const v0, 0x7f040110

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/projection/ProjectionVideoController;

    iput-object v0, p0, Lcom/miui/gallery/ui/ProjectVideoFragment;->mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/ProjectVideoFragment;->mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ProjectionVideoController;->initView()V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/ProjectVideoFragment;->mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/ui/ProjectVideoFragment;->setResult()V

    .line 61
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 62
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectVideoFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 76
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/ProjectVideoFragment;->mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/ProjectionVideoController;->setOnFinishListener(Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;)V

    .line 55
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/ProjectVideoFragment;->mRemoteVideoControl:Lcom/miui/gallery/projection/ProjectionVideoController;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/projection/ProjectionVideoController;->setOnFinishListener(Lcom/miui/gallery/projection/ProjectionVideoController$OnFinishListener;)V

    .line 50
    return-void
.end method
