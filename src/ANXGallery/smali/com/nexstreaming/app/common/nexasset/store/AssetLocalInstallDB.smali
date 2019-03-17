.class public Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;
.super Ljava/lang/Object;
.source "AssetLocalInstallDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;,
        Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$InstallTaskError;,
        Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;
    }
.end annotation


# static fields
.field public static final ASSET_UNINSTALL_FINISHED:I = 0x1

.field public static final ASSET_UNINSTALL_NOT_YET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetLocalInstallDB"

.field private static assetStoreRootPath:Ljava/lang/String;

.field private static final commAS:Z

.field private static instance:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

.field private static localFeaturedPath:Ljava/lang/String;

.field private static localRootPath:Ljava/lang/String;

.field private static final sInstallThreadPool:Ljava/util/concurrent/Executor;

.field private static supportedMimeType:I


# instance fields
.field private installing:Z

.field private mContext:Landroid/content/Context;

.field private mFeaturedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_assetdbLock:Ljava/lang/Object;

.field private readyToDeletePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readyToInstallPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readyToLoadPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->sInstallThreadPool:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    .line 1028
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->m_assetdbLock:Ljava/lang/Object;

    .line 1305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mFeaturedList:Ljava/util/Map;

    .line 84
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nexassets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    .line 88
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 96
    :cond_1
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "featured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToInstallPackages:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToDeletePackages:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToLoadPackages:Ljava/util/List;

    .line 108
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->checkInstallFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->uninstallPackage(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->copyThumbnail(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    return p1
.end method

.method private checkInstallFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 280
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, p2}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getAssetIdxInJson(Ljava/lang/String;)I

    move-result v3

    .line 285
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 287
    if-eq v3, v4, :cond_0

    .line 288
    const-string v0, "AssetLocalInstallDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json. idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 292
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_3

    .line 301
    const-string v0, "AssetLocalInstallDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thumbnail not found ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    if-nez v1, :cond_2

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 309
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 316
    :cond_2
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 1188
    const-wide/16 v0, 0x0

    .line 1190
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1191
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1192
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1194
    :cond_0
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1225
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1227
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 1228
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1229
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1236
    :goto_1
    const/4 v0, 0x1

    .line 1240
    :cond_0
    return v0

    .line 1231
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1232
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private copyThumbnail(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->isSamePath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v1, "AssetLocalInstallDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyThumbnail() file not found="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getThumbnailOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 227
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v1

    const/16 v5, 0x140

    if-le v3, v5, :cond_2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v1

    const/16 v5, 0xb4

    if-le v3, v5, :cond_2

    .line 235
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 237
    :cond_2
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    const/4 v3, 0x0

    .line 243
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 244
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    if-eqz v2, :cond_3

    .line 253
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 261
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 247
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    if-eqz v2, :cond_3

    .line 253
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 254
    :catch_1
    move-exception v1

    goto :goto_2

    .line 248
    :catch_2
    move-exception v1

    .line 249
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    if-eqz v3, :cond_3

    .line 253
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 254
    :catch_3
    move-exception v1

    goto :goto_2

    .line 251
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_4

    .line 253
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 258
    :cond_4
    :goto_6
    throw v0

    .line 264
    :cond_5
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->createDummyIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 251
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 248
    :catch_6
    move-exception v1

    move-object v3, v2

    goto :goto_4

    .line 246
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method private copyThumbnail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1245
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1246
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1250
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1251
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1252
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1253
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1255
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move v2, v1

    .line 1257
    :goto_0
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v6, v2

    const/16 v7, 0x140

    if-le v6, v7, :cond_1

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v6, v2

    const/16 v7, 0xb4

    if-le v6, v7, :cond_1

    .line 1259
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1261
    :cond_1
    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1263
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1265
    if-nez v6, :cond_3

    .line 1266
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1293
    :cond_2
    :goto_1
    return v0

    .line 1270
    :cond_3
    const/4 v3, 0x0

    .line 1272
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1273
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v6, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1280
    if-eqz v2, :cond_4

    .line 1282
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1290
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move v0, v1

    .line 1291
    goto :goto_1

    .line 1275
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1276
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1280
    if-eqz v2, :cond_4

    .line 1282
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1283
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1277
    :catch_2
    move-exception v0

    .line 1278
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1280
    if-eqz v3, :cond_4

    .line 1282
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 1283
    :catch_3
    move-exception v0

    goto :goto_2

    .line 1280
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_5

    .line 1282
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1287
    :cond_5
    :goto_6
    throw v0

    .line 1283
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 1280
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 1277
    :catch_6
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 1275
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method private createDummy(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->isSamePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 274
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 275
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 273
    :array_0
    .array-data 1
        0x50t
        0x4bt
    .end array-data
.end method

.method private createDummyIcon(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 160
    new-instance v3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getThumbnailOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    const/16 v1, 0x20

    .line 163
    const/16 v4, 0x12

    .line 164
    const/16 v0, 0x240

    new-array v5, v0, [I

    .line 165
    const/4 v0, 0x0

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 166
    const/high16 v2, -0x1000000

    aput v2, v5, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v2, 0x0

    .line 168
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v4, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 171
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    if-eqz v1, :cond_1

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 174
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    if-eqz v1, :cond_1

    .line 180
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    goto :goto_1

    .line 175
    :catch_2
    move-exception v0

    .line 176
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    if-eqz v2, :cond_1

    .line 180
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 181
    :catch_3
    move-exception v0

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 180
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 185
    :cond_2
    :goto_5
    throw v0

    .line 181
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    .line 178
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 175
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 173
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private deleteDir(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 1019
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1020
    if-eqz v1, :cond_0

    .line 1021
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1022
    invoke-direct {p0, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->deleteDir(Ljava/io/File;)V

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1026
    return-void
.end method

.method private getAssetIdxInJson(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 680
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v2, 0x0

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 685
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    :try_start_1
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 688
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v5, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 698
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 703
    :goto_1
    return v0

    .line 691
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 693
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 695
    :catch_1
    move-exception v0

    :goto_2
    move-object v0, v2

    goto :goto_0

    .line 701
    :cond_0
    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    goto :goto_1

    :cond_1
    move v0, v1

    .line 703
    goto :goto_1

    .line 695
    :catch_2
    move-exception v2

    move-object v2, v0

    goto :goto_2

    .line 693
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public static getAssetStoreRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    return-object v0
.end method

.method private getFeaturedList(Ljava/lang/String;I)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1416
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mFeaturedList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1419
    if-nez v0, :cond_b

    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mFeaturedList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 1424
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1425
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1430
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1431
    :try_start_1
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 1432
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v6, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$GetNewAssetList;

    invoke-virtual {v0, v1, v6}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$GetNewAssetList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1433
    if-nez v0, :cond_0

    .line 1475
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1512
    :goto_1
    return v3

    .line 1436
    :cond_0
    :try_start_3
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$GetNewAssetList;->objList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    .line 1475
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v3

    .line 1489
    :goto_2
    if-nez v0, :cond_1

    .line 1494
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1495
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v1, v1, [B

    .line 1496
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 1497
    const-string v3, "AssetLocalInstallDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ErrJson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1499
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_3
    move v3, v0

    .line 1512
    goto :goto_1

    .line 1438
    :cond_2
    :try_start_8
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$GetNewAssetList;->objList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1440
    if-lez v1, :cond_8

    .line 1441
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1443
    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$GetNewAssetList;->objList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    .line 1445
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1447
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeaturedList() mode="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", idx="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", thumbnail not found!"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 1475
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1479
    :catch_1
    move-exception v0

    .line 1480
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    .line 1487
    goto/16 :goto_2

    .line 1451
    :cond_3
    :try_start_a
    new-instance v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;

    invoke-direct {v9}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;-><init>()V

    .line 1452
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->asset_id:Ljava/lang/String;

    iput-object v1, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->id:Ljava/lang/String;

    .line 1453
    iget v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    iput v1, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->idx:I

    .line 1454
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->assetName:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;

    iget-object v1, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;->string_title:Ljava/lang/String;

    iput-object v1, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->name:Ljava/lang/String;

    .line 1455
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    move v6, v3

    .line 1456
    :goto_6
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->assetName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    .line 1457
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->assetName:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;

    iget-object v1, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;->language_code:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->assetName:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;

    iget-object v1, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;->string_title:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1458
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->assetName:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;

    iget-object v1, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$LangString;->string_title:Ljava/lang/String;

    iput-object v1, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->name:Ljava/lang/String;

    .line 1462
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->idx:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->thumbnailPath:Ljava/lang/String;

    .line 1463
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->thumbnail_path_s:Ljava/lang/String;

    iput-object v1, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->thumbnailURL:Ljava/lang/String;

    .line 1464
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->category_aliasName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1465
    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->category_aliasName:Ljava/lang/String;

    iput-object v0, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->category:Ljava/lang/String;

    .line 1469
    :goto_7
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1456
    :cond_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_6

    .line 1467
    :cond_6
    const-string v0, "None"

    iput-object v0, v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->category:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 1471
    :cond_7
    const/4 v3, 0x1

    .line 1475
    :cond_8
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_b .. :try_end_b} :catch_3

    move v0, v3

    .line 1487
    goto/16 :goto_2

    .line 1481
    :catch_2
    move-exception v0

    .line 1482
    const-string v1, "AssetLocalInstallDB"

    const-string v2, "getFeaturedList err!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-virtual {v0}, Lcom/google/gson_nex/JsonSyntaxException;->printStackTrace()V

    move v0, v3

    .line 1487
    goto/16 :goto_2

    .line 1484
    :catch_3
    move-exception v0

    .line 1485
    const-string v1, "AssetLocalInstallDB"

    const-string v2, "getFeaturedList err!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {v0}, Lcom/google/gson_nex/JsonIOException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_2

    .line 1499
    :catchall_1
    move-exception v1

    :goto_8
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1501
    :catch_4
    move-exception v1

    .line 1502
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1503
    :catch_5
    move-exception v1

    .line 1504
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1509
    :cond_9
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not found="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v0, v3

    goto/16 :goto_3

    .line 1499
    :catchall_2
    move-exception v1

    move-object v5, v2

    goto :goto_8

    .line 1475
    :catchall_3
    move-exception v0

    move-object v1, v5

    goto/16 :goto_5

    :cond_b
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public static getInstalledAssetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->instance:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->instance:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    .line 115
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->instance:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    return-object v0
.end method

.method private getThumbnailOutputPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    .line 137
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackage() called with: item = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], thumbFile = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 878
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/p;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const/4 p5, 0x0

    .line 882
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    if-eqz p5, :cond_2

    .line 885
    :try_start_0
    const-string v0, "nonedata"

    invoke-virtual {p6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 886
    const-string v0, "AssetLocalInstallDB"

    const-string v3, "installPackage() fail. key not found."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 888
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 897
    :cond_2
    :try_start_1
    invoke-static {v1, v2, p4, p5, p6}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->unzip(Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;ZLjava/lang/String;)V

    .line 898
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 900
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 926
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->m_assetdbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    :try_start_2
    invoke-direct {p0, v2, p2}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->parseStoreAssetInfo(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_4

    .line 930
    const-string v4, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install StoreAssetItem, idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SDKLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetScopeVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_4
    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v4

    invoke-virtual {v4, v2, p3, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;)V

    .line 935
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 937
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    :try_start_3
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 904
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 918
    :catch_1
    move-exception v0

    .line 919
    const-string v1, "AssetLocalInstallDB"

    const-string v3, "installPackage unzip error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 921
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 923
    :cond_5
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 907
    :catch_2
    move-exception v0

    .line 908
    :try_start_4
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 909
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 912
    :catch_3
    move-exception v0

    .line 913
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 914
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 939
    :cond_6
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Not found asset file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isSamePath()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpdatedFeaturedList(ILjava/lang/String;)Z
    .locals 6

    .prologue
    .line 1308
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1309
    const/4 v0, 0x1

    .line 1310
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1312
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1313
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v1, v1, [B

    .line 1314
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1316
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    const-string v1, "AssetLocalInstallDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FeaturedList equals index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v0, 0x0

    .line 1320
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :cond_1
    :goto_0
    return v0

    .line 1323
    :catch_0
    move-exception v1

    .line 1324
    const-string v1, "AssetLocalInstallDB"

    const-string v2, "FeaturedList IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1321
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private moveFeaturedList(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1392
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1395
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 1396
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1395
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1400
    :cond_0
    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1401
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1403
    invoke-direct {p0, v5, v4}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->copyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1404
    const-string v4, "AssetLocalInstallDB"

    const-string v6, "copyFile fail!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1410
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->copyThumbnail(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1413
    :cond_3
    return-void
.end method

.method private parseStoreAssetInfo(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;
    .locals 6

    .prologue
    .line 707
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x0

    .line 709
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 714
    :try_start_1
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 715
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v5, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 726
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 727
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;

    invoke-direct {v1, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;-><init>(Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;)V

    move-object v0, v1

    .line 756
    :goto_1
    return-object v0

    .line 718
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 720
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 729
    :cond_0
    const-string v0, "AssetLocalInstallDB"

    const-string v1, "jsonFile file not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-direct {v1}, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;-><init>()V

    .line 734
    :try_start_4
    invoke-static {p1, p2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v2

    .line 735
    if-eqz v2, :cond_2

    .line 736
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->e()Ljava/util/Map;

    move-result-object v0

    const-string v3, "en"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->title:Ljava/lang/String;

    .line 741
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    .line 742
    iput-object p2, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->asset_id:Ljava/lang/String;

    .line 743
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 756
    :goto_3
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;-><init>(Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;)V

    goto :goto_1

    .line 739
    :cond_1
    :try_start_5
    iput-object p2, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->title:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 749
    :catch_1
    move-exception v0

    .line 750
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    .line 751
    iput-object p2, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->asset_id:Ljava/lang/String;

    .line 752
    iput-object p2, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->title:Ljava/lang/String;

    goto :goto_3

    .line 745
    :cond_2
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    .line 746
    iput-object p2, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->asset_id:Ljava/lang/String;

    .line 747
    iput-object p2, v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->title:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 722
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    .line 720
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1200
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1201
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1202
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1217
    :goto_1
    return-object v0

    .line 1210
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 1214
    :catch_1
    move-exception v0

    .line 1215
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static saveFeaturedList(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1331
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    .line 1333
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1335
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1340
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1348
    :goto_0
    return-void

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1345
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1336
    :catch_2
    move-exception v0

    .line 1340
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1341
    :catch_3
    move-exception v0

    .line 1342
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1339
    :catchall_0
    move-exception v0

    .line 1340
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1343
    :goto_1
    :try_start_7
    throw v0

    .line 1341
    :catch_4
    move-exception v1

    .line 1342
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static saveFeaturedThumbnail(ILandroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 1351
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const/4 v2, 0x0

    .line 1354
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1357
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1358
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1360
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 1361
    const-string v1, "AssetLocalInstallDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFeaturedThumbnail assetIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", is not bmp . size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1371
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1372
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1379
    if-eqz v1, :cond_1

    .line 1381
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1389
    :cond_1
    :goto_0
    return-void

    .line 1364
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 1365
    const-string v2, "AssetLocalInstallDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFeaturedThumbnail assetIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exists. lastModified="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1375
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1379
    if-eqz v1, :cond_1

    .line 1381
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1382
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1376
    :catch_2
    move-exception v0

    .line 1377
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1379
    if-eqz v2, :cond_1

    .line 1381
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 1382
    :catch_3
    move-exception v0

    goto :goto_0

    .line 1379
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_3

    .line 1381
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1386
    :cond_3
    :goto_4
    throw v0

    .line 1382
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 1379
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1376
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 1374
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public static setAssetStoreRootPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    sput-object p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static setInstalledAssetPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    sput-object p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_0
    return-void
.end method

.method public static setMimeType(I)V
    .locals 0

    .prologue
    .line 131
    sput p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->supportedMimeType:I

    .line 132
    return-void
.end method

.method private uninstallPackage(IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1031
    const-string v1, "AssetLocalInstallDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uninstallPackage() called with: assetIdx = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->m_assetdbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1039
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getAssetInstalledItemInfoByAssetIdx(I)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v2

    .line 1040
    if-eqz v2, :cond_5

    .line 1044
    invoke-interface {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 1045
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getThumbnailOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1048
    invoke-direct {p0, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->deleteDir(Ljava/io/File;)V

    .line 1053
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1055
    if-eqz p2, :cond_7

    .line 1056
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1064
    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    .line 1065
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1067
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1071
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1072
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1076
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(I)V

    .line 1078
    :cond_5
    const-string v2, "AssetLocalInstallDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uninstallPackage() returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    monitor-exit v1

    goto/16 :goto_0

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1050
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1058
    :cond_7
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->isSamePath()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1059
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1072
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static unzip(Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;ZLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1120
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unzipping \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1127
    const-wide/16 v0, 0x0

    .line 1128
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Lcom/nexstreaming/app/common/task/Task;->setProgress(II)V

    .line 1130
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    .line 1131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed because file size is zero"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_1
    if-eqz p3, :cond_2

    .line 1135
    const-string v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1136
    const/4 v3, 0x2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1138
    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1139
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v2

    .line 1146
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1147
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1149
    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Relative paths not allowed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1141
    :cond_2
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v2

    goto :goto_0

    .line 1152
    :cond_3
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1154
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1155
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_4
    const-string v2, "AssetLocalInstallDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - unzip: made folder \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1159
    :cond_5
    const-string v8, "AssetLocalInstallDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - unzip: unzipping file \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\' "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "->"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    :try_start_2
    invoke-static {v3, v6}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1164
    :try_start_3
    invoke-static {v6}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 1166
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 1167
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v0

    div-long/2addr v6, v4

    long-to-int v2, v6

    .line 1168
    const/16 v6, 0x64

    if-lt v2, v6, :cond_6

    .line 1169
    const/16 v2, 0x63

    .line 1171
    :cond_6
    const/16 v6, 0x64

    invoke-virtual {p2, v2, v6}, Lcom/nexstreaming/app/common/task/Task;->setProgress(II)V

    goto/16 :goto_0

    .line 1164
    :catchall_1
    move-exception v0

    invoke-static {v6}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1175
    :cond_7
    invoke-static {v3}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 1177
    const/16 v0, 0x64

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->setProgress(II)V

    .line 1178
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unzipping DONE for: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void
.end method


# virtual methods
.method public checkInstallDB()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 963
    .line 964
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b()Ljava/util/List;

    move-result-object v0

    .line 965
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    .line 966
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getInstallSourceType()Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    move-result-object v0

    .line 967
    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    if-ne v0, v4, :cond_4

    .line 968
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 970
    goto :goto_0

    .line 971
    :cond_0
    if-nez v1, :cond_3

    .line 972
    const-string v0, "AssetLocalInstallDB"

    const-string v1, "StoreAsset NotFound!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    .line 975
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 977
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 978
    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 979
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 981
    const-string v6, ".zip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    .line 978
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 987
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 992
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public checkStore()V
    .locals 10

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToDeletePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToLoadPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 358
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 359
    new-instance v5, Ljava/io/File;

    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToDeletePackages:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->uninstallPackage(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToLoadPackages:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 376
    :cond_2
    return-void
.end method

.method public checkStoreInstall()I
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToInstallPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    sget v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->supportedMimeType:I

    .line 322
    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 326
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 327
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    const-string v7, ".zip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 333
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-direct {p0, v2, v7}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->checkInstallFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 335
    iget-object v6, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToInstallPackages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToInstallPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssetInstalledDownloadItemItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    .line 955
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getInstallSourceType()Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    if-ne v3, v4, :cond_0

    .line 956
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    :cond_1
    return-object v1
.end method

.method public getAssetInstalledItemInfoByAssetIdx(I)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;
    .locals 3

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 945
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 949
    :cond_0
    return-object v0
.end method

.method public getList(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1518
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localFeaturedPath:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getFeaturedList(Ljava/lang/String;I)Z

    .line 1519
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mFeaturedList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getReadyToInstallPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->checkStoreInstall()I

    .line 349
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->readyToInstallPackages:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailUrl(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mFeaturedList:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1525
    if-eqz v0, :cond_1

    .line 1526
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;

    .line 1527
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->idx:I

    if-ne v2, p1, :cond_0

    .line 1528
    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->thumbnailURL:Ljava/lang/String;

    .line 1542
    :goto_0
    return-object v0

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mFeaturedList:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1534
    if-eqz v0, :cond_3

    .line 1535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;

    .line 1536
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->idx:I

    if-ne v2, p1, :cond_2

    .line 1537
    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$remoteAssetItem;->thumbnailURL:Ljava/lang/String;

    goto :goto_0

    .line 1542
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnzipFolder(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 1183
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public installPackageAsync(I)Lcom/nexstreaming/app/common/task/Task;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 385
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 387
    iput-boolean v3, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    .line 389
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;

    invoke-direct {v1, p0, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;-><init>(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Lcom/nexstreaming/app/common/task/Task;)V

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->sInstallThreadPool:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    return-object v0
.end method

.method public installPackageSync(I)Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 761
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 764
    iget-boolean v3, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    if-eqz v3, :cond_0

    .line 765
    const-string v0, "AssetLocalInstallDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackageSync("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): installing retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_0
    return v1

    .line 768
    :cond_0
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    .line 770
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    new-instance v6, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".json"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v7, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".jpg"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    new-instance v8, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ".zip"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v3, 0x0

    .line 776
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 779
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_7

    .line 781
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): info json not found!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 803
    :goto_1
    if-nez v3, :cond_8

    .line 805
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): json parsing fail!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 813
    :cond_1
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 815
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): thumbnail not found!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 818
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_9

    .line 820
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): package not found!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 828
    :cond_3
    :goto_3
    if-nez v0, :cond_b

    .line 829
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 830
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 831
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 832
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 833
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 834
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 835
    :cond_6
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    goto/16 :goto_0

    .line 785
    :cond_7
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 787
    :try_start_1
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 788
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v10, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-virtual {v0, v9, v10}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v0

    move v0, v2

    .line 800
    goto/16 :goto_1

    .line 791
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 793
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_4
    move-object v3, v0

    move v0, v1

    .line 800
    goto/16 :goto_1

    .line 796
    :catch_1
    move-exception v0

    .line 798
    :goto_5
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): info json parse fail!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 799
    goto/16 :goto_1

    .line 807
    :cond_8
    iget v5, v3, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    if-eq v5, p1, :cond_1

    .line 808
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): invalidation idx="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, v3, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 809
    goto/16 :goto_2

    .line 822
    :cond_9
    invoke-static {v8}, Lcom/nexstreaming/app/common/util/p;->a(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 823
    const-string v0, "AssetLocalInstallDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackageSync("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "): package is not zip!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 824
    goto/16 :goto_3

    .line 839
    :cond_a
    const-string v2, "AssetLocalInstallDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installPackageSync("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): store path not found="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    goto/16 :goto_0

    .line 844
    :cond_b
    new-instance v5, Ljava/io/File;

    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->localRootPath:Ljava/lang/String;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getThumbnailOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->copyFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 849
    invoke-static {v8, v5}, Lcom/nexstreaming/app/common/util/p;->a(Ljava/io/File;Ljava/io/File;)V

    .line 850
    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v4

    new-instance v9, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;

    invoke-direct {v9, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$internalStoreAssetInfo;-><init>(Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;)V

    invoke-virtual {v4, v5, v0, v9}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 858
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 859
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 860
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 861
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    move v1, v2

    .line 862
    goto/16 :goto_0

    .line 851
    :catch_2
    move-exception v0

    .line 852
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 853
    const-string v0, "AssetLocalInstallDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackageSync("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): unzip fail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    goto/16 :goto_0

    .line 796
    :catch_3
    move-exception v3

    move-object v3, v0

    goto/16 :goto_5

    .line 793
    :catch_4
    move-exception v3

    goto/16 :goto_4
.end method

.method public isInstallingPackages()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installing:Z

    return v0
.end method

.method public makeThumbnail(Landroid/graphics/Bitmap;I)Ljava/io/File;
    .locals 4

    .prologue
    .line 191
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getThumbnailOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v2, 0x0

    .line 194
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 195
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    if-eqz v1, :cond_0

    .line 204
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 212
    :cond_0
    :goto_0
    return-object v3

    .line 197
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 198
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    if-eqz v1, :cond_0

    .line 204
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    .line 200
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    if-eqz v2, :cond_0

    .line 204
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 205
    :catch_3
    move-exception v0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 204
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 209
    :cond_1
    :goto_4
    throw v0

    .line 205
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 202
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 199
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 197
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public uninstallFromAssetStoreApp()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 995
    sget-object v3, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->assetStoreRootPath:Ljava/lang/String;

    .line 996
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 999
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 1000
    const-string v0, ".del"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1004
    const-string v7, "AssetLocalInstallDB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uninstallFromAssetStoreApp idx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->uninstallPackage(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 999
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1016
    :cond_1
    return-void
.end method

.method public uninstallPackage(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1084
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->uninstallPackage(IZ)I

    move-result v0

    return v0
.end method
