.class Lcom/miui/internal/vip/utils/ImageDownloader$3;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dirName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$dirName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$listener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$dirName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/internal/vip/utils/ImageDownloader;->getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->isBitmap(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 142
    .local v1, "needDownload":Z
    if-nez v1, :cond_1

    .line 143
    iget-object v2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$listener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    iget-object v2, v2, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    invoke-interface {v2, v0}, Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;->onDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$dirName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/internal/vip/utils/ImageDownloader$3;->val$listener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    invoke-static {v2, v3, v0, v4}, Lcom/miui/internal/vip/utils/ImageDownloader;->downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    .line 147
    :goto_0
    return-void
.end method
