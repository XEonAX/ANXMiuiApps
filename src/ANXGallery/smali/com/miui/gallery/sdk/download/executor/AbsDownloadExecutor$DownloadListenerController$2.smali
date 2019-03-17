.class Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$2;
.super Ljava/lang/Object;
.source "AbsDownloadExecutor.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$2;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "curSize"    # J
    .param p5, "totalSize"    # J

    .prologue
    .line 142
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$2;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->access$500(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V

    .line 143
    return-void
.end method
