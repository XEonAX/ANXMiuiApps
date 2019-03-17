.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$5;
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
    .line 374
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$5;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 382
    .local v2, "status":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 384
    .local v1, "isCharging":Z
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$5;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-static {v3, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$600(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Z)V

    .line 386
    .end local v1    # "isCharging":Z
    .end local v2    # "status":I
    :cond_1
    return-void

    .line 382
    .restart local v2    # "status":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
