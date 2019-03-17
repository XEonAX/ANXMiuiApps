.class public Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;
.super Ljava/lang/Object;
.source "PeopleCoverManager.java"


# static fields
.field private static final SCORES:[I

.field private static final SCORE_STAGE:[I

.field private static sInstance:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;


# instance fields
.field private mCoverIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverStrategies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/peoplecover/BaseStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLoadPeopleCoverDone:Z

.field private mMaxCoverScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->SCORES:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->SCORE_STAGE:[I

    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0x6f
        0x457
        0x2b67
        0x1b207
        0x10f447
    .end array-data

    .line 23
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/16 v4, 0x64

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverStrategies:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mMaxCoverScore:I

    .line 36
    iput-boolean v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mLoadPeopleCoverDone:Z

    .line 39
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverImageSizeStrategy;

    const v1, 0x186a0

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/peoplecover/CoverImageSizeStrategy;-><init>(I)V

    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 40
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverScaleStrategy;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/peoplecover/CoverScaleStrategy;-><init>(I)V

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 41
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverCountStrategy;

    invoke-direct {v0, v5}, Lcom/miui/gallery/provider/peoplecover/CoverCountStrategy;-><init>(I)V

    invoke-direct {p0, v0, v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 42
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverCenterStrategy;

    invoke-direct {v0, v4}, Lcom/miui/gallery/provider/peoplecover/CoverCenterStrategy;-><init>(I)V

    invoke-direct {p0, v0, v4}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 43
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverEyeXStrategy;

    invoke-direct {v0, v3}, Lcom/miui/gallery/provider/peoplecover/CoverEyeXStrategy;-><init>(I)V

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 44
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverEyeYStrategy;

    invoke-direct {v0, v2}, Lcom/miui/gallery/provider/peoplecover/CoverEyeYStrategy;-><init>(I)V

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 45
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;

    const v1, 0xf4240

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;-><init>(I)V

    const v1, 0xf4240

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->doChoosePeopleCover(Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->generatorScoreStage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->statPeopleCover(FI)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->finishChoosePeopleCover()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverStrategies:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mMaxCoverScore:I

    return v0
.end method

.method private doChoosePeopleCover(Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)I
    .locals 13
    .param p1, "peopleServerId"    # Ljava/lang/String;
    .param p2, "serverTag"    # Ljava/lang/String;
    .param p3, "oldPeopleCover"    # Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 125
    .local v4, "start":J
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v12, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    sget-object v8, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v10, v1

    const/4 v1, 0x1

    const-string v2, "-1"

    aput-object v2, v10, v1

    const-string v11, "dateTaken DESC "

    new-instance v1, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$2;-><init>(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;Ljava/lang/String;JLjava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;)V

    move-object v6, v0

    move-object v7, v12

    move-object v12, v1

    invoke-static/range {v6 .. v12}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private ensureLoadPeopleCoverDone()V
    .locals 6

    .prologue
    .line 190
    iget-boolean v2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mLoadPeopleCoverDone:Z

    if-eqz v2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    .local v0, "start":J
    iget-object v3, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 195
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mLoadPeopleCoverDone:Z

    if-nez v2, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->loadPeopleCover()V

    .line 198
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const-string v2, "PeopleCoverManager"

    const-string/jumbo v3, "wait for load cost : %d "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private finishChoosePeopleCover()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverStrategies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;

    .line 180
    .local v0, "strategy":Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
    invoke-virtual {v0}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->onFinish()V

    goto :goto_0

    .line 182
    .end local v0    # "strategy":Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
    :cond_0
    return-void
.end method

.method private generatorScoreStage(I)I
    .locals 4
    .param p1, "score"    # I

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, "stage":I
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v3, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->SCORES:[I

    array-length v0, v3

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    sget-object v3, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->SCORES:[I

    aget v3, v3, v1

    if-gt p1, v3, :cond_1

    .line 107
    move v2, v1

    .line 111
    :cond_0
    return v2

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->sInstance:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    invoke-direct {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->sInstance:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->sInstance:Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized loadPeopleCover()V
    .locals 12

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 204
    .local v10, "time":J
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 205
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v1, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 206
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/peoplecover/PeopleCover;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 208
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    .line 209
    .local v8, "peopleCover":Lcom/miui/gallery/provider/peoplecover/PeopleCover;
    invoke-virtual {v8}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getCoverId()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "coverId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v6    # "coverId":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/peoplecover/PeopleCover;>;"
    .end local v8    # "peopleCover":Lcom/miui/gallery/provider/peoplecover/PeopleCover;
    .end local v10    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 214
    .restart local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/peoplecover/PeopleCover;>;"
    .restart local v10    # "time":J
    :cond_1
    :try_start_1
    const-string v1, "PeopleCoverManager"

    const-string v2, "finish load people cover, cost time: %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mLoadPeopleCoverDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    monitor-exit p0

    return-void
.end method

.method private registerCoverStrategy(Lcom/miui/gallery/provider/peoplecover/BaseStrategy;I)V
    .locals 1
    .param p1, "strategy"    # Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
    .param p2, "value"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverStrategies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mMaxCoverScore:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mMaxCoverScore:I

    .line 58
    return-void
.end method

.method private statPeopleCover(FI)V
    .locals 6
    .param p1, "averageScore"    # F
    .param p2, "successCount"    # I

    .prologue
    .line 115
    sget-object v1, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->SCORE_STAGE:[I

    invoke-static {p1, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorValueStage(F[I)I

    move-result v0

    .line 116
    .local v0, "stage":I
    const-string v1, "people"

    const-string v2, "people_cover_score"

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 117
    const-string v1, "people"

    const-string v2, "people_cover_success_count"

    int-to-long v4, p2

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 118
    return-void
.end method


# virtual methods
.method public getCoverIds()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->ensureLoadPeopleCoverDone()V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized onAccountDelete()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mCoverIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->mLoadPeopleCoverDone:Z

    .line 224
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 225
    const-string v0, "PeopleCoverManager"

    const-string v1, "on account delete"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPeopleCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/provider/peoplecover/PeopleCover;I)V
    .locals 2
    .param p1, "peopleId"    # Ljava/lang/String;
    .param p2, "coverId"    # Ljava/lang/String;
    .param p3, "serverTag"    # Ljava/lang/String;
    .param p4, "old"    # Lcom/miui/gallery/provider/peoplecover/PeopleCover;
    .param p5, "score"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 168
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    if-nez p4, :cond_0

    .line 169
    new-instance v1, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/dao/base/EntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    :try_start_1
    invoke-virtual {p4, p2}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->setCoverId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p4, p3}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->setServerTag(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p4, p5}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->setCoverScore(I)V

    .line 174
    invoke-virtual {v0, p4}, Lcom/miui/gallery/dao/base/EntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startChooseCoverForAllPeople()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_TAG_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "serverId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "eTag"

    aput-object v5, v2, v4

    new-instance v6, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager$1;-><init>(Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;)V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 101
    return-void
.end method
