.class Lcom/xiaomi/stat/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/q;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/xiaomi/stat/s;->a:Lcom/xiaomi/stat/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->c()V

    .line 194
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/c/i;->a(Z)V

    .line 195
    return-void
.end method
