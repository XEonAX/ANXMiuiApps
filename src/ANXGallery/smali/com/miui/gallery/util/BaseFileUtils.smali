.class public Lcom/miui/gallery/util/BaseFileUtils;
.super Lmiui/os/FileUtils;
.source "BaseFileUtils.java"


# direct methods
.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folder"    # Ljava/lang/String;
    .param p1, "leaf"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, ""

    .line 17
    .local v0, "separator":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
