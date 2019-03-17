.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;
.super Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;
.source "StickerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InstallTask;,
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCategories:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mHistory:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexFile:Ljava/io/File;

.field private mRecentFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    .line 442
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 443
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    .line 59
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCache:Ljava/util/Map;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->doInstall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->notifyInitializeFinish()V

    return-void
.end method

.method private checkResourceVersion(Lorg/json/JSONObject;)Z
    .locals 7
    .param p1, "resourceObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "checkResult":Z
    :try_start_0
    const-string/jumbo v5, "version"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 133
    :goto_0
    if-nez v0, :cond_0

    .line 134
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "photo_editor/stickers/"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v1, "dst":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v3, v3, [Ljava/io/File;

    aput-object v1, v3, v4

    invoke-static {v5, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 139
    .end local v1    # "dst":Ljava/io/File;
    :cond_0
    return v0

    :cond_1
    move v0, v4

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "StickerProvider"

    invoke-static {v5, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private deleteIndexFile()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mIndexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const-string v0, "StickerProvider"

    const-string v1, "index file not found"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mIndexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "StickerProvider"

    const-string v1, "delete index file failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doInstall()Z
    .locals 14

    .prologue
    .line 82
    const/4 v7, 0x0

    .line 85
    .local v7, "zipFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 86
    .local v5, "pkgObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 87
    .local v4, "pkgInfo":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mIndexFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->loadPackageInfo()Ljava/lang/String;

    move-result-object v4

    .line 89
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .local v6, "pkgObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-direct {p0, v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->checkResourceVersion(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v3, 0x1

    .line 96
    .local v3, "needUnzipData":Z
    :goto_0
    if-eqz v3, :cond_6

    .line 97
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "stickers.zip"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .end local v7    # "zipFile":Ljava/io/File;
    .local v8, "zipFile":Ljava/io/File;
    :try_start_2
    invoke-direct {p0, v8}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->releaseZip(Ljava/io/File;)V

    .line 99
    invoke-direct {p0, v8}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->unzipData(Ljava/io/File;)V

    .line 100
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mRecentFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mRecentFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_0

    .line 101
    const-string v9, "StickerProvider"

    const-string v10, "delete recent stickers failed"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->loadPackageInfo()Ljava/lang/String;

    move-result-object v4

    .line 104
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    move-object v7, v8

    .line 107
    .end local v8    # "zipFile":Ljava/io/File;
    .restart local v7    # "zipFile":Ljava/io/File;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, "begin":J
    invoke-direct {p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->loadData(Lorg/json/JSONObject;)V

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->readRecentFromFile()V

    .line 110
    const-string v9, "StickerProvider"

    const-string v10, "load package info costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    const/4 v9, 0x1

    .line 119
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_1

    .line 120
    const-string v10, "StickerProvider"

    const-string v11, "delete zip file failed"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "begin":J
    .end local v3    # "needUnzipData":Z
    :cond_1
    :goto_2
    return v9

    .line 90
    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 92
    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_4
    const-string v9, "StickerProvider"

    const-string v10, "index file not exist"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    const/4 v3, 0x1

    .restart local v3    # "needUnzipData":Z
    move-object v6, v5

    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 112
    .end local v3    # "needUnzipData":Z
    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
    :goto_3
    :try_start_5
    const-string v9, "StickerProvider"

    invoke-static {v9, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->deleteIndexFile()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 120
    const-string v9, "StickerProvider"

    const-string v10, "delete zip file failed"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v2    # "e":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
    :cond_4
    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    .line 115
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Lorg/json/JSONException;
    :goto_5
    :try_start_6
    const-string v9, "StickerProvider"

    invoke-static {v9, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->deleteIndexFile()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 120
    const-string v9, "StickerProvider"

    const-string v10, "delete zip file failed"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 119
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_5

    .line 120
    const-string v10, "StickerProvider"

    const-string v11, "delete zip file failed"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v9

    .line 119
    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    goto :goto_6

    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .end local v7    # "zipFile":Ljava/io/File;
    .restart local v3    # "needUnzipData":Z
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v8    # "zipFile":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    move-object v7, v8

    .end local v8    # "zipFile":Ljava/io/File;
    .restart local v7    # "zipFile":Ljava/io/File;
    goto :goto_6

    .line 115
    .end local v3    # "needUnzipData":Z
    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    goto :goto_5

    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .end local v7    # "zipFile":Ljava/io/File;
    .restart local v3    # "needUnzipData":Z
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v8    # "zipFile":Ljava/io/File;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    move-object v7, v8

    .end local v8    # "zipFile":Ljava/io/File;
    .restart local v7    # "zipFile":Ljava/io/File;
    goto :goto_5

    .line 112
    .end local v3    # "needUnzipData":Z
    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    goto :goto_3

    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .end local v7    # "zipFile":Ljava/io/File;
    .restart local v3    # "needUnzipData":Z
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v8    # "zipFile":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    move-object v7, v8

    .end local v8    # "zipFile":Ljava/io/File;
    .restart local v7    # "zipFile":Ljava/io/File;
    goto :goto_3

    .end local v5    # "pkgObject":Lorg/json/JSONObject;
    .restart local v6    # "pkgObject":Lorg/json/JSONObject;
    :cond_6
    move-object v5, v6

    .end local v6    # "pkgObject":Lorg/json/JSONObject;
    .restart local v5    # "pkgObject":Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method private fillRecent(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->fromJson(Lorg/json/JSONObject;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "StickerProvider"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 413
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v2, "StickerProvider"

    const-string v3, "read %d recent items from file"

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method private loadData(Lorg/json/JSONObject;)V
    .locals 27
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    const-string v4, "categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 236
    .local v13, "categories":Lorg/json/JSONArray;
    invoke-static {}, Lcom/miui/settings/Settings;->getRegion()Ljava/lang/String;

    move-result-object v15

    .line 237
    .local v15, "deviceRegion":Ljava/lang/String;
    const-string v4, "@string/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    .line 238
    .local v26, "stringHeaderLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 239
    .local v23, "resources":Landroid/content/res/Resources;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 240
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 241
    .local v12, "cateObj":Lorg/json/JSONObject;
    const-string v4, "region"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 242
    .local v22, "region":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const-string v4, "name"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "cateName":Ljava/lang/String;
    const-string v4, "@string/"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    const-string v4, "id"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, "catId":I
    const-string/jumbo v4, "string"

    const-string v5, "com.miui.gallery"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 254
    .local v11, "cateNameResId":I
    if-nez v11, :cond_2

    .line 255
    const-string v4, "StickerProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not valid category name string resource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    .end local v2    # "catId":I
    .end local v10    # "cateName":Ljava/lang/String;
    .end local v11    # "cateNameResId":I
    .end local v12    # "cateObj":Lorg/json/JSONObject;
    .end local v13    # "categories":Lorg/json/JSONArray;
    .end local v15    # "deviceRegion":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v22    # "region":Ljava/lang/String;
    .end local v23    # "resources":Landroid/content/res/Resources;
    .end local v26    # "stringHeaderLength":I
    :catch_0
    move-exception v16

    .line 294
    .local v16, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v5, "package info missing"

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 249
    .end local v16    # "e":Lorg/json/JSONException;
    .restart local v10    # "cateName":Ljava/lang/String;
    .restart local v12    # "cateObj":Lorg/json/JSONObject;
    .restart local v13    # "categories":Lorg/json/JSONArray;
    .restart local v15    # "deviceRegion":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v22    # "region":Ljava/lang/String;
    .restart local v23    # "resources":Landroid/content/res/Resources;
    .restart local v26    # "stringHeaderLength":I
    :cond_1
    :try_start_1
    const-string v4, "StickerProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not string type category name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .restart local v2    # "catId":I
    .restart local v11    # "cateNameResId":I
    :cond_2
    const-string v4, "items"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 260
    .local v20, "items":Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v19, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    .line 263
    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 264
    .local v25, "stickerObj":Lorg/json/JSONObject;
    const-string v4, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 266
    .local v24, "stickerId":I
    const-string v4, "main"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, "main":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->isRelative()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 268
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mIndexFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 286
    .end local v17    # "file":Ljava/io/File;
    :cond_3
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v24

    int-to-long v6, v0

    move-object v9, v8

    invoke-direct/range {v3 .. v10}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;-><init>(SLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v3, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 272
    .end local v3    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    .restart local v17    # "file":Ljava/io/File;
    :cond_4
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v5, "main url is not found %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 290
    .end local v8    # "main":Ljava/lang/String;
    .end local v17    # "file":Ljava/io/File;
    .end local v24    # "stickerId":I
    .end local v25    # "stickerObj":Lorg/json/JSONObject;
    :cond_5
    new-instance v14, Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;

    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-direct {v14, v2, v4, v10, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;-><init>(ISLjava/lang/String;Ljava/util/List;)V

    .line 291
    .local v14, "category":Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 296
    .end local v2    # "catId":I
    .end local v10    # "cateName":Ljava/lang/String;
    .end local v11    # "cateNameResId":I
    .end local v12    # "cateObj":Lorg/json/JSONObject;
    .end local v14    # "category":Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;
    .end local v19    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    .end local v20    # "items":Lorg/json/JSONArray;
    .end local v21    # "j":I
    .end local v22    # "region":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private loadPackageInfo()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, "reader":Ljava/io/FileReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v1, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mIndexFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [C

    .line 212
    .local v0, "buff":[C
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 218
    .end local v0    # "buff":[C
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 219
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v7, "index file is not found"

    invoke-direct {v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 224
    :goto_2
    if-eqz v4, :cond_0

    .line 225
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 229
    :cond_0
    :goto_3
    throw v6

    .line 215
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buff":[C
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "info":Ljava/lang/String;
    const-string v6, "StickerProvider"

    const-string v7, "load pkg info finished"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    if-eqz v5, :cond_2

    .line 225
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 229
    :cond_2
    :goto_4
    return-object v3

    .line 227
    :catch_1
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "StickerProvider"

    invoke-static {v6, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 220
    .end local v0    # "buff":[C
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "info":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v7, "read index file failed"

    invoke-direct {v6, v7, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "StickerProvider"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 220
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 218
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private readRecentFromFile()V
    .locals 8

    .prologue
    .line 382
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mRecentFile:Ljava/io/File;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object v5

    .line 383
    .local v5, "in":Ljava/io/Reader;
    if-nez v5, :cond_0

    .line 403
    :goto_0
    return-void

    .line 388
    :cond_0
    const/16 v6, 0x80

    :try_start_0
    new-array v1, v6, [C

    .line 389
    .local v1, "buff":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 391
    .local v3, "count":I
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 392
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 396
    .end local v1    # "buff":[C
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "count":I
    :catch_0
    move-exception v4

    .line 397
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "StickerProvider"

    invoke-static {v6, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    const-string v6, "StickerProvider"

    invoke-static {v6, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    .line 394
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buff":[C
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "count":I
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->fillRecent(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    const-string v6, "StickerProvider"

    invoke-static {v6, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    .line 398
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "buff":[C
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "count":I
    :catch_1
    move-exception v4

    .line 399
    .local v4, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v6, "StickerProvider"

    invoke-static {v6, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    const-string v6, "StickerProvider"

    invoke-static {v6, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    const-string v7, "StickerProvider"

    invoke-static {v7, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v6
.end method

.method private releaseZip(Ljava/io/File;)V
    .locals 8
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 155
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "stickers.zip"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 160
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v6, 0x1000

    :try_start_2
    new-array v0, v6, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .local v0, "buf":[B
    :goto_0
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "size":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 169
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 172
    .end local v5    # "size":I
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v7, "release failed during release zip file"

    invoke-direct {v6, v7, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_1
    const-string v7, "StickerProvider"

    invoke-static {v7, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 177
    const-string v7, "StickerProvider"

    invoke-static {v7, v3}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v6

    .line 156
    :catch_1
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v7, "missing assets file"

    invoke-direct {v6, v7, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    goto :goto_1

    .line 161
    :catch_2
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v7, "release assets\'s zip file failed"

    invoke-direct {v6, v7, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "size":I
    :cond_0
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    const-string v6, "StickerProvider"

    invoke-static {v6, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 177
    const-string v6, "StickerProvider"

    invoke-static {v6, v4}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 179
    return-void
.end method

.method private unzipData(Ljava/io/File;)V
    .locals 8
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, "start":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v5, "resource missing"

    invoke-direct {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "photo_editor/stickers/"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    sget-object v4, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 192
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    const-string v4, "StickerProvider"

    const-string v5, "delete folder failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_2
    :try_start_0
    invoke-static {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/ZipUtils;->unzip(Ljava/io/File;Ljava/io/File;)V

    .line 200
    const-string v4, "StickerProvider"

    const-string/jumbo v5, "unzip files finish, costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 194
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v5, "create folder stickers/ failed"

    invoke-direct {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;

    const-string v5, "copy directory failed"

    invoke-direct {v4, v5, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEngine;-><init>()V

    return-object v0
.end method

.method fromCache(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 374
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public install()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InstallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InstallTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method public list()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_0
    return-object v0
.end method

.method public list(J)Ljava/util/List;
    .locals 1
    .param p1, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCategories:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/CategoryData;->stickerList:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->onActivityCreate()V

    .line 71
    const-string v0, "StickerProvider"

    const-string v1, "perform application creating, install stickers"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo_editor/stickers/package.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mIndexFile:Ljava/io/File;

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo_editor/stickers/recent.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mRecentFile:Ljava/io/File;

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->install()V

    .line 75
    return-void
.end method

.method public bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;-><init>()V

    return-object v0
.end method

.method putToCache(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public recent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method touch(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)V
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method writeRecentToFile()V
    .locals 12

    .prologue
    .line 335
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 370
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 340
    .local v6, "start":J
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mRecentFile:Ljava/io/File;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openWriter(Ljava/io/File;)Ljava/io/Writer;

    move-result-object v5

    .line 341
    .local v5, "out":Ljava/io/Writer;
    if-nez v5, :cond_1

    .line 342
    const-string v8, "StickerProvider"

    const-string v9, "open recent file failed."

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 346
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 347
    .local v1, "count":I
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->mHistory:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .line 348
    .local v3, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->toJson(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)Lorg/json/JSONObject;

    move-result-object v4

    .line 349
    .local v4, "json":Lorg/json/JSONObject;
    if-nez v4, :cond_4

    .line 350
    const-string v9, "StickerProvider"

    const-string v10, "jsonfy failed"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_1
    const/16 v9, 0xa

    if-lt v1, v9, :cond_2

    .line 360
    .end local v3    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_3
    const-string v8, "StickerProvider"

    const-string/jumbo v9, "write %d recent items to file"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const-string v8, "StickerProvider"

    invoke-static {v8, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 369
    :goto_2
    const-string v8, "StickerProvider"

    const-string/jumbo v9, "write to file costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    .restart local v3    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    .end local v3    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "StickerProvider"

    invoke-static {v8, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    const-string v8, "StickerProvider"

    invoke-static {v8, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    const-string v9, "StickerProvider"

    invoke-static {v9, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v8
.end method
