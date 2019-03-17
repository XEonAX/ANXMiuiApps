.class Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/SlideShowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private final mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 233
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 235
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 238
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 239
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 242
    return-void
.end method

.method private getDisplayOptions(Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 9
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 251
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 252
    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$900(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;

    move-result-object v1

    .line 253
    .local v1, "loadItem":Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
    if-eqz v1, :cond_3

    .line 254
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->access$1000(Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->getDisplayOptions(Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    .local v2, "loadedImage":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    new-instance v4, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->access$1100(Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;)I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;-><init>(Landroid/graphics/Bitmap;I)V

    .line 257
    .local v4, "showItem":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    const/4 v3, 0x0

    .line 258
    .local v3, "offered":Z
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    .line 261
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v4, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 262
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 263
    const-string v5, "SlideShowController"

    const-string v6, "Load cancel,remove from mCacheQueue "

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "SlideShowController"

    const-string v6, "offer interrupted, curSize %d"

    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-nez v3, :cond_0

    .line 272
    const-string v5, "SlideShowController"

    const-string v6, "not offered, curSize %d"

    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$1200(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V

    goto/16 :goto_0

    .line 281
    .end local v1    # "loadItem":Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
    .end local v2    # "loadedImage":Landroid/graphics/Bitmap;
    .end local v3    # "offered":Z
    .end local v4    # "showItem":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    :cond_3
    const-string v5, "SlideShowController"

    const-string v6, "loadJob cancelled, curSize %d"

    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const/4 v5, 0x0

    return-object v5
.end method
