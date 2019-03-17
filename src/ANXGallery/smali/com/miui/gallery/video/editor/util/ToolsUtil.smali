.class public Lcom/miui/gallery/video/editor/util/ToolsUtil;
.super Ljava/lang/Object;
.source "ToolsUtil.java"


# direct methods
.method public static getTrimedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, ""

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoFrameRate(Ljava/lang/String;)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    .line 77
    :goto_0
    return v3

    .line 59
    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 60
    .local v1, "extractor":Landroid/media/MediaExtractor;
    const/4 v3, 0x0

    .line 62
    .local v3, "frameRate":I
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    .line 64
    .local v6, "numTracks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 65
    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 66
    .local v2, "format":Landroid/media/MediaFormat;
    const-string v7, "mime"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "mime":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "video/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "frame-rate"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    const-string v7, "frame-rate"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 75
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mime":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_0

    .line 64
    .restart local v2    # "format":Landroid/media/MediaFormat;
    .restart local v5    # "mime":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v5    # "mime":Ljava/lang/String;
    .end local v6    # "numTracks":I
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v7, "ToolsUtil"

    const-string v8, "getVideoFrameRate: %s"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    throw v7
.end method

.method public static hideView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_0
    return-void
.end method

.method public static isRTLDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseIntFromStr(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ToolsUtil"

    const-string v2, "parseIntFromStr exception: %s "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_0
    return-void
.end method
