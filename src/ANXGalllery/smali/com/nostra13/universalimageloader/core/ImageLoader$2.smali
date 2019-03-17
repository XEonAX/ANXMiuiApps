.class Lcom/nostra13/universalimageloader/core/ImageLoader$2;
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

.field final synthetic val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->val$finalListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->val$finalListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$2;->val$imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 319
    return-void
.end method
