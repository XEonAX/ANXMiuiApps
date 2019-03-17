.class public Lcom/miui/gallery/editor/photo/core/imports/text/utils/TextTools;
.super Ljava/lang/Object;
.source "TextTools.java"


# direct methods
.method public static checkResourceExist(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "fonts":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;>;"
    const/16 v4, 0x11

    .line 21
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 25
    .local v0, "fontResource":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 27
    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setState(I)V

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isExtra()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 30
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 31
    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setState(I)V

    goto :goto_0
.end method

.method public static isZhCNLanguage()Z
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
