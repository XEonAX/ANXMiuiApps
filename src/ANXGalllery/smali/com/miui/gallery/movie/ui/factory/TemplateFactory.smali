.class public Lcom/miui/gallery/movie/ui/factory/TemplateFactory;
.super Ljava/lang/Object;
.source "TemplateFactory.java"


# direct methods
.method public static getLocalTemplateEntities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/TemplateResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/TemplateResource;>;"
    new-instance v1, Lcom/miui/gallery/movie/entity/TemplateResource;

    invoke-direct {v1}, Lcom/miui/gallery/movie/entity/TemplateResource;-><init>()V

    .line 21
    .local v1, "templateNormal":Lcom/miui/gallery/movie/entity/TemplateResource;
    const v2, 0x7f0201e8

    iput v2, v1, Lcom/miui/gallery/movie/entity/TemplateResource;->imageId:I

    .line 22
    const v2, 0x7f0c02db

    iput v2, v1, Lcom/miui/gallery/movie/entity/TemplateResource;->stringId:I

    .line 23
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/gallery/movie/entity/TemplateResource;->isPackageAssets:Z

    .line 24
    const-string v2, "movieAssetsNormal"

    iput-object v2, v1, Lcom/miui/gallery/movie/entity/TemplateResource;->nameKey:Ljava/lang/String;

    .line 25
    const/16 v2, 0x11

    iput v2, v1, Lcom/miui/gallery/movie/entity/TemplateResource;->downloadState:I

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v0
.end method

.method public static getTemplateDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/movie/MovieConfig;->sTemplateDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
