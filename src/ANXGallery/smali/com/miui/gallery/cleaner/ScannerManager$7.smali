.class Lcom/miui/gallery/cleaner/ScannerManager$7;
.super Ljava/lang/Object;
.source "ScannerManager.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScannerManager;
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
    .line 301
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScannerManager$7;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(IJLcom/miui/gallery/cleaner/ScanResult;)V
    .locals 6
    .param p1, "scannerType"    # I
    .param p2, "deletedId"    # J
    .param p4, "result"    # Lcom/miui/gallery/cleaner/ScanResult;

    .prologue
    const-wide/16 v4, 0x0

    .line 304
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$7;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v1, p1}, Lcom/miui/gallery/cleaner/ScannerManager;->access$900(Lcom/miui/gallery/cleaner/ScannerManager;I)V

    .line 310
    :goto_0
    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$7;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScannerManager;->access$400(Lcom/miui/gallery/cleaner/ScannerManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/BaseScanner;

    .line 312
    .local v0, "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    iget v2, v0, Lcom/miui/gallery/cleaner/BaseScanner;->mType:I

    if-eq v2, p1, :cond_1

    .line 313
    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/cleaner/BaseScanner;->onMediaItemDeleted(J)V

    goto :goto_1

    .line 307
    .end local v0    # "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$7;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v1, p1, p4}, Lcom/miui/gallery/cleaner/ScannerManager;->access$1000(Lcom/miui/gallery/cleaner/ScannerManager;ILcom/miui/gallery/cleaner/ScanResult;)V

    goto :goto_0

    .line 317
    :cond_3
    return-void
.end method
