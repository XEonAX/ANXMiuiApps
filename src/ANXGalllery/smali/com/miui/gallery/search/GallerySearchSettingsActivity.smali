.class public Lcom/miui/gallery/search/GallerySearchSettingsActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "GallerySearchSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mRequestView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private configByStatus(I)V
    .locals 3
    .param p1, "searchStatus"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    const v1, 0x7f0c044d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    const v1, 0x7f0c044b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    const v1, 0x7f0c044c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f120280

    if-ne v1, v2, :cond_0

    .line 64
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SEARCH:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    invoke-static {p0, v0}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 78
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setLocalSearchStatus(Landroid/content/Context;Z)V

    .line 72
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->configByStatus(I)V

    .line 74
    const-string v1, "search"

    const-string v2, "search_open_switch"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f040135

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f120280

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->mRequestView:Landroid/widget/TextView;

    .line 32
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->getOpenApiSearchStatus()I

    move-result v0

    .line 33
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/search/GallerySearchSettingsActivity;->configByStatus(I)V

    .line 35
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 37
    const-string v1, "GallerySearchSettingsActivity"

    invoke-static {v1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->requestOpenCloudControlSearch(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 89
    const-string v0, "search_settings"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 83
    const-string v0, "search_settings"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 84
    return-void
.end method
