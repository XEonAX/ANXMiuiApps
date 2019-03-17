.class final Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider$1;
.super Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;
.source "MiuiBeautyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 0

    .prologue
    .line 42
    .local p1, "supported":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<+Lcom/miui/gallery/editor/photo/core/SdkProvider<Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;>;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;>;"
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyManager;->getBeautyEffects()[Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    move-result-object v3

    .line 47
    .local v3, "values":[Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 48
    aget-object v0, v3, v1

    .line 49
    .local v0, "effect":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;

    iget v5, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mOrdinal:I

    int-to-short v5, v5

    iget-object v6, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mName:Ljava/lang/String;

    iget-object v7, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-direct {v4, v5, v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;-><init>(SLjava/lang/String;Lcom/miui/filtersdk/beauty/BeautyParameterType;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "effect":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    :cond_0
    return-object v2
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateTranslator()Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;->onCreateTranslator()Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "sMiuiBeautify"

    return-object v0
.end method
