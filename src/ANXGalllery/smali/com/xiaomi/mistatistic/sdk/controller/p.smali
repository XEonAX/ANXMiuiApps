.class public Lcom/xiaomi/mistatistic/sdk/controller/p;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/i;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/xiaomi/mistatistic/sdk/controller/p;

.field private static c:J


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Lcom/xiaomi/mistatistic/sdk/controller/p;

    .line 25
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/p;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Lcom/xiaomi/mistatistic/sdk/controller/p;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/p;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Lcom/xiaomi/mistatistic/sdk/controller/p;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Lcom/xiaomi/mistatistic/sdk/controller/p;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Lcom/xiaomi/mistatistic/sdk/controller/p;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 212
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/m;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/m;-><init>(JJ)V

    .line 213
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 214
    return-void
.end method

.method private a(Landroid/content/Context;JJ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 189
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v6, "NULL"

    .line 193
    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/l;

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/l;-><init>(JJLjava/lang/String;)V

    .line 194
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 195
    const-string v0, "session_begin"

    invoke-static {p1, v0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 196
    const-string v0, "last_deactivate"

    invoke-static {p1, v0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 197
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v0, "source_path"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/j;

    invoke-direct {v1, p2, v0, p3, p4}, Lcom/xiaomi/mistatistic/sdk/data/j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 204
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 206
    const-string/jumbo v0, "source_path"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "pv_path"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/content/Context;JJ)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 153
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 155
    const-string v1, "last_deactivate"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 156
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const/4 v2, -0x1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 170
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    .line 171
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/i;

    .line 172
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/i;->a()J

    move-result-wide v4

    .line 174
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    cmp-long v2, v4, v8

    if-lez v2, :cond_1

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    .line 176
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/mistatistic/sdk/data/i;->a(Ljava/lang/Long;)V

    .line 178
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 179
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 186
    :cond_1
    :goto_1
    return-void

    .line 161
    :cond_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 162
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/i;

    .line 163
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 161
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "processActDeativated exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 82
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v3

    .line 83
    const-string v2, "session_begin"

    const-wide/16 v4, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 84
    const-string v2, "last_deactivate"

    const-wide/16 v6, 0x0

    invoke-static {v3, v2, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 85
    const-string v2, "pv_path"

    const-string v8, ""

    invoke-static {v3, v2, v8}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-gtz v2, :cond_3

    .line 88
    const-string v2, "session_begin"

    invoke-static {v3, v2, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 90
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;J)V

    .line 102
    :cond_0
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-lez v2, :cond_5

    sub-long v12, v10, v6

    sget-wide v14, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:J

    cmp-long v2, v12, v14

    if-lez v2, :cond_5

    move-object/from16 v2, p0

    .line 105
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;JJ)V

    .line 106
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 108
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 109
    const-string v2, ""

    .line 112
    :goto_1
    const-string v4, "session_begin"

    invoke-static {v3, v4, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 113
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;J)V

    .line 117
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v4, "pv_path"

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v2, "source_path"

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string/jumbo v4, "source_path"

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_2
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/i;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/mistatistic/sdk/data/i;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_3
    return-void

    .line 91
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-gtz v2, :cond_0

    .line 93
    const-string v2, "session_begin"

    invoke-static {v3, v2, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 94
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;J)V

    .line 95
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 98
    const-string v8, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    const-string v3, "processActActivated exception: "

    invoke-static {v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v2, v8

    goto :goto_1

    :cond_5
    move-object v2, v8

    goto :goto_2
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-object p2

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/content/Context;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "Session manager V1 is disabled."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:Landroid/os/Handler;

    const v1, 0x1df5e77

    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/content/Context;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Session manager V1 is disabled."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:Landroid/os/Handler;

    const v1, 0x1df5e77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/p$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    goto :goto_0
.end method
