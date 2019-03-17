.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$1;
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
    .line 317
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$1;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$1;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-static {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$300(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V

    .line 322
    return-void
.end method
