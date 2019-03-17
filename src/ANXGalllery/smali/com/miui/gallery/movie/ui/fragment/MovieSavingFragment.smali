.class public Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "MovieSavingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;
    }
.end annotation


# instance fields
.field private mLastBackPressedTime:J

.field private mOnSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mShareCallback:Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->backPress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mOnSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mShareCallback:Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    return-object v0
.end method

.method private backPress()Z
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    .local v0, "now":J
    iget-wide v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 86
    iput-wide v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mLastBackPressedTime:J

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c02d2

    invoke-virtual {p0, v3}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 95
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mShareCallback:Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mShareCallback:Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    invoke-interface {v2}, Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;->cancelExport()V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->dismissSafely()V

    goto :goto_0
.end method

.method private doSaving(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "movieManager"    # Lcom/miui/gallery/movie/core/MovieManager;
    .param p4, "onSavingFinishListener"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    .prologue
    .line 137
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieStorage;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "tempFilePath":Ljava/lang/String;
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;Landroid/app/FragmentManager;Ljava/lang/String;Landroid/content/Context;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V

    invoke-virtual {p3, v3, v0}, Lcom/miui/gallery/movie/core/MovieManager;->export(Ljava/lang/String;Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    instance-of v0, p1, Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mShareCallback:Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)V

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->setCancelable(Z)V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDetach()V

    .line 75
    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mShareCallback:Lcom/miui/gallery/movie/ui/listener/IShareDataCallback;

    .line 76
    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mOnSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    .line 77
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 81
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/entity/MovieInfo;ZLcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "movieManager"    # Lcom/miui/gallery/movie/core/MovieManager;
    .param p3, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;
    .param p4, "isPreviewPager"    # Z
    .param p5, "onSavingFinishListener"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    .prologue
    .line 99
    invoke-static {p4, p3}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statSaveClick(ZLcom/miui/gallery/movie/entity/MovieInfo;)V

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    iput-object p5, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->mOnSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$2;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->doSaving(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V

    .line 116
    return-void
.end method

.method public showAndShare(Landroid/app/Activity;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/entity/MovieInfo;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "movieManager"    # Lcom/miui/gallery/movie/core/MovieManager;
    .param p3, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;

    .prologue
    .line 119
    invoke-static {p3}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statShareClick(Lcom/miui/gallery/movie/entity/MovieInfo;)V

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$3;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->doSaving(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V

    .line 134
    return-void
.end method
