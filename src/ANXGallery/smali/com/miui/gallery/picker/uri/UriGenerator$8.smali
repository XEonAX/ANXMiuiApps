.class Lcom/miui/gallery/picker/uri/UriGenerator$8;
.super Ljava/lang/Object;
.source "UriGenerator.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/uri/UriGenerator;->startDownload()V
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
    .line 341
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 408
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

    .line 410
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

    .line 411
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1300(Lcom/miui/gallery/picker/uri/UriGenerator;)[Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    iget v4, v4, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mPosition:I

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 413
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    .end local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1400(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 418
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 419
    .restart local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1400(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
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

    .line 392
    const-string v1, "UriGenerator"

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

    .line 393
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 395
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1, v5}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$702(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 401
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/uri/UriGenerator$8;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V

    .line 403
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 404
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1, v5}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$502(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;

    .line 405
    return-void
.end method

.method public onEnd(Ljava/util/List;Ljava/util/List;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 362
    const-string v3, "UriGenerator"

    const-string v4, "download end, success: %d, fails: %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 364
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 365
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$600(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 370
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "cancel_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 372
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    if-eqz v3, :cond_1

    .line 373
    check-cast v2, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v2}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->dismiss()V

    .line 376
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3, v7}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$702(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 379
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/uri/UriGenerator$8;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V

    .line 380
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3, v7}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1200(Lcom/miui/gallery/picker/uri/UriGenerator;Ljava/util/List;)V

    .line 386
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 387
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v3, v7}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$502(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;

    .line 388
    return-void

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$300(Lcom/miui/gallery/picker/uri/UriGenerator;Z)V

    goto :goto_0
.end method

.method public onStart(Ljava/util/List;)V
    .locals 4
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
    .line 344
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;>;"
    const-string v1, "UriGenerator"

    const-string v2, "download start, %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$600(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 346
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    new-instance v2, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    invoke-direct {v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$702(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 348
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setMax(I)V

    .line 349
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setStage(I)V

    .line 350
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1100(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 351
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "prepare_progress_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 353
    :cond_0
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
    .line 357
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$8;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->updateProgress(I)V

    .line 358
    return-void
.end method
