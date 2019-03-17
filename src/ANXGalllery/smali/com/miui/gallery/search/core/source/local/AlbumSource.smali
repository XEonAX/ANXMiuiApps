.class public Lcom/miui/gallery/search/core/source/local/AlbumSource;
.super Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;
.source "AlbumSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private final SHARE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL_EXCEPT_DELETED:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "serverId"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "cover_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cover_path"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->PROJECTION:[Ljava/lang/String;

    .line 132
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "creatorId"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->SHARE_PROJECTION:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/source/local/AlbumSource;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/AlbumSource;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->getShareAlbumInfo()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/source/local/AlbumSource;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/AlbumSource;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/core/source/local/AlbumSource;Ljava/lang/String;Landroid/database/Cursor;Landroid/util/LongSparseArray;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/AlbumSource;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/database/Cursor;
    .param p3, "x3"    # Landroid/util/LongSparseArray;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->createAlbumSuggestion(Ljava/lang/String;Landroid/database/Cursor;Landroid/util/LongSparseArray;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method private createAlbumSuggestion(Ljava/lang/String;Landroid/database/Cursor;Landroid/util/LongSparseArray;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 11
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;"
        }
    .end annotation

    .prologue
    .line 141
    .local p3, "shareAlbumInfo":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 142
    .local v4, "id":J
    const-wide/32 v8, 0x7ffffffe

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 144
    const/4 v7, 0x0

    .line 172
    :cond_0
    :goto_0
    return-object v7

    .line 146
    :cond_1
    new-instance v7, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    invoke-direct {v7}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>()V

    .line 147
    .local v7, "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    invoke-virtual {v7, p0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionSource(Lcom/miui/gallery/search/core/source/Source;)V

    .line 148
    invoke-virtual {v7, p1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionTitle(Ljava/lang/String;)V

    .line 149
    sget-object v8, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_ALBUM_PAGE:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    .local v0, "actionUriBuilder":Landroid/net/Uri$Builder;
    const/4 v8, 0x1

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "serverId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 152
    const-string v8, "serverId"

    invoke-virtual {v0, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-virtual {p3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 154
    const-string v9, "creatorId"

    invoke-virtual {p3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setIntentActionURI(Ljava/lang/String;)V

    .line 161
    const/4 v8, 0x4

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cover":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 163
    sget-object v8, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v8, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v1    # "cover":Ljava/lang/String;
    :cond_3
    const-string v8, "id"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 165
    .restart local v1    # "cover":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 166
    .local v2, "coverId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_0

    .line 167
    sget-object v8, Lcom/miui/gallery/search/SearchContract$Icon;->LOCAL_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "id"

    .line 168
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 169
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionIcon(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getShareAlbumInfo()Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->SHARE_PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/search/core/source/local/AlbumSource$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/search/core/source/local/AlbumSource$2;-><init>(Lcom/miui/gallery/search/core/source/local/AlbumSource;)V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    return-object v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "local_album_source"

    return-object v0
.end method

.method protected getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_ALBUM:Lcom/miui/gallery/search/SearchConstants$SectionType;

    return-object v0
.end method

.method protected bridge synthetic handleQuery(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->handleQuery(Ljava/util/List;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handleQuery(Ljava/util/List;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .locals 4
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "albumSuggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 103
    .local v0, "album":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "album":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    .end local v1    # "albumSuggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method protected isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "status"    # I

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->loadContent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadContent()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/search/core/source/local/AlbumSource;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;-><init>(Lcom/miui/gallery/search/core/source/local/AlbumSource;)V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
