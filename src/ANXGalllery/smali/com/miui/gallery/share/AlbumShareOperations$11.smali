.class final Lcom/miui/gallery/share/AlbumShareOperations$11;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->requestUserInfo(Ljava/util/List;)Lcom/miui/gallery/share/AsyncResult;
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
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/share/UserInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$userIds:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$11;->val$userIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/UserInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1097
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1098
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$11;->val$userIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1099
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$11;->val$userIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1100
    .local v0, "end":I
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$11;->val$userIds:Ljava/util/List;

    invoke-interface {v5, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 1101
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/miui/gallery/share/AlbumShareOperations;->access$1000(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1102
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    if-eqz v3, :cond_0

    .line 1103
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1098
    :cond_0
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 1107
    .end local v0    # "end":I
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/UserInfo;>;"
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

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
    .line 1092
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$11;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
