.class public Lcom/xiaomi/scanner/translation/widget/ChooseLangView;
.super Landroid/widget/LinearLayout;
.source "ChooseLangView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;
    }
.end annotation


# instance fields
.field private desLang:Ljava/lang/String;

.field private desLangView:Landroid/widget/TextView;

.field private hasConvertFunction:Z

.field private langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

.field private srcLang:Ljava/lang/String;

.field private srcLangView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setLayoutId(I)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setOrientation(I)V

    .line 45
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->setGravity(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->hasConvertFunction:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->srcLang:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->desLang:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;->onConvertClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    invoke-interface {v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;->onSelectClick()V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    invoke-interface {v0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;->onSelectClick()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f0d00f7
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHasConvertFunction(Z)V
    .locals 0
    .param p1, "hasConvertFunction"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->hasConvertFunction:Z

    .line 64
    return-void
.end method

.method public setLangViewClick(Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;)V
    .locals 0
    .param p1, "langViewClick"    # Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->langViewClick:Lcom/xiaomi/scanner/translation/widget/ChooseLangView$LangViewClick;

    .line 30
    return-void
.end method

.method public setLayoutId(I)V
    .locals 2
    .param p1, "layoutId"    # I

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    const v1, 0x7f0d00f7

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->srcLangView:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0d00f9

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->desLangView:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0d00f8

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .local v0, "convertLang":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->srcLangView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->desLangView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .end local v0    # "convertLang":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public updateLang(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->srcLang:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->desLang:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->srcLang:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->srcLangView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/ChooseLangView;->desLangView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    return-void
.end method
