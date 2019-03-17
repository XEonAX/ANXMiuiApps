.class Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;
.super Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;
.source "CategoryData.java"


# instance fields
.field stickerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ISLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "priority"    # S
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p4, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;-><init>(JSLjava/lang/String;)V

    .line 13
    iput-object p4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;->stickerList:Ljava/util/List;

    .line 14
    return-void
.end method
