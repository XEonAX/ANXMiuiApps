.class Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
.super Ljava/lang/Object;
.source "ShareComponentSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord$Evaluator;
    }
.end annotation


# static fields
.field private static final ONE_DAY:J


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mCountOfToday:I

.field private mHistory:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackage:Ljava/lang/String;

.field private mRecent:J

.field private mToday:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 294
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->ONE_DAY:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;

    .prologue
    .line 315
    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/TreeMap;)V

    .line 316
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/TreeMap;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "recent"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p5, "history":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mPackage:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mComponent:Ljava/lang/String;

    .line 308
    iput-wide p3, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mRecent:J

    .line 309
    iput-object p5, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mHistory:Ljava/util/TreeMap;

    .line 310
    iget-wide v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mRecent:J

    sget-wide v2, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->ONE_DAY:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mHistory:Ljava/util/TreeMap;

    iget-wide v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mCountOfToday:I

    .line 312
    return-void
.end method

.method static synthetic access$1400()J
    .locals 2

    .prologue
    .line 292
    sget-wide v0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->ONE_DAY:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 406
    :try_start_0
    const-string v1, "package"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "pkg":Ljava/lang/String;
    const-string v1, "component"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "component":Ljava/lang/String;
    const-string v1, "recent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 409
    .local v4, "recent":J
    const-string v1, "history"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 410
    .local v7, "rawHistory":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->readHistory(Lorg/json/JSONObject;)Ljava/util/TreeMap;

    move-result-object v6

    .line 411
    .local v6, "history":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/TreeMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "recent":J
    .end local v6    # "history":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v7    # "rawHistory":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ShareComponentSorter"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readHistory(Lorg/json/JSONObject;)Ljava/util/TreeMap;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 361
    .local v2, "history":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 362
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    .local v0, "day":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 366
    .end local v0    # "day":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "ShareComponentSorter"

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 368
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "ShareComponentSorter"

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 373
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-string v4, "ShareComponentSorter"

    const-string v5, "finish read history[%d] from json[%d]"

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    return-object v2
.end method

.method static toJson(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "info"    # Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    .prologue
    .line 419
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 421
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "package"

    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v2, "component"

    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v2, "recent"

    iget-wide v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mRecent:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 424
    const-string v2, "history"

    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mHistory:Ljava/util/TreeMap;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->writeHistory(Ljava/util/TreeMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-object v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ShareComponentSorter"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static writeHistory(Ljava/util/TreeMap;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "history":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 379
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    :goto_0
    return-object v2

    .line 382
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 383
    .local v4, "latest":J
    invoke-virtual {p0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 385
    .local v3, "key":Ljava/lang/Long;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 386
    :cond_1
    const-string v7, "ShareComponentSorter"

    const-string v8, "receive an invalid value[%s], skip"

    invoke-static {v7, v8, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x1e

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 390
    const-string v7, "ShareComponentSorter"

    const-string v8, "record is out of date(%dd), skip"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v3    # "key":Ljava/lang/Long;
    :cond_3
    const-string v6, "ShareComponentSorter"

    const-string v7, "finish write history[%d] to json[%d]"

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v3    # "key":Ljava/lang/Long;
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "ShareComponentSorter"

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method append(J)V
    .locals 7
    .param p1, "millis"    # J

    .prologue
    .line 343
    iget-wide v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mRecent:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 357
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-wide p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mRecent:J

    .line 349
    sget-wide v2, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->ONE_DAY:J

    div-long v0, p1, v2

    .line 350
    .local v0, "day":J
    iget-wide v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 351
    const-string v2, "ShareComponentSorter"

    const-string/jumbo v3, "switch day: %d->%d"

    iget-wide v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    iput-wide v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    .line 353
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mHistory:Ljava/util/TreeMap;

    iget-wide v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mCountOfToday:I

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mHistory:Ljava/util/TreeMap;

    iget-wide v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mToday:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mCountOfToday:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mCountOfToday:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method calcPriority(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord$Evaluator;)F
    .locals 7
    .param p1, "evaluator"    # Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord$Evaluator;

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, "priority":F
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->mHistory:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 337
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Long;J)J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v2

    invoke-interface {p1, v4, v5, v2}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord$Evaluator;->evaluate(JI)F

    move-result v2

    add-float/2addr v1, v2

    .line 338
    goto :goto_0

    .line 339
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_0
    return v1
.end method
