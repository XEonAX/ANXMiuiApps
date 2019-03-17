.class public Lcom/miui/gallery/ui/PhotoSlimFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "PhotoSlimFragment.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mActionButtonClickListener:Landroid/view/View$OnClickListener;

.field private mActionDescription:Landroid/widget/TextView;

.field private mActionTitle:Landroid/widget/TextView;

.field private mExitConfirmDialog:Lmiui/app/AlertDialog;

.field private mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

.field private mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 142
    new-instance v0, Lcom/miui/gallery/ui/PhotoSlimFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoSlimFragment$2;-><init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoSlimFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoSlimFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->showFinishState()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoSlimFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoSlimFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onExitCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoSlimFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoSlimFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onExit()V

    return-void
.end method

.method private onExit()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->stop()V

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 214
    return-void
.end method

.method private onExitCancel()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->resume()V

    .line 207
    const-string v0, "cleaner"

    const-string/jumbo v1, "slim_exit_cancel"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private remainTime(I)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    div-int/lit8 v0, p1, 0x3c

    .line 130
    .local v0, "minute":I
    rem-int/lit8 v1, p1, 0x3c

    .line 132
    .local v1, "second":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c04a1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "timeMsg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 134
    .end local v2    # "timeMsg":Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c04a2

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeMsg":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v2    # "timeMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c04a0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private showExitConfirmDialog()V
    .locals 7

    .prologue
    .line 172
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->getRemainCount()I

    move-result v0

    .line 176
    .local v0, "remainCount":I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    if-nez v1, :cond_1

    .line 177
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c04a7

    new-instance v3, Lcom/miui/gallery/ui/PhotoSlimFragment$5;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoSlimFragment$5;-><init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    .line 178
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/miui/gallery/ui/PhotoSlimFragment$4;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoSlimFragment$4;-><init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    .line 186
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c04a8

    .line 192
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/ui/PhotoSlimFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoSlimFragment$3;-><init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    .line 193
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showFinishState()V
    .locals 7

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->getSlimCount()I

    move-result v0

    .line 119
    .local v0, "count":I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionTitle:Landroid/widget/TextView;

    const v2, 0x7f0c049f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButton:Landroid/widget/Button;

    const v2, 0x7f0c049e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 122
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButton:Landroid/widget/Button;

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "photo_slim"

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f110013

    return v0
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 156
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/slim/SlimController;->isSlimming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onExit()V

    .line 168
    :goto_0
    return v6

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/slim/SlimController;->pause()V

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->showExitConfirmDialog()V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v4}, Lcom/miui/gallery/cleaner/slim/SlimController;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 164
    .local v1, "time":I
    const-string v2, "durationBeforeExit"

    int-to-float v3, v1

    sget-object v4, Lcom/miui/gallery/cleaner/slim/SlimController;->TIME_COST_STAGE:[I

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "cleaner"

    const-string/jumbo v3, "slim_exit"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mExitConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 81
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 30
    const v1, 0x7f040102

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionTitle:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionTitle:Landroid/widget/TextView;

    const v2, 0x7f0c04a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v1, 0x7f1200f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionDescription:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f120156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButton:Landroid/widget/Button;

    .line 36
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButton:Landroid/widget/Button;

    const v2, 0x7f0c04ab

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f1201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/SlimRotateProgressBar;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    .line 39
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    const v2, 0x7f0c04aa

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setDescription(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V

    .line 42
    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    .line 43
    return-object v0
.end method

.method public onSlimPaused()V
    .locals 7

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->getRemainCount()I

    move-result v0

    .line 110
    .local v0, "remainCount":I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0040

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->pause()V

    .line 112
    return-void
.end method

.method public onSlimProgress(JJI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "releaseSize"    # J
    .param p5, "remainCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->isSlimPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionTitle:Landroid/widget/TextView;

    add-int/lit8 v1, p5, 0x1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoSlimFragment;->remainTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    if-lt p5, v4, :cond_2

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v5, v1}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActionDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0040

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    new-instance v1, Lcom/miui/gallery/ui/PhotoSlimFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoSlimFragment$1;-><init>(Lcom/miui/gallery/ui/PhotoSlimFragment;)V

    invoke-virtual {v0, p3, p4, v4, v1}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSlimResumed()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->resume()V

    .line 105
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 48
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->isSlimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->registerObserver(Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->isSlimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getReleaseSize()J

    move-result-wide v4

    .line 55
    .local v4, "releaseSize":J
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZ)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->isSlimPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->showExitConfirmDialog()V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onSlimPaused()V

    .line 67
    .end local v4    # "releaseSize":J
    :goto_0
    return-void

    .line 60
    .restart local v4    # "releaseSize":J
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getRemainCount()I

    move-result v6

    .line 61
    .local v6, "remainCount":I
    const-wide/16 v2, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/ui/PhotoSlimFragment;->onSlimProgress(JJI)V

    goto :goto_0

    .line 64
    .end local v4    # "releaseSize":J
    .end local v6    # "remainCount":I
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mProgressBar:Lcom/miui/gallery/ui/SlimRotateProgressBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->getReleaseSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(J)V

    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoSlimFragment;->showFinishState()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoSlimFragment;->mSlimController:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->unregisterObserver(Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;)V

    .line 73
    return-void
.end method
