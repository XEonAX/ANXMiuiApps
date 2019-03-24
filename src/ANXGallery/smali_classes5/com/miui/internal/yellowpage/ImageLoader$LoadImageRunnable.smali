.class Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

.field final synthetic this$0:Lcom/miui/internal/yellowpage/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 0
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 444
    iput-object p1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 446
    return-void
.end method

.method private notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 2
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 482
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 483
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 485
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 452
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_1

    .line 453
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_0

    .line 454
    monitor-exit v0

    return-void

    .line 455
    :cond_0
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_1

    .line 456
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    .line 457
    monitor-exit v0

    return-void

    .line 462
    :cond_1
    if-nez v1, :cond_2

    .line 463
    new-instance v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    move-object v1, v2

    .line 465
    :cond_2
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    .line 466
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-static {v2}, Lcom/miui/internal/yellowpage/ImageLoader;->access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .end local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->access$300(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    .line 473
    .local v0, "bitmapData":[B
    if-eqz v0, :cond_3

    .line 474
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-static {v1, v2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    .line 475
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-static {v1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    .line 479
    :goto_0
    return-void

    .line 467
    .end local v0    # "bitmapData":[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
