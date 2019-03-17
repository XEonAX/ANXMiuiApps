.class Lcom/miui/gallery/cleaner/ScannerManager$4;
.super Ljava/lang/Object;
.source "ScannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/ScannerManager;->onScanProgress(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScannerManager;

.field final synthetic val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/ScannerManager;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScannerManager$4;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    iput-object p2, p0, Lcom/miui/gallery/cleaner/ScannerManager$4;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager$4;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager$4;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->access$100(Lcom/miui/gallery/cleaner/ScannerManager;)Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$4;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScannerManager;->access$200(Lcom/miui/gallery/cleaner/ScannerManager;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->onScanProgress(J)V

    .line 249
    :cond_0
    return-void
.end method
