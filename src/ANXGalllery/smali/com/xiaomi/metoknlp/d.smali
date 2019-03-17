.class Lcom/xiaomi/metoknlp/d;
.super Ljava/lang/Object;
.source "MetokService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic R:Lcom/xiaomi/metoknlp/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/metoknlp/c;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/metoknlp/d;->R:Lcom/xiaomi/metoknlp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaomi/metoknlp/d;->R:Lcom/xiaomi/metoknlp/c;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c;->a(Lcom/xiaomi/metoknlp/c;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/d;->R:Lcom/xiaomi/metoknlp/c;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c;->b(Lcom/xiaomi/metoknlp/c;)V

    goto :goto_0
.end method
