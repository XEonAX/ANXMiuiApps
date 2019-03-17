.class Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;
.super Ljava/lang/Object;
.source "SyncBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SyncBar$DownloadManager;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

.field final synthetic val$tip:Lcom/miui/gallery/error/core/ErrorTip;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager;Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;->val$tip:Lcom/miui/gallery/error/core/ErrorTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;->val$tip:Lcom/miui/gallery/error/core/ErrorTip;

    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;->this$0:Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/error/core/ErrorTip;->action(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorActionCallback;)V

    .line 612
    return-void
.end method
