.class Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;
.super Landroid/os/Handler;
.source "EGLRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/glec/EGLRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderHandler"
.end annotation


# static fields
.field static final MSG_DRAW_IMAGE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/glec/EGLRender;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/glec/EGLRender;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    .line 306
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 312
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$100(Lcom/miui/screenrecorder/glec/EGLRender;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$200(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 321
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$300(Lcom/miui/screenrecorder/glec/EGLRender;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/screenrecorder/glec/EGLRender;->access$402(Lcom/miui/screenrecorder/glec/EGLRender;J)J

    .line 324
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$500(Lcom/miui/screenrecorder/glec/EGLRender;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 325
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$600(Lcom/miui/screenrecorder/glec/EGLRender;)I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$602(Lcom/miui/screenrecorder/glec/EGLRender;I)I

    .line 326
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$400(Lcom/miui/screenrecorder/glec/EGLRender;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/screenrecorder/glec/EGLRender;->access$502(Lcom/miui/screenrecorder/glec/EGLRender;J)J

    .line 327
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/glec/EGLRender;->makeCurrent(I)V

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$700(Lcom/miui/screenrecorder/glec/EGLRender;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 330
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->drawImage()V

    .line 331
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$400(Lcom/miui/screenrecorder/glec/EGLRender;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v4}, Lcom/miui/screenrecorder/glec/EGLRender;->access$500(Lcom/miui/screenrecorder/glec/EGLRender;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v4}, Lcom/miui/screenrecorder/glec/EGLRender;->access$800(Lcom/miui/screenrecorder/glec/EGLRender;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/screenrecorder/glec/EGLRender;->setPresentationTime(J)V

    .line 332
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->swapBuffers()Z

    .line 333
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$908(Lcom/miui/screenrecorder/glec/EGLRender;)I

    .line 334
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$900(Lcom/miui/screenrecorder/glec/EGLRender;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$600(Lcom/miui/screenrecorder/glec/EGLRender;)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 335
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$600(Lcom/miui/screenrecorder/glec/EGLRender;)I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$602(Lcom/miui/screenrecorder/glec/EGLRender;I)I

    .line 336
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$900(Lcom/miui/screenrecorder/glec/EGLRender;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v4}, Lcom/miui/screenrecorder/glec/EGLRender;->access$400(Lcom/miui/screenrecorder/glec/EGLRender;)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/screenrecorder/glec/EGLRender;->access$1000(Lcom/miui/screenrecorder/glec/EGLRender;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "EncodeDecodeSurface"

    const-string v2, "error in draw image "

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v1}, Lcom/miui/screenrecorder/glec/EGLRender;->access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->this$0:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/EGLRender;->access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
