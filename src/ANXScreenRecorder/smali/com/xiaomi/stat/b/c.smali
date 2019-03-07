.class Lcom/xiaomi/stat/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic b:Lcom/xiaomi/stat/b/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/b/b;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xiaomi/stat/b/c;->b:Lcom/xiaomi/stat/b/b;

    iput-object p2, p0, Lcom/xiaomi/stat/b/c;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->b:Lcom/xiaomi/stat/b/b;

    iget-object v0, v0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    .line 86
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/h;->a(Z)V

    .line 87
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 89
    return-void
.end method
