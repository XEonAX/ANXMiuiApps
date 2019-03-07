.class Lcom/xiaomi/stat/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/xiaomi/stat/p;->c:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/stat/p;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 801
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/p;->c:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/xiaomi/stat/p;->c:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/stat/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/stat/p;->c:Lcom/xiaomi/stat/e;

    invoke-static {v3}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
