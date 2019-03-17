.class public abstract Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;
.super Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;
.source "SearchImageResultFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

.field protected mColumnCount:I

.field private mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;

.field protected mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private mLoadCompleteFooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mColumnCount:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mLoadCompleteFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mLoadCompleteFooter:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method


# virtual methods
.method protected final bind(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;)V
    .locals 1
    .param p1, "gridView"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "adapter"    # Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->setRequestLoadMoreListener(Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;)V

    .line 45
    return-void
.end method

.method protected changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 6
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 54
    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->getRankInfo(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/suggestion/RankInfo;

    move-result-object v3

    .line 55
    .local v3, "rankInfo":Lcom/miui/gallery/search/core/suggestion/RankInfo;
    invoke-static {v3}, Lcom/miui/gallery/search/SearchConstants;->isHorizontalDocumentStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z

    move-result v1

    .line 56
    .local v1, "isDocument":Z
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 58
    .local v0, "columnCount":I
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 60
    .local v2, "paddingPixel":I
    :goto_1
    iget v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mColumnCount:I

    if-eq v4, v0, :cond_0

    .line 61
    iput v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mColumnCount:I

    .line 62
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v5, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mColumnCount:I

    invoke-virtual {v4, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 63
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    .line 64
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v4, p1, v3, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 68
    return-void

    .line 57
    .end local v0    # "columnCount":I
    .end local v2    # "paddingPixel":I
    :cond_1
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v4

    iget v0, v4, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    goto :goto_0

    .line 59
    .restart local v0    # "columnCount":I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1
.end method

.method protected closeLoadMore()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->closeLoadMore()V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 87
    return-void
.end method

.method protected getCheckedServerIdList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "positions"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 233
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 235
    .local v2, "position":I
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getServerId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v2    # "position":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method protected getCheckedServerIds(Landroid/util/SparseBooleanArray;)Ljava/lang/String;
    .locals 2
    .param p1, "positions"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 243
    const-string v0, ","

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getCheckedServerIdList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorViewAdapter()Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;

    return-object v0
.end method

.method protected getImageIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getImageIds()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMicroThumbnailSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getMicroThumbnailSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0
.end method

.method protected getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPhotoPageDataLoaderUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$SearchResultPhoto;->URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectionArguments()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getImageIds()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "imageIds":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected goToPhotoPage(Landroid/widget/AdapterView;ILjava/lang/String;)V
    .locals 10
    .param p2, "position"    # I
    .param p3, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/miui/gallery/model/ImageLoadParams;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 136
    invoke-virtual {v1, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemKey(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 137
    invoke-virtual {v3, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getMicroThumbnailSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 139
    invoke-virtual {v5, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 140
    invoke-virtual {v6, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v6, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getFileLength(I)J

    move-result-wide v8

    move v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 142
    .local v0, "item":Lcom/miui/gallery/model/ImageLoadParams;
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getPhotoPageDataLoaderUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 143
    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v5

    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getSelectionArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->getOrder()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v9, v0

    .line 142
    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;)V

    .line 146
    const-string v2, "client_image_operation_open_photo_page"

    const-string v3, "serverIds"

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 147
    invoke-virtual {v1, p2}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getServerId(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "queryText"

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mQueryText:Ljava/lang/String;

    move-object v1, p3

    .line 146
    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected moreThanOnePage()Z
    .locals 5

    .prologue
    .line 114
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 115
    .local v0, "firstVisibleView":I
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v3

    .line 116
    .local v3, "lastVisibleView":I
    const v2, 0x7fffffff

    .line 117
    .local v2, "lastItemIndex":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 118
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIndexByItemPosition(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIndexByItemPosition(I)I

    move-result v2

    .line 125
    :cond_0
    if-gtz v0, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 117
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 125
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 252
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->onDestroy()V

    .line 253
    return-void
.end method

.method protected onLoadComplete()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->loadComplete()V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 94
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$1;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method protected openLoadMore()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->openLoadMore()V

    .line 81
    return-void
.end method

.method protected supportFeedback()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mInFeedbackTaskMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->supportFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected usePersistentResponse()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method
