.class public Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "GroupedSuggestionCursor.java"

# interfaces
.implements Lcom/miui/gallery/search/core/GroupList;
.implements Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;",
        ">",
        "Landroid/database/AbstractCursor;",
        "Lcom/miui/gallery/search/core/GroupList",
        "<TS;",
        "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
        ">;",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
    }
.end annotation


# instance fields
.field protected mCachedCount:Ljava/lang/Integer;

.field private mExtras:Landroid/os/Bundle;

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field private mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<TS;>;"
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 22
    new-instance v2, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor$1;-><init>(Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)V

    iput-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 41
    iput-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mCachedCount:Ljava/lang/Integer;

    .line 44
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mExtras:Landroid/os/Bundle;

    .line 65
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 67
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty section value is not acceptable!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 73
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v3}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 76
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->setSection(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 77
    return-void

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mPos:I

    return p1
.end method

.method private setSection(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    .local p1, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eq v0, p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkGroupPosition(I)V
    .locals 6
    .param p1, "groupIndex"    # I

    .prologue
    .line 329
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Invalid groupIndex %d, total group count %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 330
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 254
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 255
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->close()V

    goto :goto_0

    .line 257
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 258
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 259
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 247
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 248
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->deactivate()V

    goto :goto_0

    .line 250
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 228
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 312
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->checkGroupPosition(I)V

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 139
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mCachedCount:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mCachedCount:Ljava/lang/Integer;

    .line 146
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mCachedCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 211
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 205
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 1
    .param p1, "groupIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->checkGroupPosition(I)V

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 193
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntentActionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 199
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 187
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 181
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 216
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 222
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(II)V
    .locals 3
    .param p1, "groupIndex"    # I
    .param p2, "childIndex"    # I

    .prologue
    .line 80
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->checkGroupPosition(I)V

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    add-int/2addr v1, p2

    .line 86
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->moveToPosition(I)Z

    .line 87
    return-void
.end method

.method public onMove(II)Z
    .locals 5
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 152
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 153
    const/4 v2, 0x0

    .line 155
    .local v2, "sectionStartPos":I
    const/4 v0, -0x1

    .line 156
    .local v0, "groupIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroupCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getChildrenCount(I)I

    move-result v3

    .line 158
    .local v3, "tempChildrenCount":I
    add-int v4, v2, v3

    if-ge p2, v4, :cond_1

    .line 159
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 160
    move v0, v1

    .line 168
    .end local v3    # "tempChildrenCount":I
    :cond_0
    if-ltz v0, :cond_2

    .line 169
    sub-int v4, p2, v2

    invoke-virtual {p0, v0, v4}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->onMoveGroup(II)Z

    move-result v4

    .line 171
    :goto_1
    return v4

    .line 164
    .restart local v3    # "tempChildrenCount":I
    :cond_1
    add-int/2addr v2, v3

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v3    # "tempChildrenCount":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onMoveGroup(II)Z
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 175
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 263
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 264
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 266
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_0
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 279
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 280
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 282
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_0
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 283
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 295
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 296
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 301
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :goto_0
    return v1

    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v1

    goto :goto_0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 337
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mExtras:Landroid/os/Bundle;

    .line 338
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 271
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 272
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 274
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_0
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 275
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 287
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 288
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 290
    .end local v0    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    :cond_0
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    return-void
.end method
