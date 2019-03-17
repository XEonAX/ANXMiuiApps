.class Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;
.super Ljava/lang/Object;
.source "SlideShowAdapter.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/SlideShowAdapter;
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
.field private mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field final synthetic this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/SlideShowAdapter;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    iput-object p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 161
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 164
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 165
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 168
    return-void
.end method

.method private getDisplayOptions(Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->mDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->getSecretKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 9
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 179
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v5}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$600(Lcom/miui/gallery/adapter/SlideShowAdapter;)Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    move-result-object v1

    .line 181
    .local v1, "loadItem":Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;
    if-eqz v1, :cond_2

    .line 182
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-static {v1}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->access$700(Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->getDisplayOptions(Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    .local v2, "loadedImage":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    new-instance v4, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    invoke-static {v1}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->access$800(Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;)I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;-><init>(Landroid/graphics/Bitmap;I)V

    .line 185
    .local v4, "showItem":Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
    const/4 v3, 0x0

    .line 186
    .local v3, "offered":Z
    :goto_1
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    .line 189
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v5}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v4, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "SlideShowAdapter"

    const-string v6, "offer interrupted, curSize %d"

    iget-object v7, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v7}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    if-nez v3, :cond_0

    .line 196
    const-string v5, "SlideShowAdapter"

    const-string v6, "not offered, curSize %d"

    iget-object v7, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v7}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget-object v5, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v5}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$200(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 199
    :try_start_1
    iget-object v5, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v5}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$306(Lcom/miui/gallery/adapter/SlideShowAdapter;)I

    .line 200
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 207
    .end local v1    # "loadItem":Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;
    .end local v2    # "loadedImage":Landroid/graphics/Bitmap;
    .end local v3    # "offered":Z
    .end local v4    # "showItem":Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
    :cond_2
    const-string v5, "SlideShowAdapter"

    const-string v6, "loadJob cancelled, curSize %d"

    iget-object v7, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v7}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const/4 v5, 0x0

    return-object v5
.end method
