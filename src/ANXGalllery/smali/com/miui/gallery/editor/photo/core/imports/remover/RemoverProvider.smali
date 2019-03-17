.class public Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "RemoverProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 50
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 19
    return-void
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0c0413

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02019f

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;-><init>(SLjava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0c0414

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201a0

    invoke-direct {v1, v5, v2, v3, v5}, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;-><init>(SLjava/lang/String;II)V

    aput-object v1, v0, v5

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->onActivityCreate()V

    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;->notifyInitializeFinish()V

    .line 25
    return-void
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;-><init>()V

    return-object v0
.end method
