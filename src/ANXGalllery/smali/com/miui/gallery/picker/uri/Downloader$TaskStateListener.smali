.class public Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;
.super Lcom/miui/gallery/util/uil/CloudImageLoadingListenerAdapter;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskStateListener"
.end annotation


# instance fields
.field private mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

.field final synthetic this$0:Lcom/miui/gallery/picker/uri/Downloader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/Downloader;Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/uri/Downloader;
    .param p2, "task"    # Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-direct {p0}, Lcom/miui/gallery/util/uil/CloudImageLoadingListenerAdapter;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 175
    return-void
.end method


# virtual methods
.method public onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    sget-object v5, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;->SUCCESS:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    invoke-direct {v3, v4, v5, p4}, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;-><init>(Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method

.method public onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    sget-object v5, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;->CANCELLED:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;-><init>(Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method

.method public onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    sget-object v5, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;->FAILED:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;-><init>(Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method
