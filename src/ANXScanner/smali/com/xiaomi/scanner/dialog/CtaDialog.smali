.class public Lcom/xiaomi/scanner/dialog/CtaDialog;
.super Landroid/app/Dialog;
.source "CtaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;,
        Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;
    }
.end annotation


# instance fields
.field private ctaClick:Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

.field private tvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    const v0, 0x7f0900de

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method private setUrlColor()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070062

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v11, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->tvMessage:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v9, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->tvMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 69
    iget-object v9, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 70
    .local v4, "str":Ljava/lang/CharSequence;
    instance-of v9, v4, Landroid/text/Spannable;

    if-eqz v9, :cond_0

    move-object v2, v4

    .line 71
    check-cast v2, Landroid/text/Spannable;

    .line 72
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {v2, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 74
    .local v7, "urlSpans":[Landroid/text/style/URLSpan;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    .local v0, "build":Landroid/text/SpannableStringBuilder;
    array-length v9, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v7, v8

    .line 77
    .local v6, "urlSpan":Landroid/text/style/URLSpan;
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 78
    .local v3, "start":I
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 79
    .local v1, "end":I
    new-instance v10, Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/16 v11, 0x21

    invoke-virtual {v0, v10, v3, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "build":Landroid/text/SpannableStringBuilder;
    .end local v1    # "end":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "start":I
    .end local v6    # "urlSpan":Landroid/text/style/URLSpan;
    .end local v7    # "urlSpans":[Landroid/text/style/URLSpan;
    :cond_0
    return-void
.end method

.method public static showCta(Landroid/content/Context;Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;)Lcom/xiaomi/scanner/dialog/CtaDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ctaClick"    # Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

    .prologue
    .line 34
    new-instance v0, Lcom/xiaomi/scanner/dialog/CtaDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "ctaDialog":Lcom/xiaomi/scanner/dialog/CtaDialog;
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/dialog/CtaDialog;->setCtaClick(Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->ctaClick:Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->ctaClick:Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

    invoke-interface {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;->onReject()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->ctaClick:Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

    invoke-interface {v0}, Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;->onAccept()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f0d00c5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 54
    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/CtaDialog;->setCancelable(Z)V

    .line 55
    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/dialog/CtaDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    const v1, 0x7f0d00c5

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/CtaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0d00c6

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/CtaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->tvMessage:Landroid/widget/TextView;

    .line 61
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/CtaDialog;->setUrlColor()V

    .line 62
    return-void
.end method

.method public setCtaClick(Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;)V
    .locals 0
    .param p1, "ctaClick"    # Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/CtaDialog;->ctaClick:Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;

    .line 41
    return-void
.end method
