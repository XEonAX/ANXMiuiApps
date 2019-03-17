.class public Lmiui/os/ExtraFileUtils;
.super Ljava/lang/Object;
.source "ExtraFileUtils.java"


# direct methods
.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string v1, ""

    .line 67
    :goto_0
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, ""

    .line 78
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 76
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string p0, ""

    .line 130
    .end local p0    # "filePath":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 126
    .end local v0    # "index":I
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 127
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 128
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string p0, ""

    .line 97
    .end local p0    # "fileName":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 93
    .end local v0    # "index":I
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 94
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
