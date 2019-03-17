.class public Lcom/xiaomi/mistatistic/sdk/controller/q;
.super Ljava/lang/Object;
.source "SessionManagerV2.java"


# static fields
.field private static volatile a:Lcom/xiaomi/mistatistic/sdk/controller/q;

.field private static b:Z


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/q$1;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/q$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/q;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/q;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJZ)V
    .locals 8

    .prologue
    .line 179
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v7, "NULL"

    .line 183
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;JJZLjava/lang/String;)V

    .line 184
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 185
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 170
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 171
    const-string v1, "action_begin"

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 172
    const-string v1, "action_end"

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 173
    const-string v1, "action_auto_end"

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 174
    const-string v1, "action_name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 85
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 86
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v7

    .line 87
    const-string v0, "action_begin"

    const-wide/16 v2, 0x0

    invoke-static {v7, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 88
    const-string v0, "action_end"

    const-wide/16 v4, 0x0

    invoke-static {v7, v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v10

    .line 89
    const-string v0, "action_auto_end"

    const-wide/16 v4, 0x0

    invoke-static {v7, v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 90
    const-string v0, "action_name"

    const-string v1, ""

    invoke-static {v7, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    cmp-long v0, v2, v12

    if-lez v0, :cond_0

    cmp-long v0, v10, v12

    if-nez v0, :cond_0

    .line 95
    const-string v0, "SMV2"

    const-string v6, "Record the last unusual PA event with auto-end."

    invoke-static {v0, v6}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Ljava/lang/String;JJZ)V

    .line 105
    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    cmp-long v0, v2, v12

    if-lez v0, :cond_1

    cmp-long v0, v10, v12

    if-lez v0, :cond_1

    .line 108
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    .line 109
    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->j(J)Z

    move-result v0

    .line 110
    const-string v4, "SMV2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check the last pa event whether been inserted to db. actionBeginTs ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isInserted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-nez v0, :cond_1

    .line 113
    const-string v0, "SMV2"

    const-string v4, "Record the last unusual PA event without auto-end."

    invoke-static {v0, v4}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Ljava/lang/String;JJZ)V

    .line 119
    :cond_1
    const-string v0, "action_begin"

    invoke-static {v7, v0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 120
    const-string v0, "action_end"

    const-wide/16 v2, 0x0

    invoke-static {v7, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 121
    const-string v0, "action_auto_end"

    const-wide/16 v2, 0x0

    invoke-static {v7, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 122
    const-string v0, "action_name"

    invoke-static {v7, v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "processActActivated exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 145
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 146
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 147
    const-string v1, "action_begin"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 148
    const-string v1, "action_name"

    const-string v6, ""

    invoke-static {v0, v1, v6}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 155
    const-string v0, "SMV2"

    const-string v1, "The actName of recordPageEnd is NOT equal to actName of recordPageStart."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v6, "action_end"

    invoke-static {v0, v6, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    .line 162
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "processActDeactivated exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/q$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/q$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 81
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/q$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/q$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 141
    return-void
.end method
