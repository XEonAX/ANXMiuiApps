.class public final Lcom/alipay/sdk/tid/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/tid/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "alipay_tid_storage"

.field public static final b:Ljava/lang/String; = "tidinfo"

.field public static final c:Ljava/lang/String; = "tidflag"

.field public static final d:Ljava/lang/String; = "tid"

.field public static final e:Ljava/lang/String; = "client_key"

.field public static final f:Ljava/lang/String; = "timestamp"

.field public static final g:Ljava/lang/String; = "vimei"

.field public static final h:Ljava/lang/String; = "vimsi"

.field public static final i:Ljava/lang/String; = "com.alipay.android.app.CASHIER_TID_CHANGED"

.field public static final o:Ljava/lang/String; = "virtualImeiAndImsi"

.field public static final p:Ljava/lang/String; = "virtual_imei"

.field public static final q:Ljava/lang/String; = "virtual_imsi"

.field private static r:Landroid/content/Context;

.field private static s:Lcom/alipay/sdk/tid/c;


# instance fields
.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/tid/c;->t:Z

    .line 275
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    const-class v5, Lcom/alipay/sdk/tid/c;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lcom/alipay/sdk/tid/c;->s:Lcom/alipay/sdk/tid/c;

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Lcom/alipay/sdk/tid/c;

    invoke-direct {v2}, Lcom/alipay/sdk/tid/c;-><init>()V

    sput-object v2, Lcom/alipay/sdk/tid/c;->s:Lcom/alipay/sdk/tid/c;

    .line 52
    :cond_0
    sget-object v2, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    if-nez v2, :cond_5

    .line 53
    sget-object v6, Lcom/alipay/sdk/tid/c;->s:Lcom/alipay/sdk/tid/c;

    .line 1065
    if-eqz p0, :cond_1

    .line 1067
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 1070
    :cond_1
    iget-boolean v2, v6, Lcom/alipay/sdk/tid/c;->t:Z

    if-nez v2, :cond_5

    .line 1073
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/alipay/sdk/tid/c;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2427
    :try_start_1
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidflag"

    .line 4024
    sget-object v4, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 3278
    if-nez v4, :cond_6

    .line 1434
    :goto_0
    if-nez v1, :cond_4

    .line 1437
    const-string v1, "alipay_tid_storage"

    const-string v2, "tidflag"

    const-string v3, "true"

    .line 5358
    invoke-static {v1, v2, v3}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v1

    .line 6031
    iget-object v2, v1, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    .line 6046
    iget-object v3, v1, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 1443
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1446
    const-string v1, "virtualImeiAndImsi"

    const-string v7, "virtual_imei"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1448
    const-string v7, "virtualImeiAndImsi"

    const-string v8, "virtual_imsi"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1450
    const-string v8, "TidCompatible::SyncTid02: %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    const/4 v10, 0x4

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1454
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x40

    if-ne v8, v9, :cond_4

    .line 1459
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1460
    invoke-static {}, Lcom/alipay/sdk/tid/c;->i()Ljava/lang/String;

    move-result-object v1

    .line 6244
    :cond_3
    invoke-static {v2, v3, v1, v7}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 6248
    iput-object v2, v6, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 6249
    iput-object v3, v6, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 6250
    iput-object v1, v6, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 6251
    iput-object v7, v6, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    .line 6252
    if-nez v4, :cond_7

    .line 6253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/sdk/tid/c;->l:J

    .line 6257
    :goto_1
    invoke-direct {v6}, Lcom/alipay/sdk/tid/c;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7109
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 7114
    :try_start_3
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidinfo"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 7116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 7117
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7118
    const-string v2, "tid"

    const-string v3, ""

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 7119
    :try_start_4
    const-string v2, "client_key"

    const-string v3, ""

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 7120
    :try_start_5
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 7121
    :try_start_6
    const-string v1, "vimei"

    const-string v8, ""

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    .line 7122
    :try_start_7
    const-string v8, "vimsi"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 7128
    :goto_3
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TidStorage.load "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7131
    invoke-static {v4, v3, v1, v0}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7132
    invoke-virtual {v6}, Lcom/alipay/sdk/tid/c;->d()V

    .line 55
    :cond_5
    :goto_4
    sget-object v0, Lcom/alipay/sdk/tid/c;->s:Lcom/alipay/sdk/tid/c;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v5

    return-object v0

    .line 5024
    :cond_6
    :try_start_9
    sget-object v1, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 3281
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3282
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 6255
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/sdk/tid/c;->l:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 7134
    :cond_8
    :try_start_a
    iput-object v4, v6, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 7135
    iput-object v3, v6, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 7136
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/sdk/tid/c;->l:J

    .line 7137
    iput-object v1, v6, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 7138
    iput-object v0, v6, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_5
    move-exception v7

    goto :goto_3

    :cond_9
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto/16 :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 244
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    .line 252
    if-nez p5, :cond_1

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 257
    :goto_1
    invoke-direct {p0}, Lcom/alipay/sdk/tid/c;->o()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 70
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/sdk/tid/c;->t:Z

    if-eqz v2, :cond_1

    .line 13132
    :goto_0
    return-void

    .line 73
    :cond_1
    iput-boolean v3, p0, Lcom/alipay/sdk/tid/c;->t:Z

    .line 8427
    :try_start_0
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidflag"

    .line 10024
    sget-object v4, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 9278
    if-nez v4, :cond_5

    .line 7434
    :goto_1
    if-nez v1, :cond_4

    .line 7437
    const-string v1, "alipay_tid_storage"

    const-string v2, "tidflag"

    const-string v3, "true"

    .line 11358
    invoke-static {v1, v2, v3}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7440
    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v1

    .line 12031
    iget-object v2, v1, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    .line 12046
    iget-object v3, v1, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 7443
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 7446
    const-string v1, "virtualImeiAndImsi"

    const-string v5, "virtual_imei"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 7448
    const-string v5, "virtualImeiAndImsi"

    const-string v6, "virtual_imsi"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 7450
    const-string v6, "TidCompatible::SyncTid02: %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7454
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_4

    .line 7459
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7460
    invoke-static {}, Lcom/alipay/sdk/tid/c;->i()Ljava/lang/String;

    move-result-object v1

    .line 12244
    :cond_3
    invoke-static {v2, v3, v1, v5}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 12248
    iput-object v2, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 12249
    iput-object v3, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 12250
    iput-object v1, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 12251
    iput-object v5, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    .line 12252
    if-nez v4, :cond_6

    .line 12253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 12257
    :goto_2
    invoke-direct {p0}, Lcom/alipay/sdk/tid/c;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13109
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 13114
    :try_start_1
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidinfo"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 13116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 13117
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13118
    const-string v2, "tid"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 13119
    :try_start_2
    const-string v2, "client_key"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 13120
    :try_start_3
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 13121
    :try_start_4
    const-string v1, "vimei"

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 13122
    :try_start_5
    const-string v6, "vimsi"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    .line 13128
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TidStorage.load "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13131
    invoke-static {v4, v3, v1, v0}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 13132
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->d()V

    goto/16 :goto_0

    .line 11024
    :cond_5
    :try_start_6
    sget-object v1, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 9281
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9282
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_1

    .line 12255
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/tid/c;->l:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 13134
    :cond_7
    iput-object v4, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 13135
    iput-object v3, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 13136
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 13137
    iput-object v1, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 13138
    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_5
    move-exception v5

    goto :goto_4

    :cond_8
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_4
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TidStorage.getVirtualImei "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TidStorage.getVirtualImsi "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 107
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 114
    :try_start_0
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidinfo"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v2, "tid"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 119
    :try_start_1
    const-string v2, "client_key"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 120
    :try_start_2
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 121
    :try_start_3
    const-string v1, "vimei"

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 122
    :try_start_4
    const-string v6, "vimsi"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    .line 128
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TidStorage.load "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v4, v3, v1, v0}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->d()V

    .line 140
    :goto_1
    return-void

    .line 134
    :cond_0
    iput-object v4, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 135
    iput-object v3, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 137
    iput-object v1, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v0

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_4
    move-exception v5

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_0
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    .line 201
    const-string v0, "TidStorage::delete > %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 202
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 201
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->d()V

    .line 205
    return-void
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->c()Z

    move-result v0

    return v0
