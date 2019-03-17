.class public Lcom/miui/gallery/loader/StorageSetLoader;
.super Lcom/miui/gallery/loader/BaseLoader;
.source "StorageSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;,
        Lcom/miui/gallery/loader/StorageSetLoader$MFileComparator;,
        Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;
    }
.end annotation


# instance fields
.field private mFolderPath:Ljava/lang/String;

.field private mInitFilePath:Ljava/lang/String;

.field private mInitUri:Landroid/net/Uri;

.field private mLimitUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/BaseLoader;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitUri:Landroid/net/Uri;

    .line 46
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iput-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mFolderPath:Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v2, "com.miui.gallery.extra.photo_items"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    .line 51
    const-string v2, "com.miui.gallery.extra.preview_single_item"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .local v1, "previewSingleItem":Z
    if-eqz v1, :cond_2

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/loader/StorageSetLoader;->isLimitedUris()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mFolderPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/miui/gallery/loader/StorageSetLoader;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/loader/StorageSetLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/StorageSetLoader;->isSupportFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/loader/StorageSetLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/loader/StorageSetLoader;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/loader/StorageSetLoader;->isLimitedUris()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/loader/StorageSetLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/loader/StorageSetLoader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isLimitedUris()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private isSupportFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/loader/StorageSetLoader;->isSupportType(Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, "support":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeTypeByParseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/loader/StorageSetLoader;->isSupportType(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 116
    :cond_0
    return v0
.end method

.method private isSupportType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/gallery/model/BaseDataSet;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 69
    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/miui/gallery/loader/StorageSetLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/miui/gallery/util/ContentUtils;->getValidFilePathForContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    .line 71
    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/miui/gallery/loader/StorageSetLoader;->isLimitedUris()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .restart local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 80
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    const-string v8, "file"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/gallery/loader/StorageSetLoader;->isSupportFile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v2    # "path":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mFolderPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;

    invoke-direct {v8, p0, v9}, Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;-><init>(Lcom/miui/gallery/loader/StorageSetLoader;Lcom/miui/gallery/loader/StorageSetLoader$1;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 89
    .local v3, "tempFiles":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 91
    .local v4, "start":J
    new-instance v7, Lcom/miui/gallery/loader/StorageSetLoader$MFileComparator;

    invoke-direct {v7, v9}, Lcom/miui/gallery/loader/StorageSetLoader$MFileComparator;-><init>(Lcom/miui/gallery/loader/StorageSetLoader$1;)V

    invoke-static {v3, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 92
    const-string v7, "StorageSetLoader"

    const-string v8, "file sort cost[%d], size[%d]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    array-length v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 103
    .end local v3    # "tempFiles":[Ljava/io/File;
    .end local v4    # "start":J
    :cond_3
    :goto_1
    new-instance v7, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;

    iget-object v8, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    invoke-direct {v7, p0, v0, v8}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;-><init>(Lcom/miui/gallery/loader/StorageSetLoader;Ljava/util/List;Ljava/lang/String;)V

    return-object v7

    .line 94
    .restart local v3    # "tempFiles":[Ljava/io/File;
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 96
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/loader/StorageSetLoader;->mInitFilePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "initialFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .restart local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/loader/StorageSetLoader;->loadInBackground()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    return-object v0
.end method
