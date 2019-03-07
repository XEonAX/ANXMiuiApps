.class Lcom/xiaomi/stat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/f;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xiaomi/stat/g;->a:Lcom/xiaomi/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    .line 116
    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    .line 117
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/stat/b/h;->a(Z)V

    .line 118
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->b()V

    .line 120
    return-void
.end method
