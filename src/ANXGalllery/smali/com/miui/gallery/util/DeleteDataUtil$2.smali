.class final Lcom/miui/gallery/util/DeleteDataUtil$2;
.super Ljava/lang/Object;
.source "DeleteDataUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/DeleteDataUtil;->deleteSyncedFile(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$deletingFiles:Ljava/util/ArrayList;

.field final synthetic val$tmp:[Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;[Ljava/io/File;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$tmp:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/DeleteDataUtil$2;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 231
    if-eqz p1, :cond_5

    .line 232
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "microThumbFilePath":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "thumbnailFilePath":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "localFilePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 238
    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_1
    if-eqz v2, :cond_2

    .line 241
    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_2
    if-eqz v0, :cond_3

    .line 244
    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_4

    .line 248
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$tmp:[Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 250
    sget-object v3, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    iget-object v4, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$tmp:[Ljava/io/File;

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 251
    iget-object v3, p0, Lcom/miui/gallery/util/DeleteDataUtil$2;->val$deletingFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 255
    .end local v0    # "localFilePath":Ljava/lang/String;
    .end local v1    # "microThumbFilePath":Ljava/lang/String;
    .end local v2    # "thumbnailFilePath":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method
