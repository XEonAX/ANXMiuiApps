.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
.super Lcom/miui/gallery/editor/photo/core/RenderData;
.source "FilterRenderData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/Metadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/RenderData;-><init>(Landroid/os/Parcel;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    const-class v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/Metadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "effects":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/Metadata;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderData;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 5

    .prologue
    .line 36
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 37
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;-><init>()V

    .line 46
    :goto_0
    return-object v2

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 39
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    invoke-interface {v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v2

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 43
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    invoke-interface {v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_2
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;

    invoke-direct {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;-><init>(Ljava/util/List;)V

    .line 46
    .local v2, "originalFilterGroup":Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPortraitBeauty()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;

    .line 53
    .local v0, "filterBeautify":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;->isPortraitBeauty()Z

    move-result v1

    .line 55
    .end local v0    # "filterBeautify":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;
    :cond_0
    return v1
.end method

.method protected onMerge(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2
    .param p1, "other"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 23
    instance-of v1, p1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    if-eqz v1, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .local v0, "effects":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/Metadata;>;"
    check-cast p1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    .end local p1    # "other":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 28
    .end local v0    # "effects":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/Metadata;>;"
    :goto_0
    return-object v1

    .restart local p1    # "other":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/RenderData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->mEffects:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 67
    return-void
.end method
