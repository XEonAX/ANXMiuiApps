.class public Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;
.super Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setFonts(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setFonts(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setFonts(Landroid/content/Context;)V

    return-void
.end method

.method private setFonts(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
