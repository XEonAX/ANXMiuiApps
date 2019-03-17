.class final Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;
.super Ljava/lang/Object;
.source "BatchDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/listener/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/download/BatchDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Lcom/miui/gallery/cloud/download/BatchDownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .param p2, "x1"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$1;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;-><init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)V

    return-void
.end method


# virtual methods
.method public onDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$1400(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 573
    return-void
.end method

.method public onDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$1300(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 568
    return-void
.end method

.method public onDownloadStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 558
    return-void
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$1200(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 563
    return-void
.end method
