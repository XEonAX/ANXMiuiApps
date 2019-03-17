.class Lcom/miui/gallery/cleaner/ScannerManager$5;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "ScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScannerManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/ScannerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScannerManager$5;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Void;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager$5;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v2}, Lcom/miui/gallery/cleaner/ScannerManager;->access$100(Lcom/miui/gallery/cleaner/ScannerManager;)Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager$5;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v3}, Lcom/miui/gallery/cleaner/ScannerManager;->access$200(Lcom/miui/gallery/cleaner/ScannerManager;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->onScanFinish(J)V

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScannerManager$5;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v4}, Lcom/miui/gallery/cleaner/ScannerManager;->access$300(Lcom/miui/gallery/cleaner/ScannerManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 260
    .local v1, "time":I
    const-string/jumbo v2, "timeCost"

    int-to-float v3, v1

    sget-object v4, Lcom/miui/gallery/cleaner/ScannerManager;->TIME_COST_STAGE:[I

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v2, "cleaner"

    const-string v3, "cleaner_scan_finish"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "time":I
    :cond_0
    return-void
.end method
