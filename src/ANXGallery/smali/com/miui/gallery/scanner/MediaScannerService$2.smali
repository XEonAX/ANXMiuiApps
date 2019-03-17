.class Lcom/miui/gallery/scanner/MediaScannerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/scanner/MediaScannerService;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$2;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 495
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$2;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v0}, Lcom/miui/gallery/scanner/MediaScannerService;->access$200(Lcom/miui/gallery/scanner/MediaScannerService;)Lcom/miui/gallery/scanner/ScanTaskManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelByPriority(I)V

    .line 498
    const-string v0, "MediaScannerService"

    const-string v1, "All external storage are unmounted, cancel cleanup task"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method
