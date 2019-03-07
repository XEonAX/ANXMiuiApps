.class Lcom/xiaomi/stat/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/stat/MiStatParams;

.field final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/x;->a:Z

    iput-object p3, p0, Lcom/xiaomi/stat/x;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/stat/x;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/stat/x;->d:Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 343
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    iget-boolean v1, p0, Lcom/xiaomi/stat/x;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/x;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/stat/x;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/stat/x;->d:Lcom/xiaomi/stat/MiStatParams;

    iget-object v4, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    .line 352
    invoke-static {v4}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaomi/stat/x;->a:Z

    .line 351
    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Ljava/lang/String;Z)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
