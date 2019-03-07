.class Lcom/xiaomi/stat/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/stat/MiStatParams;

.field final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;ZLcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/xiaomi/stat/z;->c:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/z;->a:Z

    iput-object p3, p0, Lcom/xiaomi/stat/z;->b:Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 469
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/z;->c:Lcom/xiaomi/stat/e;

    iget-boolean v1, p0, Lcom/xiaomi/stat/z;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/xiaomi/stat/z;->c:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/z;->b:Lcom/xiaomi/stat/MiStatParams;

    iget-boolean v2, p0, Lcom/xiaomi/stat/z;->a:Z

    iget-object v3, p0, Lcom/xiaomi/stat/z;->c:Lcom/xiaomi/stat/e;

    invoke-static {v3}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/MiStatParams;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
