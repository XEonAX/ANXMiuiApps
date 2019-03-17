.class Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;
.super Ljava/lang/Object;
.source "PhotoPageGifItem.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifJob"
.end annotation


# instance fields
.field private mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

.field private mHandler:Landroid/os/Handler;

.field private mItem:Lcom/miui/gallery/model/BaseDataItem;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;Lcom/miui/gallery/model/BaseDataItem;Landroid/os/Handler;)V
    .locals 0
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 278
    iput-object p3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mHandler:Landroid/os/Handler;

    .line 279
    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->setListener(Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;)V

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-virtual {v0}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->cancel()V

    .line 285
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .line 287
    :cond_0
    return-void
.end method

.method private start(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 290
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->cancel()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getGifUpdateListener()Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->setListener(Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;)V

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-virtual {v0}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->run()V

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->checkOriginalFileExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->cancel()V

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    :cond_1
    :goto_0
    return-object v2

    .line 308
    :cond_2
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob$1;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;)V

    invoke-interface {p1, v0}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;)V

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/model/BaseDataItem;->createNSGifDecoder(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->mDecoder:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .line 316
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;->start(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    goto :goto_0
.end method
