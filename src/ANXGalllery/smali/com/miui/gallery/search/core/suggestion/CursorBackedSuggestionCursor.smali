.class public Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;
.super Landroid/database/CursorWrapper;
.source "CursorBackedSuggestionCursor.java"

# interfaces
.implements Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Landroid/database/Cursor;",
        ">",
        "Landroid/database/CursorWrapper;",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
    }
.end annotation


# static fields
.field private static final EMPTY_EXTRA:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;


# instance fields
.field protected mActionURIIdx:I

.field private mExtras:Landroid/os/Bundle;

.field protected mIconIdx:I

.field protected final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field protected mSubTitleIdx:I

.field private mSuggestionExtrasArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

.field protected mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor$1;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->EMPTY_EXTRA:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TC;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    .local p2, "cursor":Landroid/database/Cursor;, "TC;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Lcom/miui/gallery/search/core/source/Source;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Lcom/miui/gallery/search/core/source/Source;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "suggestionSource"    # Lcom/miui/gallery/search/core/source/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TC;",
            "Lcom/miui/gallery/search/core/source/Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    .local p2, "cursor":Landroid/database/Cursor;, "TC;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/result/ErrorInfo;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "suggestionSource"    # Lcom/miui/gallery/search/core/source/Source;
    .param p4, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TC;",
            "Lcom/miui/gallery/search/core/source/Source;",
            "Lcom/miui/gallery/search/core/result/ErrorInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    .local p2, "cursor":Landroid/database/Cursor;, "TC;"
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 23
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mExtras:Landroid/os/Bundle;

    .line 54
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 55
    iput-object p3, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->updateIndexes()V

    .line 58
    return-void
.end method

.method private isExtraIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mIconIdx:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mActionURIIdx:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mTitleIdx:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSubTitleIdx:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 0

    .prologue
    .line 67
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mExtras:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentActionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mActionURIIdx:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    return-object v0
.end method

.method protected getStringOrNull(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I

    .prologue
    .line 148
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .locals 9

    .prologue
    .line 97
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    .line 98
    const/4 v6, 0x0

    .line 127
    :goto_0
    return-object v6

    .line 100
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionExtrasArray:Landroid/util/SparseArray;

    if-nez v6, :cond_1

    .line 101
    new-instance v6, Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionExtrasArray:Landroid/util/SparseArray;

    .line 103
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionExtrasArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    .line 104
    .local v2, "extras":Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    sget-object v6, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->EMPTY_EXTRA:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    if-ne v2, v6, :cond_2

    .line 105
    sget-object v6, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->EMPTY_EXTRA:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    goto :goto_0

    .line 106
    :cond_2
    if-nez v2, :cond_6

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_5

    .line 110
    invoke-direct {p0, v3}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->isExtraIndex(I)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v0, v3

    if-eqz v6, :cond_4

    .line 111
    invoke-virtual {p0, v3}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 113
    if-nez v1, :cond_3

    .line 114
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .restart local v1    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    aget-object v6, v0, v3

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_5
    if-eqz v1, :cond_7

    .line 121
    new-instance v4, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;

    invoke-direct {v4, v1}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;-><init>(Ljava/util/Map;)V

    .line 122
    .local v4, "suggestionExtras":Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    iget-object v6, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionExtrasArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "suggestionExtras":Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionExtrasArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    goto :goto_0

    .line 124
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :cond_7
    iget-object v6, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionExtrasArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getPosition()I

    move-result v7

    sget-object v8, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->EMPTY_EXTRA:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public getSuggestionIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mIconIdx:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

    return-object v0
.end method

.method public getSuggestionSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSubTitleIdx:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mTitleIdx:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 161
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mExtras:Landroid/os/Bundle;

    .line 162
    return-void
.end method

.method protected updateIndexes()V
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor<TC;>;"
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mTitleIdx:I

    .line 136
    const-string/jumbo v0, "subTitle"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mSubTitleIdx:I

    .line 137
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mIconIdx:I

    .line 138
    const-string v0, "actionUri"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;->mActionURIIdx:I

    .line 139
    return-void
.end method
