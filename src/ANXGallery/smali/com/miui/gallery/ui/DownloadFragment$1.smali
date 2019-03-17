.class Lcom/miui/gallery/ui/DownloadFragment$1;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DownloadFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DownloadFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DownloadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/DownloadFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/ui/DownloadFragment$1;->this$0:Lcom/miui/gallery/ui/DownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment$1;->this$0:Lcom/miui/gallery/ui/DownloadFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/DownloadFragment;->access$000(Lcom/miui/gallery/ui/DownloadFragment;)Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment$1;->this$0:Lcom/miui/gallery/ui/DownloadFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/DownloadFragment;->access$000(Lcom/miui/gallery/ui/DownloadFragment;)Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;->onCanceled()V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment$1;->this$0:Lcom/miui/gallery/ui/DownloadFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/DownloadFragment;->access$002(Lcom/miui/gallery/ui/DownloadFragment;Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;)Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment$1;->this$0:Lcom/miui/gallery/ui/DownloadFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DownloadFragment;->dismissAllowingStateLoss()V

    .line 53
    return-void
.end method
