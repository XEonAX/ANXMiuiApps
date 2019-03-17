.class public abstract Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;
.super Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;
.source "LocalCacheBackedSuggestionSource.java"

# interfaces
.implements Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;",
        "Lcom/miui/gallery/search/core/source/local/ContentCacheProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCache:Lcom/miui/gallery/search/core/source/local/ContentCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/source/local/ContentCache",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;, "Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource<TT;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/source/local/ContentCache;-><init>(Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;->mCache:Lcom/miui/gallery/search/core/source/local/ContentCache;

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract handleQuery(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;"
        }
    .end annotation
.end method

.method protected querySuggestion(Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 34
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;, "Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;->mCache:Lcom/miui/gallery/search/core/source/local/ContentCache;

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/source/local/ContentCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "cache":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;->handleQuery(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 24
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;, "Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 25
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 29
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;, "Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/LocalCacheBackedSuggestionSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 30
    return-void
.end method
