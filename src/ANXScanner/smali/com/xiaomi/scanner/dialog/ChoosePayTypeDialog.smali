.class public Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;
.super Landroid/app/AlertDialog;
.source "ChoosePayTypeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;
    }
.end annotation


# instance fields
.field private alipaySelect:Landroid/widget/ImageView;

.field private alipayText:Landroid/widget/CheckedTextView;

.field private mCheckSavePay:Landroid/widget/CheckBox;

.field private payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

.field private scanResult:Ljava/lang/String;

.field private wechatSelect:Landroid/widget/ImageView;

.field private wechatText:Landroid/widget/CheckedTextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->scanResult:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    .line 37
    return-void
.end method

.method public static showChoosePayDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;)V

    .line 27
    .local v0, "dialog":Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;
    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->show()V

    goto :goto_0
.end method

.method private updateSelectStatus(Z)V
    .locals 4
    .param p1, "selectWechat"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 96
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipayText:Landroid/widget/CheckedTextView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 98
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipaySelect:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatSelect:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0

    :cond_1
    move v0, v1

    .line 98
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method

.method private updateSettingSaveType()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->mCheckSavePay:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v1, "preferencePaySelect"

    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00d2

    if-ne v0, v1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSettingSaveType()V

    .line 77
    const-string v0, "isWechatPayType"

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->scanResult:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;->onToPayClick(ZLjava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00d1

    if-ne v0, v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;->onCancel()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00cf

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSelectStatus(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setContentView(I)V

    .line 53
    const v0, 0x7f0d00cd

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipayText:Landroid/widget/CheckedTextView;

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipayText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/CheckedTextView;

    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipaySelect:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatSelect:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->mCheckSavePay:Landroid/widget/CheckBox;

    .line 62
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setCancelable(Z)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    const-string v0, "isWechatPayType"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSelectStatus(Z)V

    .line 68
    return-void
.end method
