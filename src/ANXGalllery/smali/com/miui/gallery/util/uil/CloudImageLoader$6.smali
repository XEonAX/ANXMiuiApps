.class Lcom/miui/gallery/util/uil/CloudImageLoader$6;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;->onFailLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

.field final synthetic val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V
    .locals 5
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v1

    .line 309
    .local v1, "loadingListener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    if-eqz v1, :cond_0

    .line 310
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$500(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    .line 311
    .local v0, "code":Lcom/miui/gallery/error/core/ErrorCode;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$300(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 313
    .end local v0    # "code":Lcom/miui/gallery/error/core/ErrorCode;
    :cond_0
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$500(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v0

    goto :goto_0
.end method
