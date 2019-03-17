.class public Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "ListSuggestionCursor.java"

# interfaces
.implements Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
        ">",
        "Landroid/database/AbstractCursor;",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
    }
.end annotation


# static fields
.field protected static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private EMPTY_COLUMNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field protected final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field protected final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "subTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "actionUri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V
    .locals 1
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
    .line 47
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<TS;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<TS;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mSuggestions:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->EMPTY_COLUMNS:Ljava/util/ArrayList;

    .line 32
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtras:Landroid/os/Bundle;

    .line 51
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 53
    if-nez p2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0, p3}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getExtraColumns()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtraColumns:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v0

    .line 207
    .local v0, "extraColumns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtraColumns:Ljava/util/ArrayList;

    .line 213
    .end local v0    # "extraColumns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtraColumns:Ljava/util/ArrayList;

    return-object v1

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    .restart local v0    # "extraColumns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->EMPTY_COLUMNS:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtraColumns:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 172
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const-string/jumbo v0, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 174
    :cond_0
    const-string/jumbo v0, "subTitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "actionUri"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    const/4 v0, 0x2

    goto :goto_0

    .line 178
    :cond_2
    const-string v0, "icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const/4 v0, 0x3

    goto :goto_0

    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getExtraColumns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-direct {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getExtraColumns()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->EMPTY_COLUMNS:Ljava/util/ArrayList;

    if-eq v1, v2, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    .line 156
    invoke-direct {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getExtraColumns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v0, "allColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-direct {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getExtraColumns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 161
    .end local v0    # "allColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mSuggestions:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 244
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 239
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 229
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getIntentActionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 234
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    return-object v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 224
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 187
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    packed-switch p1, :pswitch_data_0

    .line 197
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    sub-int v0, p1, v1

    .line 199
    .local v0, "extraColumn":I
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getExtraColumns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v0    # "extraColumn":I
    :goto_0
    return-object v1

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getIntentActionURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 249
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 218
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtraColumns:Ljava/util/ArrayList;

    .line 219
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 254
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mExtras:Landroid/os/Bundle;

    .line 255
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 264
    .local p0, "this":Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Suggestions = %s;"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;->mSuggestions:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
