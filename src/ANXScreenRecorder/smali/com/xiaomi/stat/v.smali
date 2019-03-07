.class Lcom/xiaomi/stat/v;
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
    .line 245
    iput-object p1, p0, Lcom/xiaomi/stat/v;->b:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/xiaomi/stat/v;->a:Z

    invoke-static {v0}, Lcom/xiaomi/stat/b;->b(Z)V

    .line 249
    return-void
.end method
