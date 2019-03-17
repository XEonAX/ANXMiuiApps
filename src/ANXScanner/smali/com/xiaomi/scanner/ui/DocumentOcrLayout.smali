.class public Lcom/xiaomi/scanner/ui/DocumentOcrLayout;
.super Landroid/widget/RelativeLayout;
.source "DocumentOcrLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackView:Landroid/view/View;

.field private mCopyView:Landroid/view/View;

.field private mLanguageChooser:Lcom/xiaomi/scanner/ui/LanguageChooser;

.field private mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

.field private mResultView:Landroid/widget/TextView;

.field private mSaveView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private copyToClipboard(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const v2, 0x7f07004a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 90
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f07003a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onBack()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00df

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method private save(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f07004a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const v2, 0x7f0d00e1

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->onBack()V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mResultView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->copyToClipboard(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mResultView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->save(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x7f0d00df
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mBackView:Landroid/view/View;

    .line 33
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mCopyView:Landroid/view/View;

    .line 34
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mSaveView:Landroid/view/View;

    .line 35
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mResultView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/LanguageChooser;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mLanguageChooser:Lcom/xiaomi/scanner/ui/LanguageChooser;

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mCopyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mSaveView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mResultView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->setPadding(IIII)V

    .line 43
    return-void

    :cond_0
    move v0, v1

    .line 42
    goto :goto_0
.end method

.method public setLanguageChooserListener(Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mLanguageChooser:Lcom/xiaomi/scanner/ui/LanguageChooser;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mLanguageChooser:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->addLanguageSwitchListener(Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V
    .locals 0
    .param p1, "messageDispatcher"    # Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 53
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mResultView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentOcrLayout;->mResultView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    return-void
.end method
