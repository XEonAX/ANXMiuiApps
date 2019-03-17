.class Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;
.super Landroid/os/AsyncTask;
.source "CodeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/CodeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainWorkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mIsCropped:Z

.field private weakModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/module/CodeModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 1
    .param p1, "module"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 422
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->weakModule:Ljava/lang/ref/WeakReference;

    .line 423
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/google/zxing/Result;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 427
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    .line 428
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    .line 429
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainWorkTask null file path. cropped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainWorkTask filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isCropped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const-string v0, "barcode_decode_image_zxing_count"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 438
    const-string v0, "ar_code_server_req"

    const-string v1, "select_image"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->doInBackground([Ljava/lang/Object;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/zxing/Result;)V
    .locals 3
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 444
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->weakModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/CodeModule;

    .line 445
    .local v0, "module":Lcom/xiaomi/scanner/module/CodeModule;
    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "drop this search task cancled"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$700(Lcom/xiaomi/scanner/module/CodeModule;)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    const v1, 0x7f070057

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 455
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$700(Lcom/xiaomi/scanner/module/CodeModule;)V

    .line 456
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "drop this search, null file path"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_2
    if-eqz p1, :cond_3

    .line 460
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule;->access$800(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;)V

    .line 466
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$700(Lcom/xiaomi/scanner/module/CodeModule;)V

    .line 467
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$1000(Lcom/xiaomi/scanner/module/CodeModule;)V

    goto :goto_0

    .line 461
    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    if-nez v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule;->access$900(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_4
    const v1, 0x7f070095

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 416
    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->onPostExecute(Lcom/google/zxing/Result;)V

    return-void
.end method
