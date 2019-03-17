.class public Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;
.super Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;
.source "AppScreenshotSource.java"


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

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->CONTENT_URI:Landroid/net/Uri;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;Ljava/lang/String;Landroid/database/Cursor;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/database/Cursor;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->createAppScreenshotSuggestion(Ljava/lang/String;Landroid/database/Cursor;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method private createAppScreenshotSuggestion(Ljava/lang/String;Landroid/database/Cursor;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 131
    new-instance v1, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    invoke-direct {v1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>()V

    .line 132
    .local v1, "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionTitle(Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "coverPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    sget-object v2, Lcom/miui/gallery/search/SearchContract$Icon;->LOCAL_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    const/4 v4, 0x0

    .line 136
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionIcon(Ljava/lang/String;)V

    .line 142
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_ALBUM_PAGE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "serverId"

    const-wide/16 v4, 0x2

    .line 143
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "screenshotAppName"

    .line 144
    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setIntentActionURI(Ljava/lang/String;)V

    .line 145
    return-object v1

    .line 139
    :cond_0
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getScreenshotAlbumId()Ljava/lang/Long;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "serverId=? AND (serverType=0)"

    new-array v4, v4, [Ljava/lang/String;

    const-wide/16 v6, 0x2

    .line 118
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$2;-><init>(Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;)V

    .line 115
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "local_app_screenshot_source"

    return-object v0
.end method

.method protected getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_APP_SCREENSHOT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    return-object v0
.end method

.method protected bridge synthetic handleQuery(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->handleQuery(Ljava/util/List;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;

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
    .line 87
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
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

    .line 90
    .local v0, "suggestionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "suggestionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    .end local v1    # "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
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
    .line 42
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
    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->loadContent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadContent()Ljava/util/List;
    .locals 8
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
    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->getScreenshotAlbumId()Ljava/lang/Long;

    move-result-object v7

    .line 49
    .local v7, "screenshotAlbumId":Ljava/lang/Long;
    if-eqz v7, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;->PROJECTION:[Ljava/lang/String;

    const-string v3, "localGroupId = ? AND location NOT NULL AND title like \'?%\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 54
    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Screenshot"

    aput-object v6, v4, v5

    const-string v5, "alias_create_time DESC"

    new-instance v6, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/search/core/source/local/AppScreenshotSource$1;-><init>(Lcom/miui/gallery/search/core/source/local/AppScreenshotSource;)V

    .line 50
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
