.class public Lcom/alibaba/alibclinkpartner/d/e/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->b:Z

    return-void
.end method

.method public static a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/d/e/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/d/e/c;->b(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/d/e/c;->c(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto :goto_0
.end method

.method private static declared-synchronized a()Z
    .locals 6

    const-class v1, Lcom/alibaba/alibclinkpartner/d/e/c;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "com.ut.mini.UTAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->b:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->a:Z

    :cond_0
    sget-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ALPUserTraceManager"

    const-string v3, "isUTExsist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ut do not exist , errmsg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/alibclinkpartner/d/e/c;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "com.ut.mini.UTHitBuilders$UTCustomHitBuilder"

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "java.lang.String"

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/h;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.ut.mini.UTHitBuilders$UTCustomHitBuilder"

    const-string v2, "setProperties"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "java.util.Map"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;->b()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v0, v4}, Lcom/alibaba/alibclinkpartner/j/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.ut.mini.UTHitBuilders$UTCustomHitBuilder"

    const-string v2, "build"

    invoke-static {v1, v2, v6, v0, v6}, Lcom/alibaba/alibclinkpartner/j/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "com.ut.mini.UTAnalytics"

    const-string v2, "getInstance"

    invoke-static {v1, v2, v6, v6, v6}, Lcom/alibaba/alibclinkpartner/j/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.ut.mini.UTAnalytics"

    const-string v3, "getTracker"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "java.lang.String"

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "ALPLinkPartnerSDK"

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v1, v5}, Lcom/alibaba/alibclinkpartner/j/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.ut.mini.UTTracker"

    const-string v3, "send"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "java.util.Map"

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v2, v3, v4, v1, v5}, Lcom/alibaba/alibclinkpartner/j/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static c(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V
    .locals 2

    invoke-static {}, Lcom/alibaba/alibclinkpartner/d/e/a;->a()Lcom/alibaba/alibclinkpartner/d/e/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/d/e/a;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/d/e/a;

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/d/e/a;->a(Ljava/util/Map;)Lcom/alibaba/alibclinkpartner/d/e/a;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/e/a;->b()Z

    return-void
.end method
