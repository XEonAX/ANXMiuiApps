.class public Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "CategoryDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    const/4 v4, 0x1

    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 53
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 54
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 55
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 21
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDataList:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 23
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 24
    .local v1, "width":I
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 25
    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/StickerData;

    invoke-virtual {p1, v0, p2}, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->bind(Lcom/miui/gallery/editor/photo/core/common/model/StickerData;I)V

    .line 46
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;

    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04014d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;-><init>(Landroid/view/View;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    return-object v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->mDataList:Ljava/util/List;

    .line 33
    return-void
.end method
