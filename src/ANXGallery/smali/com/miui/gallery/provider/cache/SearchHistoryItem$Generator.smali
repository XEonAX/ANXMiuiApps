.class public Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;
.super Ljava/lang/Object;
.source "SearchHistoryItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$Generator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Generator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/provider/cache/CacheItem$Generator",
        "<",
        "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;->from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .locals 3
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;->generate()Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    move-result-object v0

    .line 164
    .local v0, "suggestion":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    invoke-virtual {p0, v0, p3}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;->update(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Landroid/content/ContentValues;)V

    .line 165
    sget-object v1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    .line 166
    return-object v0
.end method

.method public from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;->generate()Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    move-result-object v0

    .line 141
    .local v0, "suggestion":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->title:Ljava/lang/String;

    .line 142
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->subTitle:Ljava/lang/String;

    .line 143
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    .line 144
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->icon:Ljava/lang/String;

    .line 145
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    .line 146
    return-object v0
.end method

.method public generate()Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryItem;-><init>()V

    return-object v0
.end method

.method public getFilter(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p3, "rawArguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/gallery/provider/cache/Filter$Comparator;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->access$100()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic update(Lcom/miui/gallery/provider/cache/CacheItem;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;->update(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Landroid/content/ContentValues;)V

    return-void
.end method

.method public update(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->title:Ljava/lang/String;

    .line 174
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->subTitle:Ljava/lang/String;

    .line 177
    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    .line 180
    :cond_2
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->icon:Ljava/lang/String;

    .line 183
    :cond_3
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    .line 186
    :cond_4
    return-void
.end method
