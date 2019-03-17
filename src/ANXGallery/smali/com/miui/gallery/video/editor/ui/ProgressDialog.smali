.class public Lcom/miui/gallery/video/editor/ui/ProgressDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;
    }
.end annotation


# instance fields
.field private mCancelImageButton:Landroid/widget/ImageButton;

.field private mMsgTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialogInterface:Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;

.field private mTempMax:I

.field private mTempMsg:Ljava/lang/String;

.field private mTempMsgId:I

.field private mTempProgress:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 28
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMax:I

    .line 29
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempProgress:I

    .line 30
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMsgId:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/ui/ProgressDialog;)Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/ProgressDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressDialogInterface:Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 41
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040169

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mView:Landroid/view/View;

    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mMsgTextView:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mView:Landroid/view/View;

    const v1, 0x7f1202cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mView:Landroid/view/View;

    const v1, 0x7f1202cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mCancelImageButton:Landroid/widget/ImageButton;

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mCancelImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;-><init>(Lcom/miui/gallery/video/editor/ui/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMax:I

    if-eq v0, v3, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 61
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempProgress:I

    if-eq v0, v3, :cond_1

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMsgId:I

    if-eq v0, v3, :cond_2

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mMsgTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMsgId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mMsgTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 115
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f1100c8

    invoke-direct {v0, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 116
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 117
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 118
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 119
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 122
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 123
    new-instance v4, Lcom/miui/gallery/video/editor/ui/ProgressDialog$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog$2;-><init>(Lcom/miui/gallery/video/editor/ui/ProgressDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 129
    return-object v0
.end method

.method public setCancleButtonEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 75
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mCancelImageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMax:I

    goto :goto_0
.end method

.method public setMsg(I)V
    .locals 1
    .param p1, "msgResId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempMsgId:I

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mTempProgress:I

    goto :goto_0
.end method

.method public setProgressDialogInterface(Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;)V
    .locals 0
    .param p1, "progressDialogInterface"    # Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->mProgressDialogInterface:Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;

    .line 36
    return-void
.end method
