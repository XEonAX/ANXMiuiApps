.class public Lcom/miui/gallery/ui/TopSearchBarController;
.super Ljava/lang/Object;
.source "TopSearchBarController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;
.implements Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnUpdateTextListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">;",
        "Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;",
        "Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnUpdateTextListener;"
    }
.end annotation


# instance fields
.field private mActionBundle:Landroid/os/Bundle;

.field private mDefaultHints:[Lcom/miui/gallery/search/hint/SearchBarHintItem;

.field private mFragment:Lmiui/app/Fragment;

.field private mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

.field private mNeedReloadHint:Z

.field private mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

.field private mSearchTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/widget/BannerSearchBar;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragment"    # Lmiui/app/Fragment;
    .param p2, "bannerSearchBar"    # Lcom/miui/gallery/search/widget/BannerSearchBar;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mNeedReloadHint:Z

    .line 52
    iput-object v1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mDefaultHints:[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .line 54
    iput-object v1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mActionBundle:Landroid/os/Bundle;

    .line 57
    iput-object p1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mFragment:Lmiui/app/Fragment;

    .line 58
    iput-object p2, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const v1, 0x7f1200eb

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    .line 60
    new-instance v0, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    invoke-direct {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getLocalDefaultHints()[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;-><init>([Lcom/miui/gallery/search/hint/SearchBarHintItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->setOnUpdateTextListener(Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnUpdateTextListener;)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setHintAdapter(Lcom/miui/gallery/search/hint/SearchBarHintAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setOnHintClickListener(Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;)V

    .line 64
    if-eqz p3, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mActionBundle:Landroid/os/Bundle;

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mActionBundle:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mNeedReloadHint:Z

    .line 69
    return-void
.end method

.method private formatHintResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)[Lcom/miui/gallery/search/hint/SearchBarHintItem;
    .locals 9
    .param p1, "hintResult"    # Lcom/miui/gallery/search/core/result/SuggestionResult;

    .prologue
    .line 192
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 193
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v6

    .line 194
    .local v6, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    invoke-interface {v6}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v7

    new-array v3, v7, [Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .line 195
    .local v3, "hintData":[Lcom/miui/gallery/search/hint/SearchBarHintItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v6}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 196
    invoke-interface {v6, v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 197
    const/16 v0, 0xfa0

    .line 198
    .local v0, "duration":I
    const-string v7, "display_duration"

    invoke-static {v6, v7}, Lcom/miui/gallery/ui/TopSearchBarController;->getString(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "durationString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 206
    :cond_0
    :goto_1
    new-instance v5, Lcom/miui/gallery/search/hint/SearchBarHintItem;

    const-string v7, "hint_text"

    .line 207
    invoke-static {v6, v7}, Lcom/miui/gallery/ui/TopSearchBarController;->getString(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "query_text"

    .line 208
    invoke-static {v6, v8}, Lcom/miui/gallery/ui/TopSearchBarController;->getString(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v0}, Lcom/miui/gallery/search/hint/SearchBarHintItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    .local v5, "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    aput-object v5, v3, v4

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v5    # "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "TopSearchBarController"

    const-string v8, "error occurred when formatting hint display duration, %s"

    invoke-static {v7, v8, v2}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 214
    .end local v0    # "duration":I
    .end local v1    # "durationString":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "hintData":[Lcom/miui/gallery/search/hint/SearchBarHintItem;
    .end local v4    # "i":I
    .end local v6    # "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method private getHintText(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "queryText"    # Z

    .prologue
    .line 176
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->getItem(I)Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .line 178
    .local v0, "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/search/hint/SearchBarHintItem;->getQueryText()Ljava/lang/String;

    move-result-object v1

    .line 180
    .end local v0    # "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    :goto_0
    return-object v1

    .line 178
    .restart local v0    # "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/search/hint/SearchBarHintItem;->getHintText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 180
    .end local v0    # "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLocalDefaultHints()[Lcom/miui/gallery/search/hint/SearchBarHintItem;
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mDefaultHints:[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery/search/hint/SearchBarHintItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .line 186
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0442

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/search/hint/SearchBarHintItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mDefaultHints:[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mDefaultHints:[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    return-object v0
.end method

.method private static getString(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-interface {p0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 220
    invoke-interface {p0, v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private goToSearchPage(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x1

    .line 148
    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mActionBundle:Landroid/os/Bundle;

    invoke-static {v4, p1, v5}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x7f050000

    const v6, 0x7f050001

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 169
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;

    invoke-direct {v5}, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;-><init>()V

    invoke-static {v4, v5}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 155
    iget-object v4, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v4, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/miui/gallery/search/SearchActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const-string v4, "from"

    iget-object v5, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mActionBundle:Landroid/os/Bundle;

    const-string v6, "from"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v4, "usingSpecialAnimation"

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    iget-object v4, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const v5, 0x7f1200ec

    invoke-virtual {v4, v5}, Lcom/miui/gallery/search/widget/BannerSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "searchIcon":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const v5, 0x7f1200ed

    invoke-virtual {v4, v5}, Lcom/miui/gallery/search/widget/BannerSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, "voiceIcon":Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/v4/util/Pair;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0460

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 165
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c045f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c0461

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    .line 163
    invoke-static {v4, v5}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    .line 167
    .local v1, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v0, v5}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private updateHintData([Lcom/miui/gallery/search/hint/SearchBarHintItem;)V
    .locals 1
    .param p1, "hintData"    # [Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mHintAdapter:Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getLocalDefaultHints()[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    move-result-object p1

    .end local p1    # "hintData":[Lcom/miui/gallery/search/hint/SearchBarHintItem;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->setData([Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0}, Lmiui/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0}, Lmiui/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HINT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-direct {v0, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>(Lcom/miui/gallery/search/SearchConstants$SearchType;)V

    .line 74
    .local v0, "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    .line 75
    .local v1, "queryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    new-instance v2, Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;

    invoke-direct {v4}, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;-><init>()V

    invoke-direct {v2, v3, v1, v4}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V

    return-object v2
.end method

.method public onHintClicked(Lcom/miui/gallery/search/widget/BannerSearchBar;I)V
    .locals 3
    .param p1, "searchBar"    # Lcom/miui/gallery/search/widget/BannerSearchBar;
    .param p2, "position"    # I

    .prologue
    .line 129
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_SEARCH_PAGE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/miui/gallery/ui/TopSearchBarController;->getHintText(IZ)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "queryText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const-string v2, "queryHint"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/TopSearchBarController;->goToSearchPage(Landroid/net/Uri;)V

    .line 135
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 3
    .param p2, "data"    # Lcom/miui/gallery/search/core/result/SuggestionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult;>;"
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/TopSearchBarController;->formatHintResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)[Lcom/miui/gallery/search/hint/SearchBarHintItem;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/TopSearchBarController;->updateHintData([Lcom/miui/gallery/search/hint/SearchBarHintItem;)V

    .line 83
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->isErrorResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mNeedReloadHint:Z

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_2
    return-void

    .line 80
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TopSearchBarController"

    const-string v2, "Failed when destroying loader [%s]"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/TopSearchBarController;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 94
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/BannerSearchBar;->getLooperController()Lcom/miui/gallery/search/widget/bannerView/ILoopController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/widget/bannerView/ILoopController;->stopLoop()V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const v1, 0x7f1200ee

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/BannerSearchBar;->getLooperController()Lcom/miui/gallery/search/widget/bannerView/ILoopController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/widget/bannerView/ILoopController;->startLoop()V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const v1, 0x7f1200ee

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 115
    iget-boolean v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mNeedReloadHint:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TopSearchBarController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 117
    iput-boolean v3, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mNeedReloadHint:Z

    .line 119
    :cond_0
    return-void
.end method

.method public onUpdateText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setClickable(Z)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/TopSearchBarController;->mSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setEnabled(Z)V

    .line 107
    return-void
.end method
