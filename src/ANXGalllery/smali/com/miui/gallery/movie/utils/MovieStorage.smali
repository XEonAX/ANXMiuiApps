.class public Lcom/miui/gallery/movie/utils/MovieStorage;
.super Ljava/lang/Object;
.source "MovieStorage.java"


# static fields
.field private static final IMAGE_SAVED_SUFFIX:Ljava/lang/String;

.field private static final SAVE_FILE_FORMAT:Ljava/lang/String;

.field private static final TEMP_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "_PHOTOMOVIE"

    sput-object v0, Lcom/miui/gallery/movie/utils/MovieStorage;->IMAGE_SAVED_SUFFIX:Ljava/lang/String;

    .line 18
    const-string v0, "%sMP4_%s.mp4"

    sput-object v0, Lcom/miui/gallery/movie/utils/MovieStorage;->SAVE_FILE_FORMAT:Ljava/lang/String;

    .line 19
    const-string v0, "TEMP_PHOTOMOVIE.mp4"

    sput-object v0, Lcom/miui/gallery/movie/utils/MovieStorage;->TEMP_FILE_NAME:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getOutPutDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCreativeDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutputMediaFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieStorage;->getOutPutDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "mediaStorageDir":Ljava/io/File;
    invoke-static {v0, v6}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const-string v2, "MovieStorage"

    const-string v3, "getOutputMediaFile failed"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v2, 0x0

    .line 33
    :goto_0
    return-object v2

    .line 32
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "timeStamp":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/movie/utils/MovieStorage;->SAVE_FILE_FORMAT:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/movie/utils/MovieStorage;->IMAGE_SAVED_SUFFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getTempFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieStorage;->getOutPutDirectory()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, "tempDir":Ljava/io/File;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const-string v1, "MovieStorage"

    const-string v2, "getTempFilePath failed"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/movie/utils/MovieStorage;->TEMP_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
