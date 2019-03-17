.class final Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
.super Ljava/lang/Object;
.source "ImageLoadingInfo.java"


# instance fields
.field final imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final listener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final memoryCacheKey:Ljava/lang/String;

.field final options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final progressListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field final regionDecodeRect:Landroid/graphics/RectF;

.field final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "regionDecodeRect"    # Landroid/graphics/RectF;
    .param p5, "memoryCacheKey"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p7, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p8, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
    .param p9, "loadFromUriLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 73
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 74
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->regionDecodeRect:Landroid/graphics/RectF;

    .line 75
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 76
    iput-object p7, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 77
    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->progressListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .line 78
    iput-object p9, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "memoryCacheKey"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p6, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p7, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
    .param p8, "loadFromUriLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 56
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 57
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 58
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 59
    iput-object p7, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->progressListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .line 60
    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->regionDecodeRect:Landroid/graphics/RectF;

    .line 65
    return-void
.end method
