.class public Lcom/miui/gallery/ui/DownloadFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "DownloadFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    }
.end annotation


# instance fields
.field private mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

.field private mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/DownloadFragment;)Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/DownloadFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/DownloadFragment;Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;)Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/DownloadFragment;
    .param p1, "x1"    # Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    return-object p1
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/miui/gallery/ui/DownloadFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)",
            "Lcom/miui/gallery/ui/DownloadFragment;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    new-instance v1, Lcom/miui/gallery/ui/DownloadFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/DownloadFragment;-><init>()V

    .line 25
    .local v1, "fragment":Lcom/miui/gallery/ui/DownloadFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "key_download_items"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/DownloadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_download_items"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-direct {v1}, Lcom/miui/gallery/util/BulkDownloadHelper;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->download(Ljava/util/List;ZLcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 38
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mTitle:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v4}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v4}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/DownloadFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/DownloadFragment$1;-><init>(Lcom/miui/gallery/ui/DownloadFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/DownloadFragment;->setCancelable(Z)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/DownloadFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper;->cancel()V

    .line 80
    iput-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    .line 82
    :cond_0
    iput-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    .line 83
    return-void
.end method

.method public onDownloadEnd(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "successes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 99
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;->onDownloadComplete(Ljava/util/List;Ljava/util/List;)V

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DownloadFragment;->dismissAllowingStateLoss()V

    .line 104
    return-void
.end method

.method public onDownloadProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 87
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 88
    .local v0, "uiProgress":I
    iget-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/gallery/ui/DownloadFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 90
    return-void
.end method

.method public setOnDownloadListener(Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/ui/DownloadFragment;->mDownloadListener:Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;

    .line 61
    return-void
.end method
