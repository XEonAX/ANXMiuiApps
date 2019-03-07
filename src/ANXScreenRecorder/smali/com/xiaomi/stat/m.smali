.class Lcom/xiaomi/stat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/HttpEvent;

.field final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/HttpEvent;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/m;->a:Lcom/xiaomi/stat/HttpEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 683
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/m;->a:Lcom/xiaomi/stat/HttpEvent;

    iget-object v2, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/HttpEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
