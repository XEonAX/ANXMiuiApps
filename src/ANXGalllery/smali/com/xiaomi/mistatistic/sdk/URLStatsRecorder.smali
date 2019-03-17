.class public Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;
.super Ljava/lang/Object;
.source "URLStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->c:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->d:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->e:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    .line 45
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "file"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "ftp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string v1, "jar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->c:Ljava/util/List;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    if-nez p0, :cond_2

    .line 134
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addHttpEvent: httpEvent is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a()Lcom/xiaomi/mistatistic/sdk/controller/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    goto :goto_0
.end method

.method public static enableAutoRecord()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 105
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 73
    :cond_2
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v4, "www.xiaomi.com"

    const-string v5, ""

    invoke-direct {v2, v0, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    .line 103
    const-string v1, "USR"

    const-string v2, "failed to enable url interceptor"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_3
    :goto_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 78
    :cond_4
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    .line 79
    const-class v0, Ljava/net/URL;

    const-string v1, "handlers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 85
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URLStreamHandler;

    .line 87
    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 81
    :cond_5
    const-class v0, Ljava/net/URL;

    const-string/jumbo v1, "streamHandlers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_3

    .line 89
    :cond_6
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;-><init>()V

    invoke-static {v0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static isRecordEnabled()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
