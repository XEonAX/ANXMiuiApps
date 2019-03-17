.class public Lcom/xiaomi/mistatistic/sdk/b;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/b$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Z


# instance fields
.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
    .locals 6

    .prologue
    .line 71
    const-string v0, "MEH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadException, isManually:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 78
    :cond_2
    const-string v0, "MEH"

    const-string/jumbo v1, "the throwable is null."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_5

    .line 84
    :cond_4
    const-string v0, "MEH"

    const-string v1, "There is no useful call stack."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUploadDebugLogEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 90
    const-string v0, "MEH"

    const-string v1, "not allowed to upload debug or exception log"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_6
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 99
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 106
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTestNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "http://test.data.mistat.xiaomi.srv/micrash"

    .line 107
    :goto_1
    invoke-static {v1, v0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    const-string v4, "device_uuid"

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "device_os"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "app_version"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "app_channel"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "app_start_time"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "app_crash_time"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "crash_exception_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "crash_exception_desc"

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_9

    const-string v1, "OutOfMemoryError"

    :goto_2
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "crash_callstack"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz p1, :cond_7

    .line 119
    const-string v1, "manual"

    const-string/jumbo v2, "true"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_7
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/r;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b$1;

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/mistatistic/sdk/b$1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 106
    :cond_8
    const-string v0, "https://data.mistat.xiaomi.com/micrash"

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    .line 116
    goto :goto_2
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 259
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 263
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    :cond_0
    const/4 v2, 0x0

    .line 267
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, ".exceptiondetail"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 269
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    if-eqz v1, :cond_1

    .line 276
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v1, "MEH"

    const-string v2, "saveException exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 272
    :goto_1
    :try_start_3
    const-string v2, ""

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    if-eqz v1, :cond_1

    .line 276
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 277
    :catch_2
    move-exception v0

    .line 278
    const-string v1, "MEH"

    const-string v2, "saveException exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    .line 276
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 281
    :cond_2
    :goto_3
    throw v0

    .line 277
    :catch_3
    move-exception v1

    .line 278
    const-string v2, "MEH"

    const-string v3, "saveException exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 274
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 271
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    return v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    const/4 v2, 0x0

    .line 288
    const/4 v3, 0x0

    .line 290
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_4

    .line 292
    new-instance v5, Ljava/io/File;

    const-string v1, ".exceptiondetail"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    .line 302
    :goto_0
    if-eqz v2, :cond_3

    .line 304
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    move v0, v3

    .line 310
    :goto_1
    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    .line 314
    :cond_0
    return-object v1

    .line 305
    :catch_0
    move-exception v1

    .line 306
    const-string v2, "MEH"

    const-string v4, "loadException exception"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    move v0, v3

    .line 307
    goto :goto_1

    .line 298
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 299
    :goto_2
    :try_start_3
    const-string v2, "MEH"

    const-string v3, "loadException exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 300
    const/4 v0, 0x1

    .line 302
    if-eqz v1, :cond_2

    .line 304
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v4

    .line 307
    goto :goto_1

    .line 305
    :catch_2
    move-exception v1

    .line 306
    const-string v2, "MEH"

    const-string v3, "loadException exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 307
    goto :goto_1

    .line 302
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 304
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 309
    :cond_1
    :goto_4
    throw v0

    .line 305
    :catch_3
    move-exception v1

    .line 306
    const-string v2, "MEH"

    const-string v3, "loadException exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 302
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 298
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v4

    goto :goto_1

    :cond_3
    move-object v1, v0

    move v0, v3

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".exceptiondetail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 321
    return-void
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 328
    sget v0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 332
    sget v1, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v2

    .line 235
    const-string v3, "crash_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x493e0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 238
    const-string v3, "crash_count"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 239
    const-string v0, "crash_time"

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 239
    invoke-static {v2, v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 243
    :cond_1
    const-string v3, "crash_count"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 245
    if-nez v3, :cond_2

    .line 246
    const-string v4, "crash_time"

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 246
    invoke-static {v2, v4, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 249
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 250
    const-string v4, "crash_count"

    invoke-static {v2, v4, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 251
    const/16 v2, 0xa

    if-le v3, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 177
    const-string v0, "MEH"

    const-string/jumbo v1, "uncaughtException..."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 180
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 182
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    .line 183
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b$a;

    invoke-direct {v0, p2}, Lcom/xiaomi/mistatistic/sdk/b$a;-><init>(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 201
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    const-string v0, "MEH"

    const-string v1, "crazy crash..."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "MEH"

    const-string/jumbo v2, "uncaughtException exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 193
    :cond_3
    :try_start_1
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
