.class Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;
.super Ljava/lang/Object;
.source "KingSoftAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->stopScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$300(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$402(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;I)I

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$300(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$500(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 192
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$502(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$302(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 195
    :cond_0
    return-void
.end method
