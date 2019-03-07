.class Lcom/xiaomi/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 614
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    .line 623
    invoke-static {}, Lcom/xiaomi/stat/b;->r()J

    move-result-wide v2

    .line 625
    iget-object v4, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {v4, v2, v3, v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(J)V

    .line 628
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Lcom/xiaomi/stat/a/l;->a()Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
