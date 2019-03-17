.class Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;
.super Ljava/lang/Object;
.source "MiuiCameraCaptureReceiver.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;

    iput-object p2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x1

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "start":J
    iget-object v1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;->val$filePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 106
    sget-boolean v1, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 108
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "triggerScan"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "media_scanner"

    const-string v4, "camera_capture_receiver_time_consuming"

    invoke-static {v1, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
