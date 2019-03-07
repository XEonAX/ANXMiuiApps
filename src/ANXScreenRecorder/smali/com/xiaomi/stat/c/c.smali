.class public Lcom/xiaomi/stat/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.xiaomi.xmsf"

.field public static final b:Ljava/lang/String; = "com.xiaomi.xmsf.push.service.HttpService"

.field private static final c:Ljava/lang/String; = "UploadMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Landroid/content/ServiceConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ServiceConnection;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/xiaomi/stat/c/d;

    invoke-direct {v0, p2, p0, p1}, Lcom/xiaomi/stat/c/d;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/xiaomi/stat/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/xiaomi/stat/c/c;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/stat/d/i;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v2

    .line 133
    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 143
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 145
    const-string v2, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 147
    if-eqz v4, :cond_0

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    move v3, v1

    :goto_1
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    iget-object v2, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_4

    move v2, v1

    :goto_3
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_5

    :goto_4
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    move v3, v0

    .line 147
    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 46
    if-eqz p2, :cond_0

    .line 47
    invoke-static {p1}, Lcom/xiaomi/stat/d/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "sn"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.HttpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    .line 54
    new-array v2, v4, [Ljava/lang/String;

    .line 56
    if-nez v1, :cond_1

    .line 57
    aget-object v0, v2, v6

    .line 73
    :goto_0
    return-object v0

    .line 60
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 61
    const-class v3, Lcom/xiaomi/stat/c/i;

    monitor-enter v3

    .line 63
    :try_start_0
    const-class v0, Lcom/xiaomi/stat/c/i;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    if-nez v1, :cond_2

    .line 70
    const/4 v0, 0x0

    aput-object v0, v2, v6

    .line 73
    :cond_2
    aget-object v0, v2, v6

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
