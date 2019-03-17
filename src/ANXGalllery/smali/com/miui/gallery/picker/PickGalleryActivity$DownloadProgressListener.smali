.class Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;
.super Ljava/lang/Object;
.source "PickGalleryActivity.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickGalleryActivity$1;

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    return-void
.end method

.method private parseDownloadResult(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 761
    .local v1, "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    iget-object v3, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    iget v4, v4, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mPosition:I

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 764
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    .end local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 769
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 770
    .restart local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    iget-object v3, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 772
    .end local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    const/4 v5, 0x0

    .line 743
    const-string v1, "PickGalleryActivity"

    const-string v2, "download cancelled, success: %d, fails: %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 746
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, v5}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2002(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 752
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V

    .line 754
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1900(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 755
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, v5}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1902(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;

    .line 756
    return-void
.end method

.method public onEnd(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    const/4 v6, 0x0

    .line 716
    const-string v2, "PickGalleryActivity"

    const-string v3, "download end, success: %d, fails: %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 718
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 719
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cancel_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 724
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    if-eqz v2, :cond_1

    .line 725
    check-cast v1, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->dismiss()V

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2, v6}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2002(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 730
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V

    .line 731
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 732
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1000(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    .line 737
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1900(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 738
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v2, v6}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1902(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;

    .line 739
    return-void

    .line 734
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1100(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V

    goto :goto_0
.end method

.method public onStart(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;>;"
    const-string v0, "PickGalleryActivity"

    const-string v1, "download start, %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    new-instance v1, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2002(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 704
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setMax(I)V

    .line 705
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setStage(I)V

    .line 706
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "prepare_progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public onUpdate(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->updateProgress(I)V

    .line 712
    return-void
.end method
