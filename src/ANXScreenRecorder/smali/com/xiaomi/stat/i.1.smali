.class Lcom/xiaomi/stat/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Z)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 538
    iget-object v1, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v1}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    iget-boolean v1, p0, Lcom/xiaomi/stat/i;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v1}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 542
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/stat/a/c;->a(Ljava/lang/String;)V

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v1}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/stat/i;->a:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;I)V

    .line 548
    :cond_2
    return-void
.end method
