.class public Lcom/miui/gallery/cloud/RequestMultiItem;
.super Lcom/miui/gallery/cloud/RequestItemBase;
.source "RequestMultiItem.java"


# instance fields
.field public multiRequestItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "multiRequestItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/RequestItemBase;-><init>(I)V

    .line 10
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestMultiItem;->multiRequestItems:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestMultiItem;->init()V

    .line 12
    return-void
.end method


# virtual methods
.method public compareAndSetStatus(II)Z
    .locals 4
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    move-result v0

    .line 38
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestMultiItem;->multiRequestItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/RequestItemBase;

    .line 39
    .local v1, "item":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    goto :goto_0

    .line 42
    .end local v1    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_0
    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestMultiItem;->multiRequestItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    return-object v0
.end method

.method public getRequestLimitAGroup()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public isInSameAlbum(Lcom/miui/gallery/cloud/RequestItemBase;)Z
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public setStatus(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/RequestItemBase;->setStatus(I)V

    .line 30
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestMultiItem;->multiRequestItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/RequestItemBase;

    .line 31
    .local v0, "item":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/RequestItemBase;->setStatus(I)V

    goto :goto_0

    .line 33
    .end local v0    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_0
    return-void
.end method

.method public supportMultiRequest()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
