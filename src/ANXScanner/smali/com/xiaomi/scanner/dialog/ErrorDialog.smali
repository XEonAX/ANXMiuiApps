.class public Lcom/xiaomi/scanner/dialog/ErrorDialog;
.super Lmiui/app/AlertDialog;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContentText:Ljava/lang/String;

.field private mTryText:Ljava/lang/String;

.field private tryOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "tryText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 32
    const v0, 0x7f090136

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object v1, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mContentText:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mTryText:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mContentText:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mTryText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaomi/scanner/dialog/ErrorDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "tryText"    # Ljava/lang/String;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 21
    new-instance v0, Lcom/xiaomi/scanner/dialog/ErrorDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/scanner/dialog/ErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .local v0, "dialog":Lcom/xiaomi/scanner/dialog/ErrorDialog;
    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->setTryOnClick(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->show()V

    .line 24
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->tryOnClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->tryOnClick:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x7f0d00cb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, "root":Landroid/view/View;
    const v3, 0x7f0d00ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "mErrorText":Landroid/widget/TextView;
    const v3, 0x7f0d00cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "mErrorTry":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mContentText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mTryText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->mTryText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->setContentView(Landroid/view/View;)V

    .line 57
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/dialog/ErrorDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    return-void
.end method

.method public setTryOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "tryOnClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ErrorDialog;->tryOnClick:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method
