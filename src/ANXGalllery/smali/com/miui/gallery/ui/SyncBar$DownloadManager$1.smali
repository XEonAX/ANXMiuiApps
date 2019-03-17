.class Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;
.super Ljava/lang/Object;
.source "SyncBar.java"

# interfaces
.implements Lcom/miui/gallery/error/core/ErrorTranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SyncBar$DownloadManager;->onDownloadComplete(Ljava/util/List;Ljava/util/List;Lcom/miui/gallery/error/core/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslate(Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 9
    .param p1, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->access$200(Lcom/miui/gallery/ui/SyncBar$DownloadManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 535
    if-eqz p1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/error/core/ErrorTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 537
    .local v8, "error":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c016b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 540
    .local v7, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    new-instance v0, Lcom/miui/gallery/ui/SyncBar$PanelData;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SyncBar$PanelData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0, v4}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {p1}, Lcom/miui/gallery/error/core/ErrorTip;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->access$302(Lcom/miui/gallery/ui/SyncBar$DownloadManager;Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorCode;

    .line 548
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "error":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    new-instance v1, Lcom/miui/gallery/ui/SyncBar$PanelData;

    iget-object v6, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/ui/SyncBar$PanelData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1, v5}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;Z)Z

    goto :goto_0
.end method
