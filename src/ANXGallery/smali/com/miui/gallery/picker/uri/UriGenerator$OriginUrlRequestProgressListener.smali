.class Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;
.super Ljava/lang/Object;
.source "UriGenerator.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/UriGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OriginUrlRequestProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/uri/UriGenerator;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/UriGenerator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p2, "x1"    # Lcom/miui/gallery/picker/uri/UriGenerator$1;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 472
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1502(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 478
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1800(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1800(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$800(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$800(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->destroy()V

    .line 484
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$802(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .line 486
    :cond_3
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->finish()V

    .line 467
    return-void
.end method

.method public onEnd(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->finish()V

    .line 448
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0, p1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1200(Lcom/miui/gallery/picker/uri/UriGenerator;Ljava/util/List;)V

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v0, "UriGenerator"

    const-string v1, "selected images OriginInfo generate error"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03c8

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 453
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;->onFail()V

    goto :goto_0
.end method

.method public onStart(I)V
    .locals 4
    .param p1, "totalCount"    # I

    .prologue
    .line 430
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$600(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 431
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    new-instance v2, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    invoke-direct {v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1502(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 433
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setMax(I)V

    .line 434
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setStage(I)V

    .line 435
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v2}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1600(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 436
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v1}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "prepare_progress_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method

.method public onUpdate(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->updateProgress(I)V

    .line 462
    :cond_0
    return-void
.end method
