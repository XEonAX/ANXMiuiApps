.class public Lcom/miui/gallery/video/editor/manager/SmartEffectManager;
.super Ljava/lang/Object;
.source "SmartEffectManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initDataWithTemplate(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/SmartEffect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    .local p2, "smartEffects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/SmartEffect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 14
    .local v4, "template":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v7

    invoke-interface {v7}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v0

    .line 16
    .local v0, "assetIdx":I
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v7

    invoke-interface {v7}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "assetName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "id":Ljava/lang/String;
    const/4 v5, 0x1

    .line 19
    .local v5, "uninstall":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/video/editor/SmartEffect;

    .line 21
    .local v3, "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetId()I

    move-result v8

    if-ne v0, v8, :cond_1

    .line 23
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Lcom/miui/gallery/video/editor/SmartEffect;->setDownloadState(I)V

    .line 24
    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/SmartEffect;->setTemplate(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;)V

    .line 25
    const/4 v5, 0x0

    .line 29
    .end local v3    # "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    :cond_2
    if-eqz v5, :cond_0

    .line 30
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->uninstallPackageById(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v0    # "assetIdx":I
    .end local v1    # "assetName":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "template":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    .end local v5    # "uninstall":Z
    :cond_3
    return-void
.end method

.method public updateDataWithTemplate(Ljava/util/List;Lcom/miui/gallery/video/editor/SmartEffect;)V
    .locals 6
    .param p2, "smartEffect"    # Lcom/miui/gallery/video/editor/SmartEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;",
            "Lcom/miui/gallery/video/editor/SmartEffect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 46
    .local v3, "template":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v5

    invoke-interface {v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v0

    .line 50
    .local v0, "assetIdx":I
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v5

    invoke-interface {v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "assetName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetId()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 53
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/miui/gallery/video/editor/SmartEffect;->setDownloadState(I)V

    .line 54
    invoke-virtual {p2, v3}, Lcom/miui/gallery/video/editor/SmartEffect;->setTemplate(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;)V

    goto :goto_0
.end method
