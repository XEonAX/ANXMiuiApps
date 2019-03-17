.class Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;
.super Ljava/lang/Object;
.source "SyncBar.java"

# interfaces
.implements Lcom/miui/gallery/error/core/ErrorTranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->handleError(Lcom/miui/gallery/error/core/ErrorCode;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

.field final synthetic val$callback:Lcom/miui/gallery/error/core/ErrorTranslateCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;->val$callback:Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslate(Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 1
    .param p1, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->access$402(Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;Lcom/miui/gallery/error/core/ErrorTip;)Lcom/miui/gallery/error/core/ErrorTip;

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;->val$callback:Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;->val$callback:Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/error/core/ErrorTranslateCallback;->onTranslate(Lcom/miui/gallery/error/core/ErrorTip;)V

    .line 652
    :cond_0
    return-void
.end method
