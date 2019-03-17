.class public Lcom/miui/gallery/util/ProcessingMediaHelper;
.super Ljava/lang/Object;
.source "ProcessingMediaHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ProcessingMediaHelper$SingletonHolder;
    }
.end annotation


# static fields
.field private static final EXTERNAL_FILES_PREFIX:Ljava/lang/String;

.field private static final EXTERNAL_IMAGES_PREFIX:Ljava/lang/String;

.field private static final EXTERNAL_VIDEO_PREFIX:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mProcessingItems:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
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
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ProcessingMediaHelper;->sLock:Ljava/lang/Object;

    .line 20
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/ProcessingMediaHelper;->EXTERNAL_FILES_PREFIX:Ljava/lang/String;

    .line 21
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/ProcessingMediaHelper;->EXTERNAL_IMAGES_PREFIX:Ljava/lang/String;

    .line 22
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/ProcessingMediaHelper;->EXTERNAL_VIDEO_PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/ProcessingMediaHelper;->mProcessingItems:Landroid/util/LongSparseArray;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/ProcessingMediaHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/ProcessingMediaHelper$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/util/ProcessingMediaHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/util/ProcessingMediaHelper$SingletonHolder;->INSTANCE:Lcom/miui/gallery/util/ProcessingMediaHelper;

    return-object v0
.end method


# virtual methods
.method public addProcessingItem(JLjava/lang/String;)V
    .locals 3
    .param p1, "mediaStoreId"    # J
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v1, Lcom/miui/gallery/util/ProcessingMediaHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/ProcessingMediaHelper;->mProcessingItems:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMediaInProcessing(Ljava/lang/String;)Z
    .locals 9
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    .line 79
    :goto_0
    return v3

    .line 54
    :cond_0
    sget-object v3, Lcom/miui/gallery/util/ProcessingMediaHelper;->EXTERNAL_FILES_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/miui/gallery/util/ProcessingMediaHelper;->EXTERNAL_IMAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/miui/gallery/util/ProcessingMediaHelper;->EXTERNAL_VIDEO_PREFIX:Ljava/lang/String;

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 64
    .local v4, "id":J
    sget-object v8, Lcom/miui/gallery/util/ProcessingMediaHelper;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 65
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/util/ProcessingMediaHelper;->mProcessingItems:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v7

    goto :goto_0

    .line 59
    .end local v4    # "id":J
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ProcessingMediaHelper"

    const-string v7, "Illegal Uri format: %s"

    invoke-static {v3, v7, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v3, "ProcessingMediaHelper"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v6

    .line 62
    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "id":J
    :cond_2
    :try_start_2
    monitor-exit v8

    .end local v4    # "id":J
    :cond_3
    :goto_1
    move v3, v6

    .line 79
    goto :goto_0

    .line 68
    .restart local v4    # "id":J
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 69
    .end local v4    # "id":J
    :cond_4
    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "filePath":Ljava/lang/String;
    sget-object v8, Lcom/miui/gallery/util/ProcessingMediaHelper;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/miui/gallery/util/ProcessingMediaHelper;->mProcessingItems:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 73
    iget-object v3, p0, Lcom/miui/gallery/util/ProcessingMediaHelper;->mProcessingItems:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    monitor-exit v8

    move v3, v7

    goto :goto_0

    .line 72
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 77
    :cond_6
    monitor-exit v8

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public removeProcessingItem(J)V
    .locals 3
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 45
    sget-object v1, Lcom/miui/gallery/util/ProcessingMediaHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/ProcessingMediaHelper;->mProcessingItems:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
