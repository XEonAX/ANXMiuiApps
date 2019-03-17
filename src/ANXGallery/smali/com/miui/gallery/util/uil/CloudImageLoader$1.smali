.class Lcom/miui/gallery/util/uil/CloudImageLoader$1;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/listener/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 183
    const-string v0, "CloudImageLoader"

    const-string v1, "onDownloadCancel %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    iget-object v3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {v2, v3, p1, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$100(Lcom/miui/gallery/util/uil/CloudImageLoader;ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    .line 185
    return-void
.end method

.method public onDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 177
    const-string v0, "CloudImageLoader"

    const-string v1, "onDownloadFail %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    iget-object v3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$100(Lcom/miui/gallery/util/uil/CloudImageLoader;ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    .line 179
    return-void
.end method

.method public onDownloadStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 165
    const-string v0, "CloudImageLoader"

    const-string v1, "onAddItem %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    iget-object v3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {v2, v3, p1, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$100(Lcom/miui/gallery/util/uil/CloudImageLoader;ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    .line 167
    return-void
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .prologue
    .line 171
    const-string v0, "CloudImageLoader"

    const-string v1, "onDownloadSuccess %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    iget-object v3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$100(Lcom/miui/gallery/util/uil/CloudImageLoader;ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    .line 173
    return-void
.end method
