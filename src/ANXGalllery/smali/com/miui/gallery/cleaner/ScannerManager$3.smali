.class Lcom/miui/gallery/cleaner/ScannerManager$3;
.super Ljava/lang/Object;
.source "ScannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/ScannerManager;->updateScanResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScannerManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/ScannerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScannerManager$3;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager$3;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->access$100(Lcom/miui/gallery/cleaner/ScannerManager;)Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$3;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScannerManager;->access$200(Lcom/miui/gallery/cleaner/ScannerManager;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->onScanResultUpdate(J)V

    .line 194
    return-void
.end method
