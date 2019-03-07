.class public Lcom/xiaomi/stat/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/c/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "3.0"

.field private static final b:Ljava/lang/String; = "UploaderEngine"

.field private static final c:Ljava/lang/String; = "code"

.field private static final d:Ljava/lang/String; = "UTF-8"

.field private static final e:Ljava/lang/String; = "mistat"

.field private static final f:Ljava/lang/String; = "uploader"

.field private static final g:Ljava/lang/String; = "3.0.6"

.field private static final h:Ljava/lang/String; = "Android"

.field private static final i:I = 0xc8

.field private static final j:I = 0x1

.field private static final k:I = -0x1

.field private static final l:I = 0x3

.field private static volatile m:Lcom/xiaomi/stat/c/i;


# instance fields
.field private final n:[B

.field private o:Ljava/nio/channels/FileLock;

.field private p:Ljava/nio/channels/FileChannel;

.field private q:Lcom/xiaomi/stat/c/g;

.field private r:Lcom/xiaomi/stat/c/i$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/stat/c/i;->n:[B

    .line 97
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->e()V

    .line 98
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 354
    const/4 v1, -0x1

    .line 355
    if-ne p1, v0, :cond_1

    move v0, v1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/xiaomi/stat/c/i;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lcom/xiaomi/stat/c/i;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/xiaomi/stat/c/i;

    invoke-direct {v0}, Lcom/xiaomi/stat/c/i;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 399
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 401
    :try_start_0
    const-string v0, "id"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    invoke-direct {p0, p2, v2}, Lcom/xiaomi/stat/c/i;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 403
    const-string v0, "aii"

    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v0, "rc"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v0, "av"

    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v0, "ac"

    invoke-static {}, Lcom/xiaomi/stat/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v0, "os"

    const-string v1, "Android"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v0, "rd"

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v3, "pp"

    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->a()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 410
    const-string v0, "st"

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v0, "tz"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v0, "cc"

    invoke-static {}, Lcom/xiaomi/stat/I;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/c/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 413
    invoke-static {}, Lcom/xiaomi/stat/b;->o()[Ljava/lang/String;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 415
    const-string v1, "cs"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    :cond_0
    const-string v0, "ob"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v0, "n"

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v0, "ud"

    invoke-static {}, Lcom/xiaomi/stat/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v0, "es"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 444
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 445
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 446
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 448
    :try_start_0
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    invoke-static {v4}, Lcom/xiaomi/stat/c/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 449
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 454
    :cond_0
    return-object v2
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->n:[B

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->e()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/c/i$a;->sendMessage(Landroid/os/Message;)Z

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/c/i;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 430
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 432
    const-string v1, "ia"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v1, "mcm"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    const-string v1, "bm"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string v1, "aa"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v1, "ai"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    array-length v0, p1

    if-nez v0, :cond_1

    .line 223
    const-string v0, "UploaderEngine"

    const-string v1, "privacy policy or network state not matched"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v3

    .line 227
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 229
    if-eqz v3, :cond_6

    iget-boolean v0, v3, Lcom/xiaomi/stat/a/k;->c:Z

    .line 231
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UploaderEngine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    move-object v4, v3

    move v3, v0

    move v0, v2

    .line 232
    :goto_2
    if-eqz v4, :cond_5

    .line 233
    iget-object v5, v4, Lcom/xiaomi/stat/a/k;->b:Ljava/util/ArrayList;

    .line 234
    iget-object v0, v4, Lcom/xiaomi/stat/a/k;->a:Lorg/json/JSONArray;

    .line 237
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/stat/c/i;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/xiaomi/stat/d/k;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UploaderEngine payload:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 243
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/stat/c/i;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {}, Lcom/xiaomi/stat/d/k;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UploaderEngine encodePayload "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 249
    :cond_3
    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stat/b/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v4, v0, v7}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {}, Lcom/xiaomi/stat/d/k;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UploaderEngine sendDataToServer response: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 255
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    :goto_3
    move v4, v0

    .line 264
    :goto_4
    if-eqz v4, :cond_8

    .line 265
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/stat/a/c;->a(Ljava/util/ArrayList;)V

    .line 270
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UploaderEngine deleteData= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " retryCount.get()= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 272
    if-nez v3, :cond_b

    if-nez v4, :cond_9

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v5, 0x3

    if-le v0, v5, :cond_9

    move v0, v4

    .line 282
    :cond_5
    :goto_6
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v1, v0}, Lcom/xiaomi/stat/c/g;->b(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 229
    goto/16 :goto_1

    .line 258
    :cond_7
    :try_start_1
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_3

    .line 260
    :catch_0
    move-exception v0

    move v4, v2

    .line 261
    goto :goto_4

    .line 267
    :cond_8
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_5

    .line 276
    :cond_9
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v5

    .line 277
    if-eqz v5, :cond_a

    .line 278
    iget-boolean v0, v5, Lcom/xiaomi/stat/a/k;->c:Z

    :goto_7
    move v3, v0

    move v0, v4

    move-object v4, v5

    .line 280
    goto/16 :goto_2

    :cond_a
    move v0, v3

    goto :goto_7

    :cond_b
    move v0, v4

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 145
    .line 149
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :try_start_2
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 152
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 153
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 157
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 158
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 160
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 155
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UploaderEngine zipData failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 158
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_2
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 158
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    throw v0

    .line 157
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 154
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private a([B)[B
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/b/h;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private b([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-static {p1}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/i;->c(Z)[Lcom/xiaomi/stat/a/b;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/stat/b/d;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/stat/c/i;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 288
    .line 290
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3ec

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3ed

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3ee

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3ef

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_3

    .line 301
    :cond_2
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/stat/b/h;->a(Z)V

    .line 302
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    move v0, v1

    goto :goto_0

    .line 303
    :cond_3
    const/16 v3, 0x7d2

    if-ne v2, v3, :cond_0

    .line 304
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/stat/b/h;->a(Z)V

    .line 305
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string v2, "UploaderEngine"

    const-string v3, "parseUploadingResult exception "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 309
    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    const-string v1, "ai"

    invoke-static {}, Lcom/xiaomi/stat/I;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "sv"

    const-string v2, "3.0.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v1, "pv"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v1, "rg"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v1, "fc"

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stat/b/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "sid"

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stat/b/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-object v0
.end method

.method private c(Z)[Lcom/xiaomi/stat/a/b;
    .locals 7

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->g()Ljava/util/ArrayList;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 321
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    new-instance v5, Lcom/xiaomi/stat/c/f;

    invoke-direct {v5, v0, p1}, Lcom/xiaomi/stat/c/f;-><init>(Ljava/lang/String;Z)V

    .line 323
    invoke-virtual {v5}, Lcom/xiaomi/stat/c/f;->a()I

    move-result v5

    .line 324
    invoke-direct {p0, v5}, Lcom/xiaomi/stat/c/i;->a(I)I

    move-result v5

    .line 325
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 326
    new-instance v6, Lcom/xiaomi/stat/a/b;

    invoke-direct {v6, v0, v5, p1}, Lcom/xiaomi/stat/a/b;-><init>(Ljava/lang/String;IZ)V

    .line 327
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 331
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/i;->d(Z)Lcom/xiaomi/stat/a/b;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    new-array v0, v0, [Lcom/xiaomi/stat/a/b;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/stat/a/b;

    return-object v0
.end method

.method private d(Z)Lcom/xiaomi/stat/a/b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 342
    new-instance v0, Lcom/xiaomi/stat/c/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/stat/c/f;-><init>(Z)V

    .line 344
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/f;->a()I

    move-result v0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploaderEngine createMainAppFilter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a(I)I

    move-result v2

    .line 347
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 348
    new-instance v0, Lcom/xiaomi/stat/a/b;

    invoke-direct {v0, v1, v2, p1}, Lcom/xiaomi/stat/a/b;-><init>(Ljava/lang/String;IZ)V

    .line 350
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mi_analytics_uploader_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v1, Lcom/xiaomi/stat/c/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/stat/c/i$a;-><init>(Lcom/xiaomi/stat/c/i;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    .line 104
    new-instance v1, Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/c/g;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    .line 105
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->h()Z

    move-result v0

    .line 201
    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Z)V

    .line 206
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/c/i;->b(Z)V

    .line 212
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->i()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/c/i;->c(Z)[Lcom/xiaomi/stat/a/b;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stat/b/d;->c()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/stat/c/i;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private g()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-static {}, Lcom/xiaomi/stat/b;->o()[Ljava/lang/String;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_1

    array-length v0, v2

    .line 375
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 376
    :goto_1
    if-ge v1, v0, :cond_2

    .line 377
    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 378
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 374
    goto :goto_0

    .line 381
    :cond_2
    return-object v3
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 470
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "mistat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 475
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "uploader"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 486
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 487
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    .line 488
    const-string v1, "UploaderEngine acquire lock for uploader"

    invoke-static {v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    const/4 v0, 0x1

    .line 496
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_1

    .line 498
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 505
    :cond_1
    :goto_0
    return v0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploaderEngine acquire lock for uploader failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    :try_start_3
    const-string v1, "UploaderEngine acquire lock for uploader failed"

    invoke-static {v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_1

    .line 498
    :try_start_4
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 500
    :catch_1
    move-exception v1

    goto :goto_0

    .line 493
    :catch_2
    move-exception v1

    .line 494
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploaderEngine acquire lock for uploader failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 496
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_1

    .line 498
    :try_start_6
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 500
    :catch_3
    move-exception v1

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_3

    .line 498
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 501
    :cond_3
    :goto_1
    throw v0

    .line 500
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 518
    :cond_1
    const-string v0, "UploaderEngine releaseLock lock for uploader"

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploaderEngine releaseLock lock for uploader failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/c/g;->a(Z)V

    .line 467
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 109
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/i;->c()V

    .line 110
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "UploaderEngine postToServer network is not connected "

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    :cond_1
    const-string v0, "UploaderEngine postToServer statistic disable or network disable access! "

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
