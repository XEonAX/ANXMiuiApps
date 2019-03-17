.class Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;
.super Ljava/lang/Object;
.source "CitySearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CitySearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataBaseFileLoader"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataBasePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mContext:Landroid/content/Context;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mDataBasePath:Ljava/lang/String;

    .line 343
    return-void
.end method

.method private compareStream(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 6
    .param p1, "input1"    # Ljava/io/InputStream;
    .param p2, "input2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 425
    instance-of v4, p1, Ljava/io/BufferedInputStream;

    if-nez v4, :cond_0

    .line 426
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "input1":Ljava/io/InputStream;
    .local v1, "input1":Ljava/io/InputStream;
    move-object p1, v1

    .line 428
    .end local v1    # "input1":Ljava/io/InputStream;
    .restart local p1    # "input1":Ljava/io/InputStream;
    :cond_0
    instance-of v4, p2, Ljava/io/BufferedInputStream;

    if-nez v4, :cond_1

    .line 429
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2    # "input2":Ljava/io/InputStream;
    .local v2, "input2":Ljava/io/InputStream;
    move-object p2, v2

    .line 433
    .end local v2    # "input2":Ljava/io/InputStream;
    .restart local p2    # "input2":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "data":I
    if-eq v0, v5, :cond_3

    .line 434
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 438
    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private copyFile()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 355
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mDataBasePath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "dataBaseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v8, "city.db"

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v1, "dbFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "city.db.md5"

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    .local v4, "md5File":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 361
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 395
    :cond_1
    :goto_0
    return v7

    .line 362
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    :cond_3
    const/4 v3, 0x0

    .line 369
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 372
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "city.db"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 373
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v3, v6}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 379
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 380
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 384
    :try_start_3
    iget-object v8, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "city.db.md5"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 385
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :try_start_4
    invoke-static {v3, v5}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 391
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 392
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 395
    const/4 v7, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "DataBaseFileLoader"

    invoke-static {v8, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 376
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v8, "DataBaseFileLoader"

    invoke-static {v8, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 380
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 379
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 380
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 387
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    move-object v5, v6

    .line 388
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :goto_3
    :try_start_6
    const-string v8, "DataBaseFileLoader"

    invoke-static {v8, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 391
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 392
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 391
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :goto_4
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 392
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 391
    :catchall_2
    move-exception v7

    goto :goto_4

    .line 387
    :catch_3
    move-exception v2

    goto :goto_3

    .line 379
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 375
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private isFileCopied()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 399
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mDataBasePath:Ljava/lang/String;

    const-string v8, "city.db"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v6

    .line 404
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mDataBasePath:Ljava/lang/String;

    const-string v8, "city.db.md5"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v4, "md5File":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, "dstIn":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 412
    .local v5, "srcIn":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .end local v1    # "dstIn":Ljava/io/InputStream;
    .local v2, "dstIn":Ljava/io/InputStream;
    :try_start_1
    iget-object v7, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "city.db.md5"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 414
    invoke-direct {p0, v2, v5}, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->compareStream(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 418
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 419
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 415
    .end local v2    # "dstIn":Ljava/io/InputStream;
    .restart local v1    # "dstIn":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "DataBaseFileLoader"

    invoke-static {v7, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 419
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 418
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 419
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v6

    .line 418
    .end local v1    # "dstIn":Ljava/io/InputStream;
    .restart local v2    # "dstIn":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "dstIn":Ljava/io/InputStream;
    .restart local v1    # "dstIn":Ljava/io/InputStream;
    goto :goto_2

    .line 415
    .end local v1    # "dstIn":Ljava/io/InputStream;
    .restart local v2    # "dstIn":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "dstIn":Ljava/io/InputStream;
    .restart local v1    # "dstIn":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public loadFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->isFileCopied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->copyFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const-string v0, "/data/miui/gallery/city.db"

    .line 351
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/data/CitySearcher$DataBaseFileLoader;->mDataBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "city.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
