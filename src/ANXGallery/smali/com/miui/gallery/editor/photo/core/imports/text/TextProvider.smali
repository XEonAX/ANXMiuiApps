.class Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;
.super Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;
.source "TextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;
    }
.end annotation


# instance fields
.field private mDialogManager:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

.field private mTextBubbleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWaternarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 85
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextWaternarkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextWaternarkList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->notifyInitializeFinish()V

    return-void
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

    invoke-direct {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mDialogManager:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextBubbleList:Ljava/util/List;

    .line 64
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mDialogManager:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;->getDialogModelList()Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "dialogModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 67
    .local v0, "baseDialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;

    iget-object v4, v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v4, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;-><init>(SLjava/lang/String;Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V

    .line 68
    .local v3, "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextBubbleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "baseDialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .end local v3    # "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    :cond_0
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;

    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;Landroid/content/res/AssetManager;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/app/Application;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextBubbleList:Ljava/util/List;

    return-object v0
.end method

.method public listWatermark()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->mTextWaternarkList:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;->onActivityCreate()V

    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->initialize()V

    .line 44
    return-void
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;-><init>()V

    return-object v0
.end method
