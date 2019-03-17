.class public Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;
.super Ljava/lang/Object;
.source "CloudControlStrategyHelper.java"


# direct methods
.method public static getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "album-list"

    .line 40
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;

    .line 41
    .local v0, "albumsStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAlbumPatterns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "album-list"

    .line 47
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;

    .line 48
    .local v0, "albumsStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->getAlbumPatterns()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAlbumSortDateStrategy()Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "album-sort-date"

    .line 171
    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;

    return-object v0
.end method

.method public static getAlbumWhiteListPatterns()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "album-list"

    .line 54
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;

    .line 55
    .local v0, "albumsStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->getWhiteListPatterns()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAlbumsInWhiteList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "album-list"

    .line 33
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;

    .line 34
    .local v0, "albumsStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->getAlbumsInWhiteList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAssistantScenarioStrategy()Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "assistant-rules"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;

    return-object v0
.end method

.method public static getComponentPriority()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "components-list"

    sget-object v3, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    .line 89
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    move-result-object v0

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->getComponentPriority()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getCreationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "creation"

    .line 138
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    .line 139
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    if-eqz v0, :cond_0

    .end local v0    # "strategy":Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    :goto_0
    return-object v0

    .restart local v0    # "strategy":Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileSizeLimitStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "media_scanner"

    sget-object v3, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .line 200
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    move-result-object v0

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->getFileSizeStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v1

    return-object v1
.end method

.method public static getHiddenAlbums()Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "hidden-albums"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;

    return-object v0
.end method

.method public static getLocationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "location"

    .line 113
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;

    .line 114
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;
    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;

    move-result-object v0

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getPhotoPrintStrategy()Lcom/miui/gallery/cloudcontrol/strategies/PhotoPrintStrategy;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "photo-print"

    .line 133
    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/PhotoPrintStrategy;

    return-object v0
.end method

.method public static getPrintPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getPhotoPrintStrategy()Lcom/miui/gallery/cloudcontrol/strategies/PhotoPrintStrategy;

    move-result-object v0

    .line 145
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/PhotoPrintStrategy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/PhotoPrintStrategy;->getPhotoPrintPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSearchStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "search"

    .line 123
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    .line 124
    .local v0, "searchStrategy":Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;
    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method public static getServerReservedAlbumNamesStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "server-reserved-album-names"

    .line 177
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    .line 178
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    move-result-object v0

    .line 181
    :cond_0
    return-object v0
.end method

.method public static getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "server-unmodify-albums"

    .line 68
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    .line 69
    .local v0, "ret":Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->getAlbums()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    move-result-object v0

    .line 72
    :cond_1
    return-object v0
.end method

.method public static getShareComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "components-list"

    sget-object v3, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    .line 79
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    move-result-object v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->getShareComponents()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSpecialTypeMediaStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .locals 4

    .prologue
    .line 219
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "media_scanner"

    sget-object v3, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .line 222
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    move-result-object v0

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->getSpecialTypeMediaStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v1

    return-object v1
.end method

.method public static getStreamFileStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "media_scanner"

    sget-object v3, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .line 189
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    move-result-object v0

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->getStreamFileStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v1

    return-object v1
.end method

.method public static getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string/jumbo v2, "sync"

    .line 98
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    .line 99
    .local v0, "syncStrategy":Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;
    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public static getUploadSupportedFileTypes()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string/jumbo v2, "upload-supported-file-types"

    .line 209
    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;

    .line 210
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;
    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;

    move-result-object v0

    .line 213
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;->getSupportedFileTypeMap()Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method
