.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "MiuiBeautyProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/editor/photo/core/Metadata;",
        ">",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<TT;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;"
    }
.end annotation


# static fields
.field static sMiuiBeautify:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider$1;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider$1;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;->sMiuiBeautify:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;

    .line 66
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;->sMiuiBeautify:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<+",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<TT;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;, "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider<TT;>;"
    .local p1, "supported":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<+Lcom/miui/gallery/editor/photo/core/SdkProvider<TT;Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;>;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;, "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider<TT;>;"
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;, "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;, "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider<TT;>;"
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->onActivityCreate()V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;->notifyInitializeFinish()V

    .line 21
    return-void
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;, "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider;, "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyProvider<TT;>;"
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;-><init>()V

    return-object v0
.end method
