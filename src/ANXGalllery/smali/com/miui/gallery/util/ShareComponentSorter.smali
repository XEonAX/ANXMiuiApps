.class public Lcom/miui/gallery/util/ShareComponentSorter;
.super Ljava/lang/Object;
.source "ShareComponentSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ShareComponentSorter$Tag;,
        Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;,
        Lcom/miui/gallery/util/ShareComponentSorter$DummyComparator;,
        Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;,
        Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;,
        Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;,
        Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;,
        Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/miui/gallery/util/ShareComponentSorter;


# instance fields
.field private mApplication:Landroid/content/Context;

.field private mGauss:Lcom/miui/gallery/util/Gauss;

.field private mHasPendingSave:Z

.field private mInitialized:Z

.field private mOnInitializedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
            "Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/miui/gallery/util/Gauss;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/Gauss;-><init>(DD)V

    iput-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mGauss:Lcom/miui/gallery/util/Gauss;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mOnInitializedListeners:Ljava/util/List;

    .line 465
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/util/ShareComponentSorter;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/util/ShareComponentSorter;->append(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/util/ShareComponentSorter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mHasPendingSave:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/util/ShareComponentSorter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mHasPendingSave:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mOnInitializedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/util/ShareComponentSorter;)Lcom/miui/gallery/util/Gauss;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mGauss:Lcom/miui/gallery/util/Gauss;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/util/ShareComponentSorter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mApplication:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/util/ShareComponentSorter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mTmpRecords:Ljava/util/Map;

    return-object v0
.end method

.method private append(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 103
    new-instance v2, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-direct {v2, p1, p2}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v2, "tag":Lcom/miui/gallery/util/ShareComponentSorter$Tag;
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 105
    const-string v3, "ShareComponentSorter"

    const-string v4, "not initialized, use a temp record"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mTmpRecords:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mTmpRecords:Ljava/util/Map;

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mTmpRecords:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v1    # "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mTmpRecords:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    monitor-enter v4

    .line 117
    :try_start_0
    const-string v3, "ShareComponentSorter"

    const-string v5, "initialized, inserting"

    invoke-static {v3, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    .line 119
    .local v0, "record":Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    .end local v0    # "record":Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .restart local v0    # "record":Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    invoke-virtual {v0, p3, p4}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->append(J)V

    .line 124
    monitor-exit v4

    goto :goto_0

    .end local v0    # "record":Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/util/ShareComponentSorter;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/miui/gallery/util/ShareComponentSorter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/util/ShareComponentSorter;->sInstance:Lcom/miui/gallery/util/ShareComponentSorter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-direct {v0}, Lcom/miui/gallery/util/ShareComponentSorter;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ShareComponentSorter;->sInstance:Lcom/miui/gallery/util/ShareComponentSorter;

    .line 40
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/ShareComponentSorter;->sInstance:Lcom/miui/gallery/util/ShareComponentSorter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createComparator()Ljava/util/Comparator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 78
    iget-object v6, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 79
    iget-object v7, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    monitor-enter v7

    .line 80
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 81
    .local v4, "start":J
    const-string v6, "ShareComponentSorter"

    const-string v8, "initialized create a new comparator"

    invoke-static {v6, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v2, "priority":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;-><init>(Lcom/miui/gallery/util/ShareComponentSorter;Lcom/miui/gallery/util/ShareComponentSorter$1;)V

    .line 84
    .local v1, "gauss":Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;
    iget-object v6, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    invoke-virtual {v6, v1}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->calcPriority(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord$Evaluator;)F

    move-result v3

    .line 86
    .local v3, "value":F
    const-string v9, "ShareComponentSorter"

    const-string v10, "[%s] -> %f"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-static {v6}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$200(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9, v10, v6, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;>;"
    .end local v1    # "gauss":Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;
    .end local v2    # "priority":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/Integer;>;"
    .end local v3    # "value":F
    .end local v4    # "start":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 89
    .restart local v1    # "gauss":Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;
    .restart local v2    # "priority":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/Integer;>;"
    .restart local v4    # "start":J
    :cond_0
    :try_start_1
    const-string v6, "ShareComponentSorter"

    const-string v8, "create a gauss comparator costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v6, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;

    invoke-direct {v6, v2}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;-><init>(Ljava/util/Map;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v1    # "gauss":Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;
    .end local v2    # "priority":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/Integer;>;"
    .end local v4    # "start":J
    :goto_1
    return-object v6

    .line 93
    :cond_1
    const-string v6, "ShareComponentSorter"

    const-string v7, "not initialized, use a dummy comparator"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v6, Lcom/miui/gallery/util/ShareComponentSorter$DummyComparator;

    invoke-direct {v6, v8}, Lcom/miui/gallery/util/ShareComponentSorter$DummyComparator;-><init>(Lcom/miui/gallery/util/ShareComponentSorter$1;)V

    goto :goto_1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 64
    iget-boolean v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please initialize with application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mApplication:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;-><init>(Lcom/miui/gallery/util/ShareComponentSorter;Lcom/miui/gallery/util/ShareComponentSorter$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "components-history.json"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    iput-boolean v5, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mInitialized:Z

    goto :goto_0
.end method

.method public initialized()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mInitialized:Z

    return v0
.end method

.method public registerOnInitializedListener(Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;)V
    .locals 1
    .param p1, "onInitializedListener"    # Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mOnInitializedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public removeOnInitializedListener(Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;)V
    .locals 1
    .param p1, "onInitializedListener"    # Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mOnInitializedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public save()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mRecords:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;-><init>(Lcom/miui/gallery/util/ShareComponentSorter;Lcom/miui/gallery/util/ShareComponentSorter$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "components-history.json"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-boolean v2, p0, Lcom/miui/gallery/util/ShareComponentSorter;->mHasPendingSave:Z

    goto :goto_0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/util/ShareComponentSorter;->append(Ljava/lang/String;Ljava/lang/String;J)V

    .line 100
    return-void
.end method
