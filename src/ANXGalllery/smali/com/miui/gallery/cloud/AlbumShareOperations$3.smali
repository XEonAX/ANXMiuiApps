.class final Lcom/miui/gallery/cloud/AlbumShareOperations$3;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/AlbumShareOperations;->requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/util/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/util/AsyncResult",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/cloud/UserInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$userIds:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$3;->val$userIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/util/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/AsyncResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/UserInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 431
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$3;->val$userIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 432
    iget-object v5, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$3;->val$userIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 433
    .local v0, "end":I
    iget-object v5, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$3;->val$userIds:Ljava/util/List;

    invoke-interface {v5, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 434
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/miui/gallery/cloud/AlbumShareOperations;->access$500(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 435
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    if-eqz v3, :cond_0

    .line 436
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 440
    .end local v0    # "end":I
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/UserInfo;>;"
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lcom/miui/gallery/util/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AlbumShareOperations$3;->call()Lcom/miui/gallery/util/AsyncResult;

    move-result-object v0

    return-object v0
.end method
