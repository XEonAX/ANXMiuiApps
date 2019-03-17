.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;
.super Lcom/miui/gallery/editor/photo/core/RenderData;
.source "MiuiBeautyRenderData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;
    }
.end annotation


# instance fields
.field public mBeautyParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderData;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    .line 16
    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;-><init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;Ljava/util/Map;)V

    .line 18
    .local v0, "beautyParams":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .end local v0    # "beautyParams":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public addParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;-><init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
