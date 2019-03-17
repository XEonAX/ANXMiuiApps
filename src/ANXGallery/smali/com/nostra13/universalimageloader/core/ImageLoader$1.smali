.class Lcom/nostra13/universalimageloader/core/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field final synthetic val$finalListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final synthetic val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final synthetic val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$finalListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$finalListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->access$100(Lcom/nostra13/universalimageloader/core/ImageLoader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$finalListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 302
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$1;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0, v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0
.end method
