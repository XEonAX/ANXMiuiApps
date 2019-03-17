.class Lcom/xiaomi/scanner/module/DocumentModule$MainTaskHandler;
.super Landroid/os/Handler;
.source "DocumentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/DocumentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainTaskHandler"
.end annotation


# instance fields
.field private mDocumentReference:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/xiaomi/scanner/module/DocumentModule;)V
    .locals 1
    .param p1, "documentModule"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 508
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule$MainTaskHandler;->mDocumentReference:Ljava/lang/ref/WeakReference;

    .line 509
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 513
    iget-object v3, p0, Lcom/xiaomi/scanner/module/DocumentModule$MainTaskHandler;->mDocumentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/DocumentModule;

    .line 514
    .local v1, "documentModule":Lcom/xiaomi/scanner/module/DocumentModule;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/scanner/module/DocumentModule;->access$100(Lcom/xiaomi/scanner/module/DocumentModule;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/module/DocumentModule;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 533
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/module/DocumentModule;->access$800(Lcom/xiaomi/scanner/module/DocumentModule;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 520
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/xiaomi/recognizer/RecognizeResult;

    if-eqz v3, :cond_1

    .line 521
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaomi/recognizer/RecognizeResult;

    .line 522
    .local v2, "result":Lcom/xiaomi/recognizer/RecognizeResult;
    invoke-static {}, Lcom/xiaomi/scanner/module/DocumentModule;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECTIFY: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bitmap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/xiaomi/scanner/module/DocumentModule;->access$500(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    invoke-static {v1, v2}, Lcom/xiaomi/scanner/module/DocumentModule;->access$602(Lcom/xiaomi/scanner/module/DocumentModule;Lcom/xiaomi/recognizer/RecognizeResult;)Lcom/xiaomi/recognizer/RecognizeResult;

    .line 524
    invoke-static {v1}, Lcom/xiaomi/scanner/module/DocumentModule;->access$500(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/xiaomi/scanner/util/ImageUtils;->rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/module/DocumentModule;->access$800(Lcom/xiaomi/scanner/module/DocumentModule;Landroid/graphics/Bitmap;)V

    .line 525
    invoke-static {v1}, Lcom/xiaomi/scanner/module/DocumentModule;->access$700(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    goto :goto_0

    .line 529
    .end local v2    # "result":Lcom/xiaomi/recognizer/RecognizeResult;
    :pswitch_3
    new-instance v0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/DocumentModule;->access$300(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->OCR:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    invoke-direct {v0, v3, v4}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;-><init>(Landroid/graphics/Bitmap;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V

    .line 530
    .local v0, "bean":Lcom/xiaomi/scanner/translation/bean/ScanDataBean;
    invoke-static {v1}, Lcom/xiaomi/scanner/module/DocumentModule;->access$900(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->scan(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
