.class Lcom/miui/gallery/picker/uri/UriGenerator$7;
.super Ljava/lang/Object;
.source "UriGenerator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/UriGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/uri/UriGenerator;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$7;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 299
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/UriGenerator$7;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v4}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 300
    .local v3, "size":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/UriGenerator$7;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v4}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$600(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 301
    .local v0, "activity":Landroid/app/Activity;
    if-lez v3, :cond_0

    if-eqz v0, :cond_0

    .line 302
    new-instance v2, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    invoke-direct {v2}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;-><init>()V

    .line 303
    .local v2, "downloadCancelDialog":Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "remaining_count"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/UriGenerator$7;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v4}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$900(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 306
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/UriGenerator$7;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v4}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1000(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setContinueListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 307
    invoke-virtual {v2, v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setArguments(Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "cancel_dialog"

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 310
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "downloadCancelDialog":Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
    :cond_0
    return-void

    .line 299
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/UriGenerator$7;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v4}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/picker/uri/Downloader;->getRemainSize()I

    move-result v3

    goto :goto_0
.end method
