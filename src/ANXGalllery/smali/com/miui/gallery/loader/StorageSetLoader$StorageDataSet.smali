.class Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;
.super Lcom/miui/gallery/model/BaseDataSet;
.source "StorageSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/StorageSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageDataSet"
.end annotation


# instance fields
.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mInitFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/loader/StorageSetLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/loader/StorageSetLoader;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p3, "initFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataSet;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    .line 159
    iput-object p3, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mInitFilePath:Ljava/lang/String;

    .line 160
    return-void
.end method

.method private getIndexOfItem(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v3, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 197
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 198
    iget-object v3, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return v1

    .line 197
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getItem(I)Ljava/io/File;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addNewFile(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-static {v0}, Lcom/miui/gallery/loader/StorageSetLoader;->access$300(Lcom/miui/gallery/loader/StorageSetLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-static {v0}, Lcom/miui/gallery/loader/StorageSetLoader;->access$400(Lcom/miui/gallery/loader/StorageSetLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-static {v0}, Lcom/miui/gallery/loader/StorageSetLoader;->access$400(Lcom/miui/gallery/loader/StorageSetLoader;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/model/BaseDataSet;->addNewFile(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public addToAlbum(Landroid/app/Activity;IZZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "operateSync"    # Z
    .param p4, "showSecret"    # Z
    .param p5, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .prologue
    const/4 v3, 0x1

    .line 243
    invoke-direct {p0, p2}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getItem(I)Ljava/io/File;

    move-result-object v0

    .line 244
    .local v0, "item":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v2, 0x0

    invoke-static {p1, p5, v1, v2, p4}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Ljava/util/ArrayList;ZZ)V

    .line 249
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    return v3
.end method

.method public addToFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v4, 0x1

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 277
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p3, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToFavoritesByPath(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[Ljava/lang/String;)V

    .line 280
    :cond_0
    return v4
.end method

.method protected bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    .line 176
    invoke-direct {p0, p2}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getItem(I)Ljava/io/File;

    move-result-object v0

    .line 177
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v1}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v1}, Lcom/miui/gallery/model/BaseDataItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 182
    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setMimeType(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 185
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 169
    new-instance v0, Lcom/miui/gallery/model/StorageItem;

    invoke-direct {v0}, Lcom/miui/gallery/model/StorageItem;-><init>()V

    .line 170
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    .line 171
    return-object v0
.end method

.method protected doDelete(Lcom/miui/gallery/model/BaseDataItem;)I
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/16 v5, 0x1f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 219
    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-virtual {v2}, Lcom/miui/gallery/loader/StorageSetLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/16 v0, -0x70

    .line 238
    :goto_0
    return v0

    .line 224
    :cond_0
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-virtual {v2}, Lcom/miui/gallery/loader/StorageSetLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 226
    invoke-static {v2, v0, v5, v3}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->deleteInService(Landroid/content/Context;II[Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    .line 231
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageSetLoader"

    invoke-direct {v1, v5, v2, v3}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v1}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "StorageSetLoader"

    const-string v2, "Failed to delete file %s"

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 238
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitPosition()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->mInitFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getIndexOfItem(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getItem(I)Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method protected getItemPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getItem(I)Ljava/io/File;

    move-result-object v0

    .line 261
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public removeFromFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v4, 0x1

    .line 285
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/loader/StorageSetLoader$StorageDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 286
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p3, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->removeFromFavoritesByPath(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[Ljava/lang/String;)V

    .line 289
    :cond_0
    return v4
.end method
