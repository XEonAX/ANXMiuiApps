.class Lcom/miui/gallery/scanner/MediaScannerService$1;
.super Ljava/lang/Object;
.source "MediaScannerService.java"

# interfaces
.implements Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScannerService;->onCreate()V
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
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$1;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTasksExecuted()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "MediaScannerService"

    const-string v1, "onAllTasksExecuted"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService$1;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-virtual {v0}, Lcom/miui/gallery/scanner/MediaScannerService;->stopSelf()V

    .line 72
    return-void
.end method
