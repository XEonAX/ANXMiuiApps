.class public Lcom/miui/gallery/ui/ProjectSlideFragment;
.super Landroid/app/Fragment;
.source "ProjectSlideFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ProjectSlideFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ProjectSlideFragment;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->setResult()V

    return-void
.end method

.method private setResult()V
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 52
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static showProjectSlideFragment(Lcom/miui/gallery/activity/BaseActivity;Lmiui/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Lcom/miui/gallery/activity/BaseActivity;
    .param p1, "targetFragment"    # Lmiui/app/Fragment;
    .param p2, "connectedDevice"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 18
    new-instance v1, Lcom/miui/gallery/ui/ProjectSlideFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/ProjectSlideFragment;-><init>()V

    .line 19
    .local v1, "projectSlideFragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "photo_connected_device"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    if-eqz p1, :cond_0

    .line 23
    const/16 v2, 0x18

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 25
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/miui/gallery/activity/BaseActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 26
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 30
    const v3, 0x7f04010f

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f120250

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c03e0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "photo_connected_device"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v3, 0x7f120251

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "exit":Landroid/view/View;
    new-instance v3, Lcom/miui/gallery/ui/ProjectSlideFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/ProjectSlideFragment$1;-><init>(Lcom/miui/gallery/ui/ProjectSlideFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->setResult()V

    .line 47
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 48
    return-void
.end method
