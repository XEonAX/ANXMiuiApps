.class public Lcom/xiaomi/scanner/dialog/CustomProgressDialog;
.super Landroid/app/AlertDialog;
.source "CustomProgressDialog.java"


# instance fields
.field private mLogoId:I

.field private mTextId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public static showProgress(Landroid/app/Activity;II)Lcom/xiaomi/scanner/dialog/CustomProgressDialog;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "logo"    # I
    .param p2, "text"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "dialog":Lcom/xiaomi/scanner/dialog/CustomProgressDialog;
    iput p1, v0, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->mLogoId:I

    .line 30
    iput p2, v0, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->mTextId:I

    .line 31
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "root":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->setContentView(Landroid/view/View;)V

    .line 46
    const v3, 0x7f0d00c8

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, "imageView":Landroid/widget/ImageView;
    iget v3, p0, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->mLogoId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    const v3, 0x7f0d00c7

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "textView":Landroid/widget/TextView;
    iget v3, p0, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->mTextId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->setCancelable(Z)V

    .line 53
    invoke-virtual {p0, v6}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    return-void
.end method
