.class final Lcom/xiaomi/stat/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    .line 48
    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    .line 49
    return-void
.end method
