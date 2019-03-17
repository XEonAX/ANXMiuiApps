.class public Lcom/miui/gallery/video/editor/manager/WaterMarkManager;
.super Ljava/lang/Object;
.source "WaterMarkManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initDataWithTemplate([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p2, "textStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/TextStyle;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 30
    :cond_0
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 13
    aget-object v1, p1, v0

    .line 14
    .local v1, "id":Ljava/lang/String;
    const/4 v3, 0x1

    .line 15
    .local v3, "uninstall":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/TextStyle;

    .line 17
    .local v2, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/TextStyle;->getAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/TextStyle;->getAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    .line 20
    invoke-virtual {v2, v1}, Lcom/miui/gallery/video/editor/TextStyle;->setTemplateId(Ljava/lang/String;)V

    .line 21
    const/4 v3, 0x0

    .line 25
    .end local v2    # "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    :cond_3
    if-eqz v3, :cond_4

    .line 26
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->uninstallPackageById(Ljava/lang/String;)V

    .line 12
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateDataWithTemplate([Ljava/lang/String;Lcom/miui/gallery/video/editor/TextStyle;)V
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "textStyle"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 40
    aget-object v1, p1, v0

    .line 41
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/TextStyle;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/TextStyle;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    .line 43
    invoke-virtual {p2, v1}, Lcom/miui/gallery/video/editor/TextStyle;->setTemplateId(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
