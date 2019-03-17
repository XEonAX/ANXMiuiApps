.class public Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop$1;,
        Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop$a;
    }
.end annotation


# static fields
.field public static final ERR_CODE:I = 0x3

.field public static final ERR_MSG:Ljava/lang/String; = "mtop\u521d\u59cb\u5316\u5931\u8d25"

.field public static final MTOP_INIT_AD:I = 0x2

.field public static final MTOP_INIT_FAIL:I = 0x1

.field public static final MTOP_INIT_SUCCESS:I


# instance fields
.field private a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    :try_start_0
    const-string v0, "mtopsdk.mtop.intf.Mtop"

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

    const-string v1, "AlibcMtop"

    const-string v2, "no mtop"

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop$a;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    return-object v0
.end method


# virtual methods
.method public changeEnvMode(Lcom/alibaba/baichuan/trade/common/Environment;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->changeEnvMode(Lcom/alibaba/baichuan/trade/common/Environment;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized init()I
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->init()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTTID(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->setTTID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public turnOffDebug()V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->turnOffDebug()V

    :cond_0
    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;->turnOnDebug()V

    :cond_0
    return-void
.end method
