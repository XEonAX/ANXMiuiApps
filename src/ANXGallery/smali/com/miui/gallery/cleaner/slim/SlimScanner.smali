.class public Lcom/miui/gallery/cleaner/slim/SlimScanner;
.super Lcom/miui/gallery/cleaner/BaseScanner;
.source "SlimScanner.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    }
.end annotation


# static fields
.field public static final SLIM_SCAN_ORDER:Ljava/lang/String;

.field public static final SLIM_SCAN_PROJECTION:[Ljava/lang/String;

.field private static final SLIM_SCAN_SELECTION:Ljava/lang/String;

.field public static final SYNCED_SLIM_SCAN_SELECTION:Ljava/lang/String;


# instance fields
.field private mMediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScanResultClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "localFile"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SLIM_SCAN_PROJECTION:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverType = 1 AND mimeType != \'image/gif\' AND localFile NOT NULL AND localFile != \'\' AND localGroupId != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 51
    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->getCloudIdForGroupWithoutRecord(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localGroupId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e9

    .line 53
    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->getCloudIdForGroupWithoutRecord(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SLIM_SCAN_SELECTION:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alias_sync_state = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SLIM_SCAN_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SYNCED_SLIM_SCAN_SELECTION:Ljava/lang/String;

    .line 59
    const-string v0, "%s DESC"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "alias_create_time"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SLIM_SCAN_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cleaner/BaseScanner;-><init>(I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimScanner$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimScanner$2;-><init>(Lcom/miui/gallery/cleaner/slim/SlimScanner;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mOnScanResultClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cleaner/slim/SlimScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimScanner;

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mType:I

    return v0
.end method

.method private buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;
    .locals 10

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "count":I
    const-wide/16 v4, 0x0

    .line 135
    .local v4, "size":J
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 136
    .local v2, "paths":[Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;

    .line 138
    .local v1, "item":Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    iget-wide v8, v1, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mSlimSize:J

    add-long/2addr v4, v8

    .line 139
    array-length v7, v2

    if-ge v0, v7, :cond_0

    .line 140
    iget-object v7, v1, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mFilePath:Ljava/lang/String;

    aput-object v7, v2, v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 143
    goto :goto_0

    .line 144
    .end local v1    # "item":Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    new-instance v3, Lcom/miui/gallery/cleaner/ScanResult$Builder;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mType:I

    .line 146
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setType(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    const v6, 0x7f0c00ef

    .line 147
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setTitle(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setSize(J)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    const v6, 0x7f0c00ed

    .line 149
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setDescription(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 150
    invoke-virtual {v3, v2}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setPaths([Ljava/lang/String;)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    const v6, 0x7f0c00ec

    .line 151
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setAction(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v0}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setCount(I)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mOnScanResultClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .line 153
    invoke-virtual {v3, v6}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->setOnScanResultClickListener(Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lcom/miui/gallery/cleaner/ScanResult$Builder;->build()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v3

    return-object v3

    .line 144
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private removeMediaItem(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "found":Z
    iget-object v4, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v4

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;

    .line 209
    .local v1, "item":Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    iget-wide v6, v1, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mId:J

    cmp-long v3, v6, p1

    if-nez v3, :cond_0

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 211
    const/4 v0, 0x1

    .line 215
    .end local v1    # "item":Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v0, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->updateScanResult(Lcom/miui/gallery/cleaner/ScanResult;)V

    .line 219
    :cond_2
    return-void

    .line 215
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public getScanResultIds()[J
    .locals 8

    .prologue
    .line 169
    iget-object v4, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    monitor-enter v4

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 171
    .local v0, "count":I
    new-array v2, v0, [J

    .line 172
    .local v2, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 173
    iget-object v3, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;

    iget-wide v6, v3, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mId:J

    aput-wide v6, v2, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    monitor-exit v4

    return-object v2

    .line 176
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
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->removeMediaItem(J)V

    .line 201
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->unregisterObserver(Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;)V

    .line 183
    return-void
.end method

.method public onSlimPaused()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onSlimProgress(JJI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "releaseSize"    # J
    .param p5, "remainCount"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->removeMediaItem(J)V

    .line 188
    return-void
.end method

.method public onSlimResumed()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public scan()Lcom/miui/gallery/cleaner/ScanResult;
    .locals 22

    .prologue
    .line 75
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    .local v2, "context":Landroid/content/Context;
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SLIM_SCAN_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SYNCED_SLIM_SCAN_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SLIM_SCAN_ORDER:Ljava/lang/String;

    new-instance v8, Lcom/miui/gallery/cleaner/slim/SlimScanner$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/miui/gallery/cleaner/slim/SlimScanner$1;-><init>(Lcom/miui/gallery/cleaner/slim/SlimScanner;)V

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 103
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;>;"
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 129
    :goto_0
    return-object v3

    .line 107
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v14

    .line 108
    .local v14, "screenWidth":I
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v13

    .line 111
    .local v13, "screenHeight":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;

    .line 112
    .local v11, "item":Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    iget v4, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mWidth:I

    iget v5, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 113
    .local v9, "imageHeight":I
    if-le v9, v14, :cond_1

    iget-object v4, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    iget v4, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mWidth:I

    iget v5, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mHeight:I

    invoke-static {v4, v5, v14, v13}, Lcom/miui/gallery/util/BitmapUtils;->computeThumbNailScaleSize(IIII)F

    move-result v10

    .line 116
    .local v10, "imageScale":F
    iget-wide v4, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mSize:J

    iget-wide v6, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mSize:J

    long-to-double v6, v6

    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v6, v6, v18

    const-wide v18, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v6, v6, v18

    double-to-long v6, v6

    sub-long v16, v4, v6

    .line 117
    .local v16, "slimSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_1

    .line 118
    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;->mSlimSize:J

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v9    # "imageHeight":I
    .end local v10    # "imageScale":F
    .end local v11    # "item":Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
    .end local v16    # "slimSize":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 128
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->registerObserver(Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;)V

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->buildScanResult()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v3

    goto :goto_0
.end method
