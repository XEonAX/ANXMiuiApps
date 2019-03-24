.class Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;
.super Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToViewDownloadListener"
.end annotation


# instance fields
.field mTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "isPhoto"    # Z

    .line 50
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;->mTargetView:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;-><init>(Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;->setOnDownload(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V

    .line 66
    return-void
.end method
