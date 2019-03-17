.class Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "TranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoLineClickSpan"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .line 201
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;->text:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$NoLineClickSpan;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->processHyperLinkClick(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 207
    const v0, -0xff6e24

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 209
    return-void
.end method
