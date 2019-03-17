.class public Lcom/miui/gallery/video/editor/model/VedioEditorModuleAdapter;
.super Ljava/lang/Object;
.source "VedioEditorModuleAdapter.java"


# direct methods
.method public static loadAudioData(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "factory"    # Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/LocalResource;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/LocalAudio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/LocalAudio;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/model/LocalResource;

    .line 21
    .local v1, "data":Lcom/miui/gallery/video/editor/model/LocalResource;
    if-eqz v1, :cond_0

    .line 22
    new-instance v3, Lcom/miui/gallery/video/editor/LocalAudio;

    invoke-direct {v3, v1}, Lcom/miui/gallery/video/editor/LocalAudio;-><init>(Lcom/miui/gallery/video/editor/model/LocalResource;)V

    .line 23
    .local v3, "localAudio":Lcom/miui/gallery/video/editor/LocalAudio;
    if-eqz p0, :cond_1

    instance-of v5, p0, Lcom/miui/gallery/video/editor/factory/AudioFactory;

    if-eqz v5, :cond_1

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/miui/gallery/video/editor/model/LocalResource;->id:J

    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getTemplateDir(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/LocalAudio;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "file":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Lcom/miui/gallery/video/editor/LocalAudio;->setDownloadState(I)V

    .line 27
    invoke-virtual {v3, v2}, Lcom/miui/gallery/video/editor/LocalAudio;->setSrcPath(Ljava/lang/String;)V

    .line 30
    .end local v2    # "file":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    .end local v1    # "data":Lcom/miui/gallery/video/editor/model/LocalResource;
    .end local v3    # "localAudio":Lcom/miui/gallery/video/editor/LocalAudio;
    :cond_2
    return-object v0
.end method

.method public static loadSmartEffects(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/LocalResource;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/SmartEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/SmartEffect;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/model/LocalResource;

    .line 41
    .local v1, "model":Lcom/miui/gallery/video/editor/model/LocalResource;
    if-eqz v1, :cond_0

    .line 42
    new-instance v3, Lcom/miui/gallery/video/editor/SmartEffect;

    invoke-direct {v3, v1}, Lcom/miui/gallery/video/editor/SmartEffect;-><init>(Lcom/miui/gallery/video/editor/model/LocalResource;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v1    # "model":Lcom/miui/gallery/video/editor/model/LocalResource;
    :cond_1
    return-object v0
.end method

.method public static loadWaterMarks(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/LocalResource;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/TextStyle;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/model/LocalResource;

    .line 54
    .local v1, "model":Lcom/miui/gallery/video/editor/model/LocalResource;
    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/model/LocalResource;->isInternational()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    :cond_1
    new-instance v3, Lcom/miui/gallery/video/editor/TextStyle;

    invoke-direct {v3, v1}, Lcom/miui/gallery/video/editor/TextStyle;-><init>(Lcom/miui/gallery/video/editor/model/LocalResource;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v1    # "model":Lcom/miui/gallery/video/editor/model/LocalResource;
    :cond_2
    return-object v0
.end method
