.class public abstract Lcom/miui/gallery/search/core/source/AbstractSource;
.super Ljava/lang/Object;
.source "AbstractSource.java"

# interfaces
.implements Lcom/miui/gallery/search/core/source/Source;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 41
    const/4 v0, 0x4

    return v0
.end method

.method public abstract getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
.end method

.method public match(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 6
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    const/4 v2, 0x0

    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v3

    if-nez v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v2

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/AbstractSource;->getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v1

    .line 30
    .local v1, "searchTypes":[Lcom/miui/gallery/search/SearchConstants$SearchType;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 31
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 32
    .local v0, "searchType":Lcom/miui/gallery/search/SearchConstants$SearchType;
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v5

    if-ne v0, v5, :cond_2

    .line 33
    const/4 v2, 0x1

    goto :goto_0

    .line 31
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
