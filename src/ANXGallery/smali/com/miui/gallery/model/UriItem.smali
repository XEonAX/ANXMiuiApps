.class public Lcom/miui/gallery/model/UriItem;
.super Lcom/miui/gallery/model/BaseDataItem;
.source "UriItem.java"


# instance fields
.field private mCacheFile:Ljava/io/File;

.field private transient mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method private isCacheValidate()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mCacheFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openOrDownloadInner()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    .line 86
    iget-object v2, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.resource"

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UriItem"

    const-string v3, "fail to open %s %s"

    iget-object v4, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    .line 180
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 175
    return-void
.end method


# virtual methods
.method public checkOriginalFileExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/model/UriItem;->isCacheValidate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    :goto_0
    return v2

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/miui/gallery/model/UriItem;->openOrDownloadInner()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 73
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UriItem"

    const-string v4, "File descriptor close failed"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createNSGifDecoder(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/model/UriItem;->isCacheValidate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/model/UriItem;->mCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create(Ljava/lang/String;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    move-result-object v1

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/model/UriItem;->openOrDownloadInner()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 53
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 58
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create(Ljava/io/FileDescriptor;[B)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 60
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v1

    .line 109
    .local v1, "info":Lcom/miui/gallery/model/PhotoDetailInfo;
    const/4 v4, 0x0

    .line 110
    .local v4, "path":Ljava/lang/String;
    const-string v5, "file"

    iget-object v8, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    iget-object v5, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/model/UriItem;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/model/UriItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->extractVideoAttr(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;)V

    .line 139
    :cond_1
    :goto_1
    return-object v1

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/model/UriItem;->isCacheValidate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/miui/gallery/model/UriItem;->mCacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/model/UriItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->extractExifInfo(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;Z)V

    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/model/UriItem;->isVideo()Z

    move-result v5

    if-nez v5, :cond_1

    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v6, v5

    .line 126
    .local v6, "size":J
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 127
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    const/4 v5, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 131
    const/4 v5, 0x4

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 132
    const/4 v5, 0x5

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 133
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "size":J
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UriItem"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/model/UriItem;->isCacheValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewSubTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/gallery/util/UriUtil;->isNetUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const v0, 0x7f0c057c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->getViewSubTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/gallery/util/UriUtil;->isNetUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const v0, 0x7f0c0346

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->getViewTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initSupportOperations()I
    .locals 2

    .prologue
    .line 144
    const/high16 v0, 0x80000

    .line 145
    .local v0, "supported":I
    invoke-virtual {p0}, Lcom/miui/gallery/model/UriItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    or-int/lit8 v0, v0, 0x40

    .line 148
    :cond_0
    return v0
.end method

.method public save(Landroid/app/Activity;Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/model/UriItem;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0, p2}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->show(Landroid/app/Activity;Landroid/net/Uri;Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V

    .line 154
    return-void
.end method
