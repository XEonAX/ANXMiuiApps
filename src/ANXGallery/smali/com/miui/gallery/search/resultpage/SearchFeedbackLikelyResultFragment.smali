.class public Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;
.super Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;
.source "SearchFeedbackLikelyResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;
    }
.end annotation


# instance fields
.field private mCheckedIds:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Landroid/view/View;

.field private mReportButton:Landroid/widget/TextView;

.field private mSelectAllBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;-><init>()V

    .line 46
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->updateReportButtonState()V

    return-void
.end method

.method private getCheckedItemCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method private getCheckedPositions()Landroid/util/SparseBooleanArray;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 241
    .local v0, "checkedPositions":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 242
    invoke-direct {p0, v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    return-object v0
.end method

.method private initTopBar()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 59
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040123

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "customView":Landroid/view/View;
    const v5, 0x7f1200d3

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 61
    .local v4, "titleView":Landroid/widget/TextView;
    const v5, 0x7f0c0437

    invoke-virtual {p0, v5}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mQueryText:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v5, 0x7f1200d2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "back":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v5, 0x7f12026e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    .line 68
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    invoke-static {v5, v6, v8}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 69
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    .line 73
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x13

    invoke-direct {v2, v9, v9, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 76
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 77
    return-void
.end method

.method private isChecked(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCheckedAll()Z
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedItemCount()I

    move-result v0

    .line 228
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private report()V
    .locals 5

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedServerIdList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    .local v0, "checkedServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$2;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V

    .line 222
    .local v1, "completeListener":Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mQueryText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mInFeedbackTaskMode:Z

    invoke-static {v2, v3, v4, v0, v1}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportFalseNegativeImages(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V

    goto :goto_0
.end method

.method private toggleSelectAll()V
    .locals 5

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isCheckedAll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->notifyDataSetChanged()V

    .line 202
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->updateReportButtonState()V

    .line 203
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mCheckedIds:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateReportButtonState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mReportButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSelectAllBtn:Landroid/widget/Button;

    .line 254
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->isCheckedAll()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    :goto_2
    invoke-static {v0, v3, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 256
    return-void

    :cond_0
    move v0, v2

    .line 250
    goto :goto_0

    :cond_1
    move v0, v2

    .line 251
    goto :goto_1

    :cond_2
    move v1, v2

    .line 254
    goto :goto_2
.end method


# virtual methods
.method protected changeFilterData(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 265
    return-void
.end method

.method protected changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->updateReportButtonState()V

    .line 176
    return-void
.end method

.method protected getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "from_likely_image_result"

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f040130

    return v0
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 166
    .local v0, "loader":Landroid/content/Loader;
    if-eqz v0, :cond_0

    .line 169
    .end local v0    # "loader":Landroid/content/Loader;
    :goto_0
    return-object v0

    .restart local v0    # "loader":Landroid/content/Loader;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "search_likely_image_result"

    return-object v0
.end method

.method protected getResultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 154
    .local v0, "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setSearchType(Lcom/miui/gallery/search/SearchConstants$SearchType;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 155
    return-object v0
.end method

.method protected initResultQueryInfoBuilder(Landroid/net/Uri;)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->initResultQueryInfoBuilder(Landroid/net/Uri;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setSearchType(Lcom/miui/gallery/search/SearchConstants$SearchType;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 129
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 115
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->finish()V

    goto :goto_0

    .line 109
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->report()V

    goto :goto_0

    .line 112
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->toggleSelectAll()V

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1200d2 -> :sswitch_0
        0x7f12026e -> :sswitch_2
        0x7f12027e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "intentUri"    # Landroid/net/Uri;

    .prologue
    .line 81
    const v0, 0x7f12008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$LikelyResultAdapter;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->bind(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment$1;-><init>(Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    const v0, 0x7f1201e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mContentView:Landroid/view/View;

    .line 95
    const v0, 0x7f12027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mReportButton:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mReportButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->initTopBar()V

    .line 99
    return-void
.end method

.method public onLoadMoreRequested()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->closeLoadMore()V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->onLoadMoreRequested()V

    goto :goto_0
.end method

.method protected restartFilterLoader(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 261
    return-void
.end method

.method protected restartSectionDataLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSectionDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 149
    :cond_0
    return-void
.end method

.method protected restartSectionLoader(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v8, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    iget-object v9, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v10, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    const/4 v11, 0x0

    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_IMAGE_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 137
    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/SearchConstants$SectionType;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;ZLcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    iput-object v8, p0, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .line 139
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->openLoadMore()V

    .line 141
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchFeedbackLikelyResultFragment;->onLoadMoreRequested()V

    .line 142
    return-void
.end method

.method protected updateTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method
