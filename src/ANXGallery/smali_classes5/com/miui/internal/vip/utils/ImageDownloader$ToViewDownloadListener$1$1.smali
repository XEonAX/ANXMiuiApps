.class Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;->onDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;

    .line 57
    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;->this$1:Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;->this$1:Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;

    iget-boolean v2, v2, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;->val$isPhoto:Z

    invoke-static {v0, v1, v2}, Lcom/miui/internal/vip/utils/ImageDownloader;->access$000(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 61
    return-void
.end method
