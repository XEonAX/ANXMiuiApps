.class Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadFinishListener"
.end annotation


# instance fields
.field private mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method


# virtual methods
.method protected onLoadFinish(ZLjava/lang/String;)V
    .locals 2
    .param p1, "cancelled"    # Z
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;->mCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;->mCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 311
    .local v0, "listener":Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;->onImageLoadFinish(ZLjava/lang/String;)V

    .line 315
    .end local v0    # "listener":Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
    :cond_0
    return-void
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;->onLoadFinish(ZLjava/lang/String;)V

    .line 306
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;->onLoadFinish(ZLjava/lang/String;)V

    .line 301
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;->onLoadFinish(ZLjava/lang/String;)V

    .line 296
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 291
    return-void
.end method
