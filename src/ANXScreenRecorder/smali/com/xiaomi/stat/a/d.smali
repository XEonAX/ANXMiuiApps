.class Lcom/xiaomi/stat/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/a/l;

.field final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/stat/a/d;->b:Lcom/xiaomi/stat/a/c;

    iput-object p2, p0, Lcom/xiaomi/stat/a/d;->a:Lcom/xiaomi/stat/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaomi/stat/a/d;->b:Lcom/xiaomi/stat/a/c;

    iget-object v1, p0, Lcom/xiaomi/stat/a/d;->a:Lcom/xiaomi/stat/a/l;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    .line 101
    return-void
.end method
