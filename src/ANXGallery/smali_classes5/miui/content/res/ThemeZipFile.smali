.class public final Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeZipFile$MyZipFile;
    }
.end annotation


# static fields
.field static DBG:Z = false

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field public static final THEME_FALLBACK_FILE:Ljava/lang/String; = "theme_fallback.xml"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values"

.field public static final THEME_VALUE_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final sDensity:I

.field private static final sFallbackDensities:[I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mLastModifiedTime:J

.field private mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field private mPath:Ljava/lang/String;

.field private mUpatedTime:J

.field private mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    .line 33
    const-string v0, "ThemeZipFile"

    sput-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 35
    sget v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    .line 36
    sget v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getFallbackOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 3
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 72
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ThemeZipFile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 75
    return-void
.end method

.method private clean()V
    .locals 3

    .line 333
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_1

    .line 337
    :try_start_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    .line 342
    :cond_1
    return-void
.end method

.method private getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 12
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "path"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa0

    if-eqz v0, :cond_1

    .line 139
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    :goto_0
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 140
    return v1

    .line 143
    :cond_1
    const-string v0, "/drawable"

    .line 144
    .local v0, "drawableTag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, "drawableTagEndIndex":I
    if-gez v3, :cond_2

    .line 146
    const-string v0, "/raw"

    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 149
    :cond_2
    const/4 v4, 0x0

    if-gtz v3, :cond_3

    .line 150
    return v4

    .line 152
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 154
    invoke-direct {p0, p2, v3}, Lmiui/content/res/ThemeZipFile;->regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "regularPath":Ljava/lang/String;
    if-eq p2, v5, :cond_5

    .line 156
    move-object p2, v5

    .line 157
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 158
    iget v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    :goto_1
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 159
    return v1

    .line 162
    :cond_5
    const/16 v1, 0x2f

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 164
    .local v1, "drawablePathEndIndex":I
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v6

    .line 165
    .local v6, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v6, p2, v3}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 166
    const/4 v7, 0x0

    .line 167
    .local v7, "result":Z
    sget-object v8, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    array-length v9, v8

    :goto_2
    if-ge v4, v9, :cond_9

    aget v10, v8, v4

    .line 168
    .local v10, "density":I
    iget v11, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-ne v10, v11, :cond_6

    .end local v10    # "density":I
    goto :goto_4

    .line 170
    .restart local v10    # "density":I
    :cond_6
    invoke-virtual {v6, v3}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 171
    invoke-static {v10}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, p2, v1, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 173
    invoke-virtual {v6}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 174
    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    move v2, v10

    :goto_3
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 175
    const/4 v7, 0x1

    .line 176
    goto :goto_5

    .line 167
    .end local v10    # "density":I
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 179
    :cond_9
    :goto_5
    invoke-static {v6}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 180
    return v7
.end method

.method protected static getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;
    .locals 6
    .param p0, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;
    .param p1, "componentName"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 50
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeZipFile;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 51
    .local v3, "zipFile":Lmiui/content/res/ThemeZipFile;
    :goto_0
    if-nez v3, :cond_3

    .line 52
    sget-object v4, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v4

    .line 53
    :try_start_0
    sget-object v5, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v1, v5

    .line 54
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/ThemeZipFile;

    nop

    :cond_1
    move-object v3, v2

    .line 55
    if-nez v3, :cond_2

    .line 56
    new-instance v2, Lmiui/content/res/ThemeZipFile;

    invoke-direct {v2, v0, p0}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v3, v2

    .line 57
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 58
    sget-object v2, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 62
    :cond_3
    :goto_1
    return-object v3
.end method

