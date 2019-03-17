.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$3;
.super Landroid/content/BroadcastReceiver;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$3;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    const-string v0, "AsyncUpDownloadService"

    const-string/jumbo v1, "sync receiver thread %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$3;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->handleRequest(Landroid/content/Intent;)V

    .line 359
    return-void
.end method
