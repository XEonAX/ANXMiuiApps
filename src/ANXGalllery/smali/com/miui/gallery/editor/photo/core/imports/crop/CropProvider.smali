.class public Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "CropProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/CropData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/CropData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 68
    return-void
.end method

.method protected constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    .line 21
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 46
    const/16 v0, 0x8

    new-array v9, v0, [Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "free"

    const v3, 0x7f0200ce

    const v4, 0x7f0c037c

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v5

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "original"

    const v3, 0x7f0200d0

    const v4, 0x7f0c037e

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "screen"

    const v3, 0x7f0200d2

    const v4, 0x7f0c0380

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v10

    new-instance v2, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v4, "1:1"

    const v5, 0x7f0200ca

    const v6, 0x7f0c0378

    move v3, v10

    move v7, v1

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v2, v9, v11

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "3:4"

    const v3, 0x7f0200cb

    const v4, 0x7f0c0379

    move v1, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v12

    const/4 v7, 0x5

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "4:3"

    const v3, 0x7f0200cc

    const v4, 0x7f0c037a

    move v1, v10

    move v5, v12

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "16:9"

    const v3, 0x7f0200c9

    const v4, 0x7f0c0377

    const/16 v5, 0x10

    const/16 v6, 0x9

    move v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x7

    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    const-string v2, "9:16"

    const v3, 0x7f0200cd

    const v4, 0x7f0c037b

    const/16 v5, 0x9

    const/16 v6, 0x10

    move v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;-><init>(SLjava/lang/String;IIII)V

    aput-object v0, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;->mDataList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/CropData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->onActivityCreate()V

    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;->notifyInitializeFinish()V

    .line 28
    return-void
.end method

.method public bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;-><init>()V

    return-object v0
.end method
