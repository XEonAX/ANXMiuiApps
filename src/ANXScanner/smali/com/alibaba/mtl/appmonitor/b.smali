.class Lcom/alibaba/mtl/appmonitor/b;
.super Ljava/lang/Object;
.source "CleanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:J

.field private static a:Lcom/alibaba/mtl/appmonitor/b;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    .line 23
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/alibaba/mtl/appmonitor/b;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static destroy()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    .line 42
    return-void
.end method

.method static init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 30
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    if-nez v0, :cond_0

    .line 31
    const-string v0, "CleanTask"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "init TimeoutEventManager"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lcom/alibaba/mtl/appmonitor/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    .line 33
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    sget-wide v4, Lcom/alibaba/mtl/appmonitor/b;->a:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 34
    sput-boolean v6, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 46
    const-string v0, "CleanTask"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "clean TimeoutEvent"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/e;->g()V

    .line 48
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    sget-wide v4, Lcom/alibaba/mtl/appmonitor/b;->a:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 49
    return-void
.end method
