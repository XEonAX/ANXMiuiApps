.class final Lcom/miui/gallery/util/BindImageHelper$2;
.super Ljava/lang/Object;
.source "BindImageHelper.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/BindImageHelper;->getLocalLoadingListener(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final synthetic val$listener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$aware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p2, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$listener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 197
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$listener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$listener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    invoke-interface {v0}, Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;->onLoadingComplete()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$aware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    const v1, 0x7f120009

    invoke-static {}, Lcom/miui/gallery/util/BindImageHelper;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setTag(ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "needDownload":Z
    iget-object v2, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$aware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    instance-of v2, v2, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$aware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    new-instance v1, Lcom/miui/gallery/util/BindImageHelper$2$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/BindImageHelper$2$1;-><init>(Lcom/miui/gallery/util/BindImageHelper$2;)V

    .line 175
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 176
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 182
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$listener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/miui/gallery/util/BindImageHelper$2;->val$listener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    invoke-interface {v2}, Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;->onLoadingFailed()V

    .line 185
    :cond_2
    return-void

    .line 178
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 159
    return-void
.end method
