.class public Lcom/miui/gallery/movie/utils/MovieStatUtils;
.super Ljava/lang/Object;
.source "MovieStatUtils.java"


# direct methods
.method public static statDownload(Lcom/miui/gallery/movie/entity/MovieResource;)V
    .locals 3
    .param p0, "resource"    # Lcom/miui/gallery/movie/entity/MovieResource;

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getStatTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getStatNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "movie"

    const-string v2, "movie_download"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public static statDownloadResult(Lcom/miui/gallery/movie/entity/MovieResource;Z)V
    .locals 3
    .param p0, "resource"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p1, "success"    # Z

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getStatTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getStatNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v2, "success"

    if-eqz p1, :cond_0

    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "movie"

    const-string v2, "movie_download_result"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    return-void

    .line 46
    :cond_0
    const-string v1, "-1"

    goto :goto_0
.end method

.method public static statDurationClick(Lcom/miui/gallery/movie/entity/MovieInfo;ZZ)V
    .locals 3
    .param p0, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;
    .param p1, "isPreviewPager"    # Z
    .param p2, "isShortVideo"    # Z

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "size"

    iget-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v2, "pager"

    if-eqz p1, :cond_0

    const-string v1, "preview"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "duration"

    if-eqz p2, :cond_1

    const-string/jumbo v1, "short"

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "movie"

    const-string v2, "movie_duration_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    return-void

    .line 86
    :cond_0
    const-string v1, "editor"

    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "long"

    goto :goto_1
.end method

.method public static statEditorMove(I)V
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "size"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "movie"

    const-string v2, "movie_editor_move"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    return-void
.end method

.method public static statEnter(IZ)V
    .locals 3
    .param p0, "size"    # I
    .param p1, "isStory"    # Z

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "size"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v2, "from"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "story"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "movie"

    const-string v2, "movie_enter"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    return-void

    .line 29
    :cond_0
    const-string v1, "movieAssetsNormal"

    goto :goto_0
.end method

.method public static statItemChoose(Lcom/miui/gallery/movie/entity/MovieResource;)V
    .locals 3
    .param p0, "resource"    # Lcom/miui/gallery/movie/entity/MovieResource;

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getStatTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getStatNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "movie"

    const-string v2, "movie_item_choose"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method public static statPreviewEnterEditPage(Z)V
    .locals 3
    .param p0, "isShortVideo"    # Z

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "duration"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "short"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "movie"

    const-string v2, "movie_editor_preview_edit_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    return-void

    .line 101
    :cond_0
    const-string v1, "long"

    goto :goto_0
.end method

.method public static statPreviewPlayBtn(Z)V
    .locals 3
    .param p0, "isShortVideo"    # Z

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "duration"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "short"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "movie"

    const-string v2, "movie_editor_preview_play_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    return-void

    .line 108
    :cond_0
    const-string v1, "long"

    goto :goto_0
.end method

.method public static statSaveClick(ZLcom/miui/gallery/movie/entity/MovieInfo;)V
    .locals 3
    .param p0, "isPreviewPager"    # Z
    .param p1, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "pager"

    if-eqz p0, :cond_0

    const-string v1, "preview"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "template"

    iget-object v2, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "audio"

    iget-object v2, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "movie"

    const-string v2, "movie_save_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    return-void

    .line 61
    :cond_0
    const-string v1, "editor"

    goto :goto_0
.end method

.method public static statSaveResult(Ljava/lang/String;)V
    .locals 3
    .param p0, "success"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "movie"

    const-string v2, "movie_save_result"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public static statShareClick(Lcom/miui/gallery/movie/entity/MovieInfo;)V
    .locals 3
    .param p0, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "template"

    iget-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "audio"

    iget-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "movie"

    const-string v2, "movie_share_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/movie/utils/MovieSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method
