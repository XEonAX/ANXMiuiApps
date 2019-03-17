.class public Lcom/miui/gallery/search/SearchFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/miui/gallery/search/SearchFragmentCallback;
.implements Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;


# instance fields
.field private mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

.field private mSearchView:Lcom/miui/gallery/search/widget/SearchView;

.field private mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

.field private mTopVisibleFragment:Lcom/miui/gallery/search/SearchFragmentBase;

.field private mTransitionHelper:Lcom/miui/gallery/search/transitions/SearchTransitionHelper;

.field private mUseTransition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/search/SearchFragmentBase;

    iput-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    .line 310
    new-instance v0, Lcom/miui/gallery/search/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/SearchFragment$4;-><init>(Lcom/miui/gallery/search/SearchFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    .line 57
    new-instance v0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;

    invoke-direct {v0, p0, p0}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mTransitionHelper:Lcom/miui/gallery/search/transitions/SearchTransitionHelper;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/SearchFragmentBase;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mTopVisibleFragment:Lcom/miui/gallery/search/SearchFragmentBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragment;->getQueryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/SearchFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->setTopFragment(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method private configSearchView()V
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/SearchFragment$1;-><init>(Lcom/miui/gallery/search/SearchFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method private ensureFragment(I)Lcom/miui/gallery/search/SearchFragmentBase;
    .locals 2
    .param p1, "fragmentId"    # I

    .prologue
    .line 400
    packed-switch p1, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/SearchFragmentBase;->setSearchFragmentCallback(Lcom/miui/gallery/search/SearchFragmentCallback;)V

    .line 413
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->getFragment(I)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v0

    return-object v0

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    new-instance v1, Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-direct {v1}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;-><init>()V

    aput-object v1, v0, p1

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    new-instance v1, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-direct {v1}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;-><init>()V

    aput-object v1, v0, p1

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private extractQueryFromVoiceAssistantResult(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 289
    :try_start_0
    const-string v5, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 290
    .local v3, "nlpResults":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 293
    const-string v5, "nlpIntention"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "recognizeResults":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 295
    .local v2, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v5, "search_query"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 296
    .local v1, "element":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v3    # "nlpResults":Landroid/os/Bundle;
    .end local v4    # "recognizeResults":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 299
    .restart local v1    # "element":Lcom/google/gson/JsonElement;
    .restart local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v3    # "nlpResults":Landroid/os/Bundle;
    .restart local v4    # "recognizeResults":Ljava/lang/String;
    :cond_0
    const-string v5, "query"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 302
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v2    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v4    # "recognizeResults":Ljava/lang/String;
    :cond_1
    const-string v5, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v3    # "nlpResults":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SearchFragment"

    const-string v6, "Error occurred while extracting query from voice assistant result, %s"

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getFragment(I)Lcom/miui/gallery/search/SearchFragmentBase;
    .locals 1
    .param p1, "fragmentId"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mFragments:[Lcom/miui/gallery/search/SearchFragmentBase;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getFromFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "from":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 281
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method private getQueryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initTopBar()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/miui/gallery/search/widget/SearchView;

    iget-object v1, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 157
    return-void
.end method

.method private isTopFragment(I)Z
    .locals 2
    .param p1, "fragmentId"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mTopVisibleFragment:Lcom/miui/gallery/search/SearchFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mTopVisibleFragment:Lcom/miui/gallery/search/SearchFragmentBase;

    .line 379
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->getFragment(I)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordQueryArrivedFromIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "queryContent"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v1, "from_search"

    invoke-static {v1}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->createNewSerial(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v0, "params":Ljava/util/HashMap;
    const-string v1, "queryText"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "srcPage"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v1, 0x0

    const-string v2, "client_enter_search_page"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->cacheEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 274
    return-void
.end method

.method private setTopFragment(I)V
    .locals 4
    .param p1, "fragmentId"    # I

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->isTopFragment(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 385
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->getFragment(I)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v0

    .line 386
    .local v0, "fragment":Lcom/miui/gallery/search/SearchFragmentBase;
    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->ensureFragment(I)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v0

    .line 389
    :cond_0
    const v2, 0x7f120270

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 390
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 391
    iput-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mTopVisibleFragment:Lcom/miui/gallery/search/SearchFragmentBase;

    .line 393
    .end local v0    # "fragment":Lcom/miui/gallery/search/SearchFragmentBase;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method private updateQueryFromIntent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "queryContent"    # Ljava/lang/String;
    .param p2, "enableShortcut"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/widget/SearchView;->setQueryText(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/SearchFragment;->setTopFragment(I)V

    .line 256
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/SearchFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/search/SearchFragment$3;-><init>(Lcom/miui/gallery/search/SearchFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "search"

    return-object v0
.end method

.method public getSharedElementCallback(Z)Landroid/support/v4/app/SharedElementCallback;
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mTransitionHelper:Lcom/miui/gallery/search/transitions/SearchTransitionHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/transitions/SearchTransitionHelper;->getSharedElementCallback()Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v9, p0, Lcom/miui/gallery/search/SearchFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v9}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 75
    .local v3, "queryContent":Ljava/lang/String;
    const/4 v4, 0x0

    .line 76
    .local v4, "queryHint":Ljava/lang/String;
    const/4 v0, 0x0

    .line 77
    .local v0, "enableShortcut":Z
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 78
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 79
    .local v5, "uri":Landroid/net/Uri;
    const-string v9, "query"

    invoke-virtual {v5, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v9, "queryHint"

    invoke-virtual {v5, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string v9, "enableShortcut"

    invoke-virtual {v5, v9, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 85
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 87
    iget-object v9, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v9, v4}, Lcom/miui/gallery/search/widget/SearchView;->setQueryText(Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-direct {p0, v7}, Lcom/miui/gallery/search/SearchFragment;->setTopFragment(I)V

    .line 94
    :goto_0
    iget-object v9, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {}, Lcom/miui/gallery/util/IntentUtil;->isSpeechInputSupported()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/search/widget/SearchView;->setVoiceButtonEnabled(Z)V

    .line 96
    if-eqz p1, :cond_2

    const-string/jumbo v9, "state_first_creation"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    move v1, v8

    .line 97
    .local v1, "firstCreation":Z
    :goto_1
    const-string/jumbo v9, "usingSpecialAnimation"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 98
    .local v6, "usingSpecialAnimation":Z
    if-eqz v1, :cond_5

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    iput-boolean v8, p0, Lcom/miui/gallery/search/SearchFragment;->mUseTransition:Z

    .line 102
    iget-object v7, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    const v8, 0x7f120282

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0c0460

    .line 103
    invoke-virtual {p0, v8}, Lcom/miui/gallery/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 104
    iget-object v7, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    const v8, 0x7f120283

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0c045f

    .line 105
    invoke-virtual {p0, v8}, Lcom/miui/gallery/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 106
    iget-object v7, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    const v8, 0x7f1200ed

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0c0461

    .line 107
    invoke-virtual {p0, v8}, Lcom/miui/gallery/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 108
    iget-object v7, p0, Lcom/miui/gallery/search/SearchFragment;->mTransitionHelper:Lcom/miui/gallery/search/transitions/SearchTransitionHelper;

    invoke-virtual {v7}, Lcom/miui/gallery/search/transitions/SearchTransitionHelper;->configTransition()V

    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 115
    :goto_2
    invoke-direct {p0, v2}, Lcom/miui/gallery/search/SearchFragment;->getFromFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/miui/gallery/search/SearchFragment;->recordQueryArrivedFromIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 91
    .end local v1    # "firstCreation":Z
    .end local v6    # "usingSpecialAnimation":Z
    :cond_3
    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/search/SearchFragment;->updateQueryFromIntent(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v1, v7

    .line 96
    goto :goto_1

    .line 112
    .restart local v1    # "firstCreation":Z
    .restart local v6    # "usingSpecialAnimation":Z
    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragment;->configSearchView()V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 202
    const/16 v9, 0x29

    if-ne p1, v9, :cond_3

    if-ne p2, v10, :cond_3

    if-eqz p3, :cond_3

    .line 204
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "server_id_of_album"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "peopleServerID":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "origin_album_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "originName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "mark_album_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "markName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "album_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "newName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 209
    move-object v2, v0

    .line 211
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "mark_relation"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "markRelation":Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragment;->getQueryText()Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "queryText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 215
    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "newQueryText":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/search/SearchConfig;->getSuggestionConfig()Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    move-result-object v9

    invoke-virtual {v9, v2, v4, v6}, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->addQueryExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v9, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v9, v3}, Lcom/miui/gallery/search/widget/SearchView;->setQueryText(Ljava/lang/String;)V

    .line 220
    iget-object v9, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    iget-object v10, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    invoke-interface {v9, v10, v3}, Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;->onQueryTextSubmit(Landroid/view/View;Ljava/lang/String;)V

    .line 223
    .end local v3    # "newQueryText":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v5, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "peopleServerID"

    invoke-static {v6}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v9, "originName"

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v9, "newName"

    invoke-static {v2}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v9, "markName"

    invoke-static {v0}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v9, "queryText"

    invoke-static {v8}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v9, "markRelation"

    invoke-static {v1}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v9, "from_guide"

    const-string/jumbo v10, "suggestion_mark_people"

    invoke-static {v9, v10, v5}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    .end local v0    # "markName":Ljava/lang/String;
    .end local v1    # "markRelation":Ljava/lang/String;
    .end local v2    # "newName":Ljava/lang/String;
    .end local v4    # "originName":Ljava/lang/String;
    .end local v5    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "peopleServerID":Ljava/lang/String;
    .end local v8    # "queryText":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 232
    :cond_3
    const/16 v9, 0x2b

    if-ne p1, v9, :cond_2

    if-ne p2, v10, :cond_2

    .line 233
    invoke-direct {p0, p3}, Lcom/miui/gallery/search/SearchFragment;->extractQueryFromVoiceAssistantResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "query":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 235
    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/miui/gallery/search/SearchFragment;->updateQueryFromIntent(Ljava/lang/String;Z)V

    .line 236
    const-string v9, "from_search"

    const-string v10, "receive_voice_assistant_result"

    const-string v11, "query"

    invoke-static {v9, v10, v11, v7}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 121
    const-string v0, "from_search"

    invoke-static {v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->onCompleteSerial(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v1, 0x7f040125

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragment;->initTopBar()V

    .line 66
    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "queryContent":Ljava/lang/String;
    const-string v3, "enableShortcut"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    .local v0, "enableShortcut":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/search/SearchFragment;->updateQueryFromIntent(Ljava/lang/String;Z)V

    .line 143
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchFragment;->getFromFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/search/SearchFragment;->recordQueryArrivedFromIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v0    # "enableShortcut":Z
    .end local v1    # "queryContent":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setSearchViewListener(Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;)V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 181
    iget-boolean v0, p0, Lcom/miui/gallery/search/SearchFragment;->mUseTransition:Z

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/SearchFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/SearchFragment$2;-><init>(Lcom/miui/gallery/search/SearchFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const-string/jumbo v0, "state_first_creation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/SearchFragment;->mUseTransition:Z

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragment;->configSearchView()V

    .line 134
    return-void
.end method

.method public onTransitionStart()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setSearchViewListener(Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;)V

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment;->mSearchView:Lcom/miui/gallery/search/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setCursorVisible(Z)V

    .line 128
    return-void
.end method

.method public requestIME(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 361
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/SearchFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/search/SearchFragment$5;-><init>(Lcom/miui/gallery/search/SearchFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method
