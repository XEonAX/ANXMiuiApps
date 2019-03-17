.class Lcom/xiaomi/scanner/module/DocumentModule$DocumentHandler;
.super Landroid/os/Handler;
.source "DocumentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/DocumentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentHandler"
.end annotation


# instance fields
.field mDocumentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/module/DocumentModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/scanner/module/DocumentModule;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "documentModule"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 455
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule$DocumentHandler;->mDocumentReference:Ljava/lang/ref/WeakReference;

    .line 456
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 460
    iget-object v9, p0, Lcom/xiaomi/scanner/module/DocumentModule$DocumentHandler;->mDocumentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/DocumentModule;

    .line 461
    .local v0, "documentModule":Lcom/xiaomi/scanner/module/DocumentModule;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$100(Lcom/xiaomi/scanner/module/DocumentModule;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 462
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/module/DocumentModule;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drop msg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 475
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    .line 476
    .local v8, "toGrayScale":Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 477
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$300(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$300(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 479
    .local v6, "start":J
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$300(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/recognizer/Quadrangle;->covertToGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 480
    .local v2, "grayBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/xiaomi/scanner/module/DocumentModule;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GRAY_DOCUMENT: cost="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 481
    if-eqz v2, :cond_3

    .line 482
    invoke-static {}, Lcom/xiaomi/scanner/module/DocumentModule;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GRAY_DOCUMENT: size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 483
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$400(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 494
    .end local v2    # "grayBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "start":J
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$700(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    goto/16 :goto_0

    .line 467
    .end local v8    # "toGrayScale":Ljava/lang/Boolean;
    :pswitch_1
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$300(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/scanner/util/ImageUtils;->saveJpeg(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "jpegPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 469
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f07004d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "saveMsg":Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "formatMsg":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    .end local v1    # "formatMsg":Ljava/lang/String;
    .end local v3    # "jpegPath":Ljava/lang/String;
    .end local v5    # "saveMsg":Ljava/lang/String;
    .restart local v8    # "toGrayScale":Ljava/lang/Boolean;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 488
    .restart local v6    # "start":J
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$500(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$600(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/recognizer/RecognizeResult;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/util/ImageUtils;->rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 489
    .local v4, "rectified":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/xiaomi/scanner/module/DocumentModule;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "COLOR_DOCUMENT: cost="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 490
    if-eqz v4, :cond_3

    .line 491
    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$400(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
