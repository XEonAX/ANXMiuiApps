.class Lcom/miui/gallery/card/CardManager$5;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/CardManager;->updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/miui/gallery/card/CardManager;

.field final synthetic val$card:Lcom/miui/gallery/card/Card;

.field final synthetic val$cardSha1s:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/CardManager;Ljava/util/List;Lcom/miui/gallery/card/Card;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/miui/gallery/card/CardManager$5;->this$0:Lcom/miui/gallery/card/CardManager;

    iput-object p2, p0, Lcom/miui/gallery/card/CardManager$5;->val$cardSha1s:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/gallery/card/CardManager$5;->val$card:Lcom/miui/gallery/card/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/CardManager$5;->handle(Landroid/database/Cursor;)Ljava/util/List;

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
    .line 354
    iget-object v6, p0, Lcom/miui/gallery/card/CardManager$5;->this$0:Lcom/miui/gallery/card/CardManager;

    iget-object v7, p0, Lcom/miui/gallery/card/CardManager$5;->val$cardSha1s:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/miui/gallery/card/CardManager;->access$400(Lcom/miui/gallery/card/CardManager;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 357
    .local v2, "imageFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    if-eqz p1, :cond_3

    .line 358
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v5, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v4, "newMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    new-instance v3, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-direct {v3, p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;-><init>(Landroid/database/Cursor;)V

    .line 363
    .local v3, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v3, v6}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V

    .line 365
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 368
    .end local v3    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :catchall_0
    move-exception v6

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 372
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v6, 0x5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 375
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/card/CardManager$5;->val$card:Lcom/miui/gallery/card/Card;

    const-string/jumbo v7, "updateCover"

    invoke-virtual {v6, v5, v7}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;Ljava/lang/String;)V

    .line 380
    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->isCoverMediaPathEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->downloadCoverThumb(Ljava/util/List;)V

    .line 383
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/card/CardManager$5;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v6, v0}, Lcom/miui/gallery/card/Card;->setCoverMediaFeatureItems(Ljava/util/List;)V

    .line 385
    .end local v0    # "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v1    # "i":I
    .end local v4    # "newMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v5    # "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    return-object v6
.end method
