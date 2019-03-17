.class Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "TranslateResultContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->loadResultBackgroundAndImage(Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

.field final synthetic val$orientation:I

.field final synthetic val$result:Lcom/xiaomi/scanner/translation/bean/TranslateResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;Lcom/xiaomi/scanner/translation/bean/TranslateResult;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    iput-object p2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$result:Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    iput p3, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$orientation:I

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 115
    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$result:Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$result:Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$result:Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    iget-object v4, v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;->backgroundImageUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    .line 118
    :cond_1
    const/4 v1, 0x0

    .line 120
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$result:Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    iget-object v4, v4, Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;->backgroundImageUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/scanner/util/ImageUtils;->loadImageFromServer(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->val$orientation:I

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/util/PictureDecoder;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 124
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 122
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadResultBackgroundAndImage error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->onBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->hideLoadingAndError()V

    .line 131
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$200(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;Z)V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1$1;-><init>(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;->access$100(Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer;)Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;

    move-result-object v0

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateResultContainer$1;->onMainResult(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
