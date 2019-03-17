.class Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;
.super Ljava/lang/Object;
.source "PickGalleryActivity.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OriginUrlRequestProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickGalleryActivity$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 489
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1402(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 495
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1600(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1600(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1700(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1700(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->destroy()V

    .line 501
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1702(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .line 503
    :cond_3
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->finish()V

    .line 484
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
    .line 466
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->finish()V

    .line 467
    if-eqz p2, :cond_0

    .line 468
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1500(Lcom/miui/gallery/picker/PickGalleryActivity;Ljava/util/ArrayList;)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string v0, "PickGalleryActivity"

    const-string v1, "selected images OriginInfo generate error"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(I)V
    .locals 3
    .param p1, "totalCount"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    new-instance v1, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1402(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setMax(I)V

    .line 459
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setStage(I)V

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "prepare_progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public onUpdate(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->updateProgress(I)V

    .line 479
    :cond_0
    return-void
.end method