.method private getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "path"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "#*.png"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    nop

    .line 296
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "#*.png"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 295
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "fuzzyIconName":Ljava/lang/String;
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 298
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 300
    .local v4, "enumEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    move-object v0, v4

    .line 305
    goto :goto_1

    .line 307
    .end local v4    # "enumEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    goto :goto_0

    .line 308
    .end local v2    # "fuzzyIconName":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    :goto_1
    goto :goto_2

    .line 309
    :cond_3
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v2, p2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v0, v2

    .line 312
    :goto_2
    if-eqz v0, :cond_6

    .line 313
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    .line 314
    iget-boolean v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    if-eqz v2, :cond_4

    .line 315
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 316
    iget-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    if-nez v2, :cond_4

    return v1

    .line 318
    :cond_4
    iget-wide v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const/4 v1, 0x1

    nop

    :cond_5
    return v1

    .line 322
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_6
    goto :goto_3

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return v1
.end method

.method private loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V
    .locals 1
    .param p1, "callback"    # Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/content/res/ThemeResources$ConfigType;

    .line 270
    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 271
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {p1, v0, p3}, Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;->load(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 274
    :cond_0
    return-void
.end method

.method private regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "drawableTagEndIndex"    # I

    .line 190
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 191
    .local v0, "drawablePathEndIndex":I
    if-ltz v0, :cond_4

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    const-string v1, ""

    .line 198
    .local v1, "dpiTag":Ljava/lang/String;
    const-string v2, "dpi"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, "dpiStartIndex":I
    if-lez v2, :cond_3

    .line 200
    const-string v3, "dpi"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 201
    .local v3, "dpiEndIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    if-le v2, p2, :cond_1

    .line 202
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 204
    :cond_1
    if-ne v2, p2, :cond_2

    if-ne v3, v0, :cond_2

    .line 206
    return-object p1

    .line 208
    :cond_2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 212
    .end local v3    # "dpiEndIndex":I
    :cond_3
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v3

    .line 213
    .local v3, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v3, p1, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {v3, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, p1, v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 216
    invoke-virtual {v3}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "ret":Ljava/lang/String;
    invoke-static {v3}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 219
    return-object v4

    .line 193
    .end local v1    # "dpiTag":Ljava/lang/String;
    .end local v2    # "dpiStartIndex":I
    .end local v3    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v4    # "ret":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object p1
.end method

.method private trimVersionPart(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dpiEndIndex"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_2

    .line 225
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 226
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_2

    .line 227
    add-int/lit8 v0, p1, 0x2

    .line 228
    .local v0, "versionEndIndex":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 230
    .local v1, "ch":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    .line 231
    goto :goto_1

    .line 228
    .end local v1    # "ch":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    :goto_1
    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_2

    .line 235
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    .line 236
    .local v1, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v1, p2, p1}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p2, v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 238
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 242
    .end local v0    # "versionEndIndex":I
    .end local v1    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    :cond_2
    return-object p2
.end method


# virtual methods
.method checkUpdate()J
    .locals 7

    .line 78
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUpdate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 82
    .local v1, "lastModified":J
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 83
    invoke-static {v3}, Lmiui/content/res/ThemeCompatibility;->isCompatibleResource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    .line 87
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 89
    iput-wide v1, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 90
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 91
    sget-boolean v3, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openZipFile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    :try_start_1
    new-instance v3, Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-direct {v3, p0, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V

    iput-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 102
    :cond_3
    :goto_1
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    return-wide v3
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 329
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 330
    return-void
.end method

.method getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 113
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v0, v0, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 116
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 123
    .local v2, "result":Z
    if-nez v2, :cond_2

    const-string v3, ".9.png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    const-string v3, "9.png"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 125
    const-string v3, "png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 128
    :cond_2
    if-nez v2, :cond_3

    const-string v3, ".webp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    const-string v3, "webp"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 130
    const-string v3, "png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 133
    :cond_3
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 134
    return v2

    .line 113
    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 279
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 280
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 282
    :try_start_0
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    return-object v1
.end method

.method public isValid()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadThemeConfig(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;
    .param p2, "basePath"    # Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 251
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 252
    const-string v1, "theme_values"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 253
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 256
    const-string v1, ".xml"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 257
    sget v1, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 258
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 262
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 263
    const-string v1, "theme_fallback.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 266
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 267
    return-void
.end method
