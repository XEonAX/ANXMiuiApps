.class public Lcom/miui/gallery/search/resultpage/SearchResultActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "SearchResultActivity.java"


# instance fields
.field private mFragment:Lmiui/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f1200c3

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v6, 0x7f040132

    invoke-virtual {p0, v6}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    .line 33
    const-string v6, "SearchResultActivity"

    const-string v7, "No extra data fount!"

    invoke-static {v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->finish()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 40
    .local v5, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 41
    .local v4, "resultType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 42
    .local v0, "actionType":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v0, "client_enter_image_result_page"

    .line 47
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tags"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "tagList"

    .line 48
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 50
    :cond_3
    const-string/jumbo v4, "tagList"

    .line 51
    const-string v0, "client_enter_tag_list_page"

    .line 64
    :cond_4
    :goto_1
    if-nez v4, :cond_9

    .line 65
    const-string v6, "SearchResultActivity"

    const-string v7, "Invalid action uri, no result type specified!"

    invoke-static {v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->finish()V

    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v7, "locations"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "locationList"

    .line 53
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 55
    :cond_6
    const-string v4, "locationList"

    .line 56
    const-string v0, "client_enter_location_list_page"

    goto :goto_1

    .line 57
    :cond_7
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v7, "likelyResults"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "likelyImage"

    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 60
    :cond_8
    const-string v4, "likelyImage"

    .line 61
    const-string v0, "client_enter_likely_image_list_page"

    goto :goto_1

    .line 71
    :cond_9
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventParams(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v3

    .line 72
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_a

    .line 73
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 75
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "paramName":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 78
    .end local v2    # "paramName":Ljava/lang/String;
    :cond_b
    const-string v6, "from"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->cacheEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "RootFragment"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lmiui/app/Fragment;

    iput-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    .line 82
    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    if-nez v6, :cond_0

    .line 84
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "type"

    .line 85
    invoke-virtual {v6, v7, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    const-string v6, "imageList"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 90
    new-instance v6, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-direct {v6}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    .line 100
    :goto_3
    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    const-string v7, "RootFragment"

    invoke-virtual {p0, v6, v7, v8, v8}, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 91
    :cond_c
    const-string v6, "locationList"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 92
    new-instance v6, Lcom/miui/gallery/search/resultpage/LocationListFragment;

    invoke-direct {v6}, Lcom/miui/gallery/search/resultpage/LocationListFragment;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    goto :goto_3

    .line 93
    :cond_d
    const-string/jumbo v6, "tagList"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 94
    new-instance v6, Lcom/miui/gallery/search/resultpage/TagListFragment;

    invoke-direct {v6}, Lcom/miui/gallery/search/resultpage/TagListFragment;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    goto :goto_3

    .line 95
    :cond_e
    const-string v6, "likelyImage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 96
    new-instance v6, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    invoke-direct {v6}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    goto :goto_3

    .line 98
    :cond_f
    new-instance v6, Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-direct {v6}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultActivity;->mFragment:Lmiui/app/Fragment;

    goto :goto_3
.end method
