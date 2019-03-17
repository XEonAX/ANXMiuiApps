.class public Lcom/miui/gallery/hybrid/GalleryHybridActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "GalleryHybridActivity.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;


# instance fields
.field private mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

.field private mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v2, v4}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 48
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v2, v4}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 51
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Lmiui/app/ActionBar;

    const v3, 0x7f040090

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setCustomView(I)V

    .line 52
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "customView":Landroid/view/View;
    const v2, 0x7f12002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mTitleView:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f12018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "close":Landroid/view/View;
    new-instance v2, Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "GalleryHybridActivity"

    const-string v1, "Hybrid fragment not attached, couldn\'t load url now!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "GalleryHybridActivity"

    const-string v1, "CTA not allowed, couldn\'t connect to network!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->load()V

    goto :goto_0
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    .line 93
    invoke-interface {v1}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/miui/gallery/util/StringUtils;->mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/hybrid/hybridclient/HybridClientFactory;->createHybridClient(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->configureActionBar()V

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12018f

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setHybridViewEventListener(Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;)V

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridClient:Lcom/miui/gallery/hybrid/hybridclient/HybridClient;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setHybridClient(Lcom/miui/gallery/hybrid/hybridclient/HybridClient;)V

    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->load()V

    .line 37
    return-void
.end method

.method protected onCtaChecked(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->resumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->load()V

    .line 44
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method
