.class public Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "CardDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

.field private mLastBackPressedTime:J

.field private mProgressDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->backPress()Z

    move-result v0

    return v0
.end method

.method private backPress()Z
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "now":J
    iget-wide v2, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 49
    iput-wide v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mLastBackPressedTime:J

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04bf

    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mCallBack:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mCallBack:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    invoke-interface {v2}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;->cancel()V

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->dismissSafely()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$1;-><init>(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)V

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->setCancelable(Z)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDestroyView()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mCallBack:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    .line 79
    return-void
.end method

.method public setCallBack(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mCallBack:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    .line 66
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CardDownloadDialog"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public updateProgress(F)V
    .locals 2
    .param p1, "percent"    # F

    .prologue
    .line 69
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 70
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 71
    .local v0, "progress":I
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 73
    .end local v0    # "progress":I
    :cond_0
    return-void
.end method
