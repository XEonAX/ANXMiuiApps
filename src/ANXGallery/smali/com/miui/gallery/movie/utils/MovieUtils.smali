.class public Lcom/miui/gallery/movie/utils/MovieUtils;
.super Ljava/lang/Object;
.source "MovieUtils.java"


# direct methods
.method public static checkResourceExist(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/movie/entity/MovieResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "movieResourceList":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/movie/entity/MovieResource;>;"
    if-nez p0, :cond_1

    .line 53
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/entity/MovieResource;

    .line 49
    .local v0, "movieResource":Lcom/miui/gallery/movie/entity/MovieResource;
    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const/16 v2, 0x11

    iput v2, v0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    goto :goto_0
.end method

.method public static getImageFromClipData(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 28
    .local v0, "clipData":Landroid/content/ClipData;
    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/miui/gallery/movie/utils/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Lcom/miui/gallery/movie/entity/ImageEntity;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/miui/gallery/movie/entity/ImageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 32
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 34
    .local v2, "item":Landroid/content/ClipData$Item;
    if-eqz v2, :cond_2

    .line 35
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/miui/gallery/movie/utils/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .restart local v4    # "path":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "sha1":Ljava/lang/String;
    new-instance v6, Lcom/miui/gallery/movie/entity/ImageEntity;

    invoke-direct {v6, v4, v5}, Lcom/miui/gallery/movie/entity/ImageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "sha1":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static goDetail(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
