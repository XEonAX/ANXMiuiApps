.class Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;
.super Ljava/lang/Object;
.source "TranslateResultContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->onMainResult(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 143
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$300(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$300(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ImageUtils;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$300(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$400(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$400(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/ui/ZoomImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->resetImageMatrix()V

    .line 153
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;->this$1:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$500(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    return-void
.end method