.end method

.method private m()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static n()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 262
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string v1, "tid"

    iget-object v2, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "client_key"

    iget-object v2, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/alipay/sdk/tid/c;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    const-string v1, "vimei"

    iget-object v2, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "vimsi"

    iget-object v2, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "alipay_tid_storage"

    const-string v2, "tidinfo"

    .line 269
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static p()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 427
    const-string v1, "alipay_tid_storage"

    const-string v2, "tidflag"

    .line 16024
    sget-object v3, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 15278
    if-nez v3, :cond_0

    .line 15279
    :goto_0
    return v0

    .line 17024
    :cond_0
    sget-object v3, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 15281
    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15282
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private q()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 17427
    const-string v0, "alipay_tid_storage"

    const-string v2, "tidflag"

    .line 19024
    sget-object v3, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 18278
    if-nez v3, :cond_1

    move v0, v1

    .line 434
    :goto_0
    if-eqz v0, :cond_2

    .line 464
    :cond_0
    :goto_1
    return-void

    .line 20024
    :cond_1
    sget-object v3, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 18281
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18282
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 437
    :cond_2
    const-string v0, "alipay_tid_storage"

    const-string v2, "tidflag"

    const-string v3, "true"

    .line 20358
    invoke-static {v0, v2, v3}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v0

    .line 21031
    iget-object v2, v0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    .line 21046
    iget-object v3, v0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 443
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 446
    const-string v0, "virtualImeiAndImsi"

    const-string v5, "virtual_imei"

    invoke-static {v0, v5, v1}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v5, "virtualImeiAndImsi"

    const-string v6, "virtual_imsi"

    invoke-static {v5, v6, v1}, Lcom/alipay/sdk/tid/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 450
    const-string v6, "TidCompatible::SyncTid02: %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const/4 v1, 0x1

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    const/4 v1, 0x3

    aput-object v0, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 454
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x40

    if-ne v1, v6, :cond_0

    .line 459
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 460
    invoke-static {}, Lcom/alipay/sdk/tid/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 21244
    :cond_4
    invoke-static {v2, v3, v0, v5}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21248
    iput-object v2, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 21249
    iput-object v3, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 21250
    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 21251
    iput-object v5, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    .line 21252
    if-nez v4, :cond_5

    .line 21253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 21257
    :goto_2
    invoke-direct {p0}, Lcom/alipay/sdk/tid/c;->o()V

    goto :goto_1

    .line 21255
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TidStorage.getTid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clientKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iput-object p1, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 235
    invoke-direct {p0}, Lcom/alipay/sdk/tid/c;->o()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TidStorage.getClientKey "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    .line 13189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 13190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 13191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/c;->l:J

    .line 165
    invoke-static {}, Lcom/alipay/sdk/tid/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/alipay/sdk/tid/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    .line 167
    const-string v0, "alipay_tid_storage"

    const-string v1, "tidinfo"

    .line 14024
    sget-object v2, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 13286
    if-eqz v2, :cond_1

    .line 15024
    sget-object v2, Lcom/alipay/sdk/tid/c;->r:Landroid/content/Context;

    .line 13289
    const/4 v3, 0x0

    .line 13290
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13291
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :cond_1
    return-void
.end method
