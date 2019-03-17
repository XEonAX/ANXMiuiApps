.class public Lcom/miui/gallery/cleaner/ScreenshotScanner;
.super Lcom/miui/gallery/cleaner/BaseScanner;
.source "ScreenshotScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    }
.end annotation


# static fields
.field public static final SCREEN_SHOT_SCAN_ORDER:Ljava/lang/String;

.field public static final SCREEN_SHOT_SCAN_PROJECTION:[Ljava/lang/String;

.field public static final SCREEN_SHOT_SCAN_SELECTION:Ljava/lang/String;

.field public static final VALID_FILE:Ljava/lang/String;


# instance fields
.field private mMediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScanResultClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

.field private mScreenshotLocalId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "size"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->SCREEN_SHOT_SCAN_PROJECTION:[Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_THUMBNAIL_VALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_ORIGIN_FILE_VALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->VALID_FILE:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localGroupId = %d AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cleaner/ScreenshotScanner;->VALID_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->SCREEN_SHOT_SCAN_SELECTION:Ljava/lang/String;

    .line 50
    const-string v0, "%s DESC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "alias_create_time"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->SCREEN_SHOT_SCAN_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/cleaner/BaseScanner;-><init>(I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mScreenshotLocalId:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner$3;-><init>(Lcom/miui/gallery/cleaner/ScreenshotScanner;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mOnScanResultClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 36
    return-void
.end method

.method private buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;
    .locals 10

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "count":I
    const-wide/16 v4, 0x0

    .line 136
    .local v4, "size":J
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 137
    .local v2, "paths":[Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;

    .line 139
    .local v1, "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    iget-wide v8, v1, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mSize:J

    add-long/2addr v4, v8

    .line 140
    array-length v7, v2

    if-ge v0, v7, :cond_0

    .line 141
    iget-object v7, v1, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mPath:Ljava/lang/String;

    aput-object v7, v2, v0

    .line 142
    aget-object v7, v2, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mSha1:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailNameBySha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 147
    goto :goto_0

    .line 148
    .end local v1    # "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    new-instance v3, Lcom/miui/gallery/cleaner/ScanResult$Builder;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mType:I

    .line 150
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setType(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    const v6, 0x7f0c00eb

    .line 151
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setTitle(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    const v6, 0x7f0c00ea

    .line 152
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setDescription(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setSize(J)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v2}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setPaths([Ljava/lang/String;)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    const v6, 0x7f0c00e9

    .line 155
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setAction(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v0}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setCount(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mOnScanResultClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 157
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setOnScanResultClickListener(Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->build()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v3

    return-object v3

    .line 148
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private queryScreenshotAlbumId(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 109
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "serverId = 2 AND (serverType=0)"

    new-instance v6, Lcom/miui/gallery/cleaner/ScreenshotScanner$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner$2;-><init>(Lcom/miui/gallery/cleaner/ScreenshotScanner;)V

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private removeItem(J)Z
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "found":Z
    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v4

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 202
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;

    .line 204
    .local v1, "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    iget-wide v6, v1, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mId:J

    cmp-long v3, v6, p1

    if-nez v3, :cond_0

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 206
    const/4 v0, 0x1

    .line 210
    .end local v1    # "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    :cond_1
    monitor-exit v4

    .line 211
    return v0

    .line 210
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public getScanResultIds()[J
    .locals 8

    .prologue
    .line 215
    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 217
    .local v0, "count":I
    new-array v2, v0, [J

    .line 218
    .local v2, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;

    iget-wide v6, v3, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mId:J

    aput-wide v6, v2, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    monitor-exit v4

    return-object v2

    .line 222
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onMediaItemDeleted(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->removeItem(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->updateScanResult(Lcom/miui/gallery/cleaner/ScanResult;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    return-void
.end method

.method public removeItems([J)V
    .locals 8
    .param p1, "ids"    # [J

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 190
    :try_start_0
    array-length v4, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-wide v0, p1, v2

    .line 191
    .local v0, "id":J
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->removeItem(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    long-to-int v5, v0

    int-to-long v6, v5

    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v5

    invoke-virtual {p0, v6, v7, v5}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->updateScanResult(JLcom/miui/gallery/cleaner/ScanResult;)V

    .line 190
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "id":J
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public scan()Lcom/miui/gallery/cleaner/ScanResult;
    .locals 9

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 62
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mScreenshotLocalId:I

    if-ne v1, v2, :cond_1

    .line 64
    invoke-direct {p0, v0}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->queryScreenshotAlbumId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mScreenshotLocalId:I

    .line 65
    iget v1, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mScreenshotLocalId:I

    if-ne v1, v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v4

    .line 69
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/miui/gallery/cleaner/ScreenshotScanner;->SCREEN_SHOT_SCAN_SELECTION:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v8, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mScreenshotLocalId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/cleaner/ScreenshotScanner;->SCREEN_SHOT_SCAN_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/miui/gallery/cleaner/ScreenshotScanner;->SCREEN_SHOT_SCAN_ORDER:Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/cleaner/ScreenshotScanner$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner$1;-><init>(Lcom/miui/gallery/cleaner/ScreenshotScanner;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 101
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iput-object v7, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner;->mMediaItems:Ljava/util/ArrayList;

    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v4

    goto :goto_0
.end method
