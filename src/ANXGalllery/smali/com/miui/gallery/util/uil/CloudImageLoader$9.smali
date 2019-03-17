.class Lcom/miui/gallery/util/uil/CloudImageLoader$9;
.super Landroid/os/AsyncTask;
.source "CloudImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;->getStatusAsync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

.field final synthetic val$callBack:Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;

.field final synthetic val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

    iput-object p4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$callBack:Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 796
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$imageType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getStatusSync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 793
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;)V
    .locals 1
    .param p1, "downloadItemStatus"    # Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$callBack:Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->val$callBack:Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;

    invoke-interface {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;->onStatusGotten(Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;)V

    .line 804
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 793
    check-cast p1, Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->onPostExecute(Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;)V

    return-void
.end method
