.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$4;
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
    .line 362
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$4;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$4;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$500(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Z)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$4;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$500(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Z)V

    goto :goto_0
.end method
