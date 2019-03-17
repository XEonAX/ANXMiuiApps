.class Lcom/miui/gallery/picker/uri/Downloader$1;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/uri/Downloader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/Downloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 134
    .local v0, "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    const-string v1, "Downloader"

    const-string v2, "%s finished"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    iget-object v1, v0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mState:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    sget-object v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;->SUCCESS:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    if-ne v1, v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$000(Lcom/miui/gallery/picker/uri/Downloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$200(Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$200(Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v2}, Lcom/miui/gallery/picker/uri/Downloader;->access$000(Lcom/miui/gallery/picker/uri/Downloader;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/Downloader;->access$100(Lcom/miui/gallery/picker/uri/Downloader;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;->onUpdate(Ljava/util/List;Ljava/util/List;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$300(Lcom/miui/gallery/picker/uri/Downloader;)V

    .line 145
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$1;->this$0:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/Downloader;->access$100(Lcom/miui/gallery/picker/uri/Downloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
