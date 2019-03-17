.class final Lcom/miui/gallery/card/CardUtil$1;
.super Ljava/lang/Object;
.source "CardUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/CardUtil;->getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mediaCoverServerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/card/CardUtil$1;->val$mediaCoverServerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/CardUtil$1;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_4

    .line 53
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/card/CardUtil$1;->val$mediaCoverServerIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v2, v4, [Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 55
    .local v2, "mediaFeatureItems1":[Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    new-instance v1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-direct {v1, p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;-><init>(Landroid/database/Cursor;)V

    .line 57
    .local v1, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/miui/gallery/card/CardUtil$1;->val$mediaCoverServerIds:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getServerId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 59
    aput-object v1, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    .end local v1    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v1, v2, v4

    .line 69
    .restart local v1    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    if-eqz v1, :cond_3

    .line 70
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    .end local v1    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :catchall_0
    move-exception v4

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 75
    .end local v2    # "mediaFeatureItems1":[Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_4
    const/4 v3, 0x0

    :cond_5
    return-object v3
.end method
