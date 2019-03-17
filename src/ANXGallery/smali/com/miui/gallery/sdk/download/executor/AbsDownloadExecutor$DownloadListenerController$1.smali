.class Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;
.super Ljava/lang/Object;
.source "AbsDownloadExecutor.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/listener/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->access$400(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 136
    return-void
.end method

.method public onDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->access$300(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 131
    return-void
.end method

.method public onDownloadStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->access$100(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 121
    return-void
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->access$200(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    .line 126
    return-void
.end method
