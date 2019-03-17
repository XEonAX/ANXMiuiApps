.class Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;
.super Ljava/lang/Object;
.source "ScannerThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/ScannerThreadPool$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/util/ScannerThreadPool$1;

.field final synthetic val$call:Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/util/ScannerThreadPool$1;Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/util/ScannerThreadPool$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;->this$0:Lcom/xiaomi/scanner/util/ScannerThreadPool$1;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;->val$call:Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;

    iput-object p3, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;->val$call:Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ScannerThreadPool$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
