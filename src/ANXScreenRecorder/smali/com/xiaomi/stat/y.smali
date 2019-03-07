.class Lcom/xiaomi/stat/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/y;->a:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/xiaomi/stat/y;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaomi/stat/y;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 407
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/y;->a:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/xiaomi/stat/y;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaomi/stat/y;->c:Z

    iget-object v4, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/e;

    invoke-static {v4}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
