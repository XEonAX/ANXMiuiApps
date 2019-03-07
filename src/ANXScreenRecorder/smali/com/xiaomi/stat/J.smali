.class public Lcom/xiaomi/stat/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Lcom/xiaomi/stat/e;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stat/J;->c:Z

    .line 10
    iput-object p1, p0, Lcom/xiaomi/stat/J;->a:Lcom/xiaomi/stat/e;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/xiaomi/stat/J;

    if-eqz v1, :cond_0

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    iput-object v0, p0, Lcom/xiaomi/stat/J;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 20
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/xiaomi/stat/J;->c:Z

    .line 25
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/xiaomi/stat/J;->c:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaomi/stat/J;->a:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/J;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/xiaomi/stat/J;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    :cond_1
    return-void
.end method
