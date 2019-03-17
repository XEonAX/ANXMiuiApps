.class final Lcom/xiaomi/scanner/util/ScannerThreadPool$1;
.super Ljava/lang/Object;
.source "ScannerThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v2, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;

    .line 61
    .local v0, "call":Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;, "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<TT;>;"
    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    const-string v3, "poolExecute callback null"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onBackground()Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "result":Ljava/lang/Object;, "TT;"
    new-instance v2, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;-><init>(Lcom/xiaomi/scanner/util/ScannerThreadPool$1;Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
