.class public Lcom/miui/gallery/video/editor/factory/SmartEffectFactory;
.super Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;
.source "SmartEffectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalTemplateEntities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/LocalResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    return-object v0
.end method

.method public getTemplateDir(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/video/editor/config/VideoEditorConfig;->SMART_EFFECT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnzipPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/video/editor/config/VideoEditorConfig;->SMART_EFFECT_PATH:Ljava/lang/String;

    return-object v0
.end method
