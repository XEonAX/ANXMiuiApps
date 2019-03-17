.class Lcom/miui/gallery/util/uil/CloudImageLoader$7;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;->onProgressUpdate(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
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
    .line 320
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V
    .locals 8
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    move-result-object v0

    .line 324
    .local v0, "progressListener":Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v2}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$300(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v4}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$600(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;->val$wrapper:Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    invoke-static {v5}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$700(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;->onProgressUpdate(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;II)V

    .line 327
    :cond_0
    return-void
.end method
