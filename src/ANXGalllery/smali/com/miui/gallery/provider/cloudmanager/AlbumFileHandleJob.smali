.class Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;
.super Ljava/lang/Object;
.source "AlbumFileHandleJob.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mLocalFlag:I

.field private mRelativeDir:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "relativeDir"    # Ljava/lang/String;
    .param p3, "localFlag"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;->mId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;->mRelativeDir:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;->mLocalFlag:I

    .line 25
    return-void
.end method

.method public static from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 28
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "id":Ljava/lang/String;
    const/4 v4, 0x7

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "dir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    const/4 v4, 0x6

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "albumName":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFolderRelativePathInCloud(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 35
    .local v2, "flag":I
    new-instance v4, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;

    invoke-direct {v4, v3, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method


# virtual methods
.method public run(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;->mRelativeDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "folder":Ljava/io/File;
    iget v2, p0, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;->mLocalFlag:I

    sparse-switch v2, :sswitch_data_0

    .line 63
    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v2, "CloudManager.AlbumFileHandleJob"

    const-string v3, "make folder: %s"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 48
    .local v1, "result":Z
    const-string v2, "CloudManager.AlbumFileHandleJob"

    const-string v3, "folder maked: %b"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v1    # "result":Z
    :cond_0
    const-string v2, "CloudManager.AlbumFileHandleJob"

    const-string v3, "folder exist, skip."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "CloudManager.AlbumFileHandleJob"

    const-string v3, "local deletion, just delete from db"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/AlbumFileHandleJob;->mId:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v2, "CloudManager.AlbumFileHandleJob"

    const-string v3, "cloud deletion, skip folder, db\'s deletion already done"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
