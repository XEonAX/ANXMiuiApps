.class public abstract Lcom/miui/gallery/agreement/BaseAgreementDialog;
.super Landroid/app/Dialog;
.source "BaseAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;
    }
.end annotation


# instance fields
.field private mActionBtn:Landroid/view/View;

.field private mAgreementListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

.field private mAllowQuit:Z

.field private mListView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowQuit"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAllowQuit:Z

    .line 30
    iput-boolean p2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAllowQuit:Z

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->setCancelable(Z)V

    .line 32
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 60
    const v2, 0x7f1202c3

    invoke-virtual {p0, v2}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "quitBtn":Landroid/view/View;
    iget-boolean v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAllowQuit:Z

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :goto_0
    const v2, 0x7f1200e8

    invoke-virtual {p0, v2}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "summary":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x7f120116

    invoke-virtual {p0, v2}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mListView:Landroid/support/v7/widget/RecyclerView;

    .line 70
    const v2, 0x7f120107

    invoke-virtual {p0, v2}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mActionBtn:Landroid/view/View;

    .line 71
    iget-object v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mActionBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getDividerDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object v2, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->loadAppInfo()V

    .line 76
    return-void

    .line 65
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadAppInfo()V
    .locals 3

    .prologue
    .line 79
    const v1, 0x7f1202c4

    invoke-virtual {p0, v1}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected abstract getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
.end method

.method protected getDividerDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;

    invoke-direct {v0}, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;-><init>()V

    return-object v0
.end method

.method protected abstract getSummary()Ljava/lang/CharSequence;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202c3

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->dismiss()V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAgreementListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAgreementListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;->onAgreementInvoked(Z)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f120107

    if-ne v0, v1, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAgreementListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAgreementListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;->onAgreementInvoked(Z)V

    .line 103
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f040161

    invoke-virtual {p0, v2}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->initView()V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 52
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 54
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    return-void
.end method

.method protected setActionButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mActionBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    return-void
.end method

.method public setOnAgreementListener(Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog;->mAgreementListener:Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;

    .line 36
    return-void
.end method
