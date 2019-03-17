.class Lcom/nostra13/universalimageloader/core/ImageLoader$3;
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

.field final synthetic val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final synthetic val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->access$100(Lcom/nostra13/universalimageloader/core/ImageLoader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$finalOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$3;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0
.end method
