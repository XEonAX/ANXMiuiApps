.class public Lcom/miui/gallery/data/LocalUbifocus;
.super Lcom/miui/gallery/data/Ubifocus;
.source "LocalUbifocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalUbifocus$SubFile;
    }
.end annotation


# direct methods
.method public static createInnerFileName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "oneSubFileName"    # Ljava/lang/String;
    .param p1, "subFocusIndex"    # I
    .param p2, "subUbiCount"    # I

    .prologue
    .line 216
    move-object v0, p0

    .line 217
    .local v0, "innerFileName":Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/gallery/data/LocalUbifocus;->isOuterFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPrefixIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, p2, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, ".y"

    .line 220
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    return-object v0

    .line 219
    :cond_1
    const-string v1, ".jpg"

    goto :goto_0
.end method

.method public static getMainFileIndex()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x2

    return v0
.end method

.method public static getSubUbiFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ubifocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUbifocusPatternIndex(Ljava/lang/String;)I
    .locals 1
    .param p0, "ubifocusFileName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "_UBIFOCUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getUbifocusPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ubifocusFileName"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPatternIndex(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 162
    const/4 v1, 0x0

    const-string v2, "_UBIFOCUS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getUbifocusPrefixIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ubifocusFileName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUbifocusSubFiles(Ljava/lang/String;Ljava/util/List;)I
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/LocalUbifocus$SubFile;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "subFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    const/4 v11, 0x0

    const/4 v13, -0x1

    .line 51
    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPrefixIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "prefix":Ljava/lang/String;
    const/4 v4, -0x1

    .line 54
    .local v4, "outerFileIndex":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 55
    invoke-static {v0, v6}, Lcom/miui/gallery/data/LocalUbifocus;->isOuterFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 56
    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/data/LocalUbifocus;->getSubUbiFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "subUbiFolder":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "pathPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v8, "subUbiJpgPath":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v9, "subUbiMapPath":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v10, 0x64

    if-ge v1, v10, :cond_2

    .line 61
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v10, ".jpg"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v10, Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    .line 65
    .local v2, "jpgExists":Z
    const/4 v3, 0x0

    .line 66
    .local v3, "mapExists":Z
    if-nez v2, :cond_0

    .line 67
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v10, ".y"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    .line 72
    :cond_0
    if-eqz v2, :cond_1

    .line 73
    new-instance v10, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v1}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    if-eqz v3, :cond_6

    .line 76
    new-instance v10, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v1}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "i":I
    .end local v2    # "jpgExists":Z
    .end local v3    # "mapExists":Z
    .end local v5    # "pathPrefix":Ljava/lang/String;
    .end local v7    # "subUbiFolder":Ljava/lang/String;
    .end local v8    # "subUbiJpgPath":Ljava/lang/StringBuilder;
    .end local v9    # "subUbiMapPath":Ljava/lang/StringBuilder;
    :cond_2
    if-eq v4, v13, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    iget-object v10, v10, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->mFilePath:Ljava/lang/String;

    const-string v12, ".y"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 91
    :cond_3
    const/4 v4, -0x1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 94
    :cond_4
    if-ne v4, v13, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Lcom/miui/gallery/util/Utils;->assertTrue(Z)V

    .line 95
    return v4

    .line 80
    .restart local v1    # "i":I
    .restart local v2    # "jpgExists":Z
    .restart local v3    # "mapExists":Z
    .restart local v5    # "pathPrefix":Ljava/lang/String;
    .restart local v7    # "subUbiFolder":Ljava/lang/String;
    .restart local v8    # "subUbiJpgPath":Ljava/lang/StringBuilder;
    .restart local v9    # "subUbiMapPath":Ljava/lang/StringBuilder;
    :cond_6
    if-ne v4, v13, :cond_2

    .line 81
    move v4, v1

    .line 82
    new-instance v10, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    invoke-direct {v10, p0, v4}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "jpgExists":Z
    .end local v3    # "mapExists":Z
    .end local v5    # "pathPrefix":Ljava/lang/String;
    .end local v7    # "subUbiFolder":Ljava/lang/String;
    .end local v8    # "subUbiJpgPath":Ljava/lang/StringBuilder;
    .end local v9    # "subUbiMapPath":Ljava/lang/StringBuilder;
    :cond_7
    move v10, v11

    .line 94
    goto :goto_2
.end method

.method public static getUbifocusSubFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/LocalUbifocus$SubFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    .local v0, "subFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    invoke-static {p0, v0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusSubFiles(Ljava/lang/String;Ljava/util/List;)I

    .line 101
    return-object v0
.end method

.method public static isOuterFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPrefixIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/miui/gallery/data/LocalUbifocus;->isOuterFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isOuterFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUbifocusImage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusPrefixIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/gallery/data/LocalUbifocus;->isOuterFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
