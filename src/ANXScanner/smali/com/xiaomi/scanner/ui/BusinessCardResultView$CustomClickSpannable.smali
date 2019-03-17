.class Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;
.super Landroid/text/style/ClickableSpan;
.source "BusinessCardResultView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/BusinessCardResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomClickSpannable"
.end annotation


# instance fields
.field private ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/BusinessCardResultView;Lcom/xiaomi/scanner/bean/BusinessClickBean;)V
    .locals 0
    .param p2, "ocrClickBean"    # Lcom/xiaomi/scanner/bean/BusinessClickBean;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    .line 215
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    iget v1, v1, Lcom/xiaomi/scanner/bean/BusinessClickBean;->type:I

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->access$200(Lcom/xiaomi/scanner/ui/BusinessCardResultView;I)V

    .line 227
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->ocrClickBean:Lcom/xiaomi/scanner/bean/BusinessClickBean;

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/dialog/ActionDialog;->showOcrActionDialog(Landroid/content/Context;Lcom/xiaomi/scanner/bean/BusinessClickBean;)V

    .line 229
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 220
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 221
    return-void
.end method
