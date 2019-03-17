.class Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "DoodleProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDoodleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 22
    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;->mDoodleDataList:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->values()[Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 33
    .local v1, "doodleItem":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;-><init>(SLjava/lang/String;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;)V

    .line 34
    .local v0, "doodleConfig":Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;->mDoodleDataList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "doodleConfig":Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;
    .end local v1    # "doodleItem":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;->notifyInitializeFinish()V

    .line 37
    return-void
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;->mDoodleDataList:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->onActivityCreate()V

    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;->initialize()V

    .line 28
    return-void
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;-><init>()V

    return-object v0
.end method
