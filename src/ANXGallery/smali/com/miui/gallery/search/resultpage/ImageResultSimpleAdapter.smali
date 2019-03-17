.class public Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;
.super Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;
.source "ImageResultSimpleAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;


# instance fields
.field private INDEX_CLOUD_ID:I

.field private INDEX_CREATE_TIME:I

.field private INDEX_DURATION:I

.field private INDEX_IS_FAVORITE:I

.field private INDEX_LOCATION:I

.field private INDEX_MICRO_THUMBNAIL_PATH:I

.field private INDEX_MIME_TYPE:I

.field private INDEX_ORIGINAL_PATH:I

.field private INDEX_SERVER_ID:I

.field private INDEX_SHA1:I

.field private INDEX_SIZE:I

.field private INDEX_SPECIAL_TYPE_FLAGS:I

.field private INDEX_SYNC_STATE:I

.field private INDEX_THUMBNAIL_PATH:I

.field private mCheckable:Z

.field private mLoadMoreRequested:Z

.field private mNextLoadEnable:Z

.field protected mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field protected mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

.field private mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    .line 35
    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mLoadMoreRequested:Z

    .line 95
    return-void
.end method

.method private getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    return-object v0
.end method

.method private requestLoadMoreIfNeeded()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mLoadMoreRequested:Z

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mLoadMoreRequested:Z

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;->onLoadMoreRequested()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .param p3, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 228
    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .line 229
    invoke-virtual {p0, p3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 230
    return-void
.end method

.method public closeLoadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    .line 72
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mLoadMoreRequested:Z

    .line 73
    return-void
.end method

.method public doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 113
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/ui/MicroThumbGridItem;

    .line 114
    .local v0, "item":Lcom/miui/gallery/ui/MicroThumbGridItem;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 116
    .local v6, "position":I
    invoke-virtual {p0, v6}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 117
    invoke-virtual {p0, v6}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    .line 115
    invoke-virtual {v0, v7, v8, v9}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 119
    iget v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_MIME_TYPE:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "type":Ljava/lang/String;
    iget v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_DURATION:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 121
    .local v2, "duration":J
    iget v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SPECIAL_TYPE_FLAGS:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 122
    .local v4, "specialTypeFlags":J
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    .line 123
    invoke-virtual {p0, v6}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->isFavorite(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindFavoriteIndicator(Z)V

    .line 124
    iget-boolean v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mCheckable:Z

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setCheckable(Z)V

    .line 125
    iget v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_CREATE_TIME:I

    .line 126
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iget v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_LOCATION:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {p2, v8, v9, v7, v1}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->requestLoadMoreIfNeeded()V

    .line 132
    :cond_0
    return-void
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 222
    check-cast p1, Lcom/miui/gallery/ui/HomePageGridItem;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/gallery/ui/HomePageGridItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isHorizontalDocumentStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SYNC_STATE:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getInt(I)I

    move-result v0

    .line 175
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemKey(I)J

    move-result-wide v2

    .line 174
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getDownloadUri(IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFileLength(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SIZE:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getImageIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getImageIds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_CLOUD_ID:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_MICRO_THUMBNAIL_PATH:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_MICRO_THUMBNAIL_PATH:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMicroThumbnailSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isHorizontalDocumentStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroHorizontalDocumentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_MIME_TYPE:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_ORIGINAL_PATH:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    goto :goto_0
.end method

.method public getServerId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SERVER_ID:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 186
    .local v0, "cursor":Landroid/database/Cursor;
    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SHA1:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_THUMBNAIL_PATH:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getSuggestionCursorByPosition(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_IS_FAVORITE:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    return v0
.end method

.method public loadComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    if-eqz v0, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    .line 90
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mLoadMoreRequested:Z

    .line 91
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    invoke-static {v1}, Lcom/miui/gallery/search/SearchConstants;->isHorizontalDocumentStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040122

    .line 101
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/resultpage/SearchDocumentGridItem;

    .line 106
    .local v0, "item":Lcom/miui/gallery/ui/MicroThumbGridItem;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getMicroThumbnailSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 107
    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setImageForeground(I)V

    .line 108
    return-object v0

    .line 103
    .end local v0    # "item":Lcom/miui/gallery/ui/MicroThumbGridItem;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008e

    .line 104
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/MicroThumbGridItem;

    .restart local v0    # "item":Lcom/miui/gallery/ui/MicroThumbGridItem;
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method

.method public openLoadMore()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mNextLoadEnable:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mLoadMoreRequested:Z

    .line 66
    return-void
.end method

.method public setRequestLoadMoreListener(Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;)V
    .locals 0
    .param p1, "requestLoadMoreListener"    # Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    .line 57
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    const-string v0, "serverId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SERVER_ID:I

    .line 244
    const-string v0, "alias_micro_thumbnail"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_MICRO_THUMBNAIL_PATH:I

    .line 245
    const-string/jumbo v0, "thumbnailFile"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_THUMBNAIL_PATH:I

    .line 246
    const-string v0, "localFile"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_ORIGINAL_PATH:I

    .line 247
    const-string/jumbo v0, "sha1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SHA1:I

    .line 248
    const-string v0, "mimeType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_MIME_TYPE:I

    .line 249
    const-string v0, "alias_sync_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SYNC_STATE:I

    .line 250
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_CLOUD_ID:I

    .line 251
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_DURATION:I

    .line 252
    const-string v0, "alias_is_favorite"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_IS_FAVORITE:I

    .line 253
    const-string v0, "location"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_LOCATION:I

    .line 254
    const-string v0, "alias_create_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_CREATE_TIME:I

    .line 255
    const-string/jumbo v0, "specialTypeFlags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SPECIAL_TYPE_FLAGS:I

    .line 256
    const-string/jumbo v0, "size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->INDEX_SIZE:I

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
