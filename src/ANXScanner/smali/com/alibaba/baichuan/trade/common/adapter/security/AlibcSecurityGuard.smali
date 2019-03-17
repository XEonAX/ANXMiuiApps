.class public Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;
    }
.end annotation


# static fields
.field public static final ERR_CODE:I = 0x1

.field public static final ERR_MSG:Ljava/lang/String; = "\u5b89\u5168\u521d\u59cb\u5316\u5931\u8d25"

.field private static a:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

.field private static b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;


# instance fields
.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/c;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/b;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/b;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    goto :goto_0
.end method

.method private a()Z
    .locals 3

    :try_start_0
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AlibcSecurityGuard"

    const-string v2, "no SecurityGuardManager"

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->a:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->a:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->a:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public analyzeItemId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/security/a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/security/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/security/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized init()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AlibcSecurityGuard"

    const-string v1, "security init satrt"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "AlibcSecurityGuard"

    const-string v1, "SecurityGuard init already"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->checkCommon()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AlibcSecurityGuard"

    const-string v1, "SecurityGuard init fail"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->b:Lcom/alibaba/baichuan/trade/common/adapter/security/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;

    invoke-direct {v0, p0}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;)V

    :goto_1
    const-string v1, "AlibcSecurityGuard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityGuard init = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/n security init end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;

    const/4 v1, 0x1

    const-string v2, "SecurityGuard init error"

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->c:Z

    return v0
.end method
