.class public Lcom/xiaomi/stat/A;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/A$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MiStatPref"

.field private static final b:Ljava/lang/String; = "true"

.field private static final c:Ljava/lang/String; = "false"

.field private static d:Lcom/xiaomi/stat/A;


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    .line 45
    new-instance v1, Lcom/xiaomi/stat/A$a;

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/A$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/stat/A;->f:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 47
    invoke-direct {p0}, Lcom/xiaomi/stat/A;->b()V

    .line 48
    const-string v1, "mistat_pf"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/A;->c(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/A;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/stat/A;->f:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/stat/A;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/stat/A;->d:Lcom/xiaomi/stat/A;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/xiaomi/stat/A;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/A;->d:Lcom/xiaomi/stat/A;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/xiaomi/stat/A;

    invoke-direct {v0}, Lcom/xiaomi/stat/A;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/A;->d:Lcom/xiaomi/stat/A;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/A;->d:Lcom/xiaomi/stat/A;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 8

    .prologue
    .line 52
    new-instance v0, Lcom/xiaomi/stat/B;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/B;-><init>(Lcom/xiaomi/stat/A;)V

    .line 66
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 68
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v1, 0x0

    .line 76
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    .line 80
    :goto_0
    if-nez v1, :cond_0

    .line 98
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "MiStatPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load data execute failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    :try_start_2
    const-string v0, "MiStatPref"

    const-string v2, "load pref from db"

    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "pref_key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 87
    const-string v2, "pref_value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 88
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "MiStatPref"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,value="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 94
    :catch_1
    move-exception v0

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 78
    :catch_2
    move-exception v0

    goto :goto_0

    .line 77
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/stat/A;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xiaomi/stat/A;->b()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/xiaomi/stat/C;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/C;-><init>(Lcom/xiaomi/stat/A;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 115
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    monitor-enter p0

    .line 201
    const/4 v0, 0x1

    .line 203
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_0
    const-string v1, "MiStatPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-nez v0, :cond_2

    .line 215
    monitor-exit p0

    .line 269
    :goto_1
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_2
    :try_start_1
    new-instance v0, Lcom/xiaomi/stat/D;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/stat/D;-><init>(Lcom/xiaomi/stat/A;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    invoke-static {v1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :goto_2
    :try_start_4
    monitor-exit p0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v1, "MiStatPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 265
    :catch_1
    move-exception v0

    goto :goto_2

    .line 266
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p2

    :try_start_2
    monitor-exit p0

    .line 137
    :goto_0
    return p2

    .line 134
    :catch_0
    move-exception v0

    .line 137
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p2

    :try_start_2
    monitor-exit p0

    .line 125
    :goto_0
    return p2

    .line 122
    :catch_0
    move-exception v0

    .line 125
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p2

    :try_start_2
    monitor-exit p0

    .line 158
    :goto_0
    return-wide p2

    .line 155
    :catch_0
    move-exception v0

    .line 158
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    move-object v0, p2

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xiaomi/stat/A;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 p2, 0x1

    monitor-exit p0

    .line 172
    :goto_0
    return p2

    .line 168
    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 p2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 172
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 181
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/A;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 177
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/A;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 189
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/A;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/stat/A;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 193
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/A;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method
