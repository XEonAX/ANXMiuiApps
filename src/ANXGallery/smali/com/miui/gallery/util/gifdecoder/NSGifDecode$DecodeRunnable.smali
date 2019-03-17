.class Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;
.super Ljava/lang/Object;
.source "NSGifDecode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeRunnable"
.end annotation


# instance fields
.field private mIndex:I

.field private mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGif;

.field final synthetic this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;Lcom/miui/gallery/util/gifdecoder/NSGif;I)V
    .locals 0
    .param p2, "nsgif"    # Lcom/miui/gallery/util/gifdecoder/NSGif;
    .param p3, "index"    # I

    .prologue
    .line 252
    iput-object p1, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGif;

    .line 254
    iput p3, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    .line 255
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 259
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$000(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const/16 v5, 0x14

    iget-object v8, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGif;

    iget v9, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    invoke-virtual {v8, v9}, Lcom/miui/gallery/util/gifdecoder/NSGif;->getFrameDelay(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v0, v5

    .line 262
    .local v0, "delay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v2, v8, v0

    .line 264
    .local v2, "end":J
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$000(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGif;

    iget-object v8, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v8}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$100(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/miui/gallery/util/gifdecoder/NSGif;->writeTo(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 265
    :cond_2
    const-string v5, "NSGifDecode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write frame "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$200(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    move-result-object v4

    .line 269
    .local v4, "listener":Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
    if-eqz v4, :cond_4

    .line 270
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$100(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;->onUpdateGifFrame(Landroid/graphics/Bitmap;)V

    .line 273
    :cond_4
    iget v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    .line 274
    iget v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    iget-object v8, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGif;

    invoke-virtual {v8}, Lcom/miui/gallery/util/gifdecoder/NSGif;->getFrameCount()I

    move-result v8

    if-lt v5, v8, :cond_5

    .line 275
    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    .line 278
    :cond_5
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$000(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGif;

    iget v8, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->mIndex:I

    invoke-virtual {v5, v8}, Lcom/miui/gallery/util/gifdecoder/NSGif;->decodeFrame(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$000(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$300(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 284
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$400(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 286
    .local v6, "now":J
    cmp-long v5, v6, v2

    if-gez v5, :cond_7

    .line 287
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$400(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/os/Handler;

    move-result-object v5

    sub-long v10, v2, v6

    invoke-virtual {v5, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    .end local v6    # "now":J
    :cond_6
    :goto_1
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 289
    .restart local v6    # "now":J
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;->this$0:Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-static {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->access$400(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
