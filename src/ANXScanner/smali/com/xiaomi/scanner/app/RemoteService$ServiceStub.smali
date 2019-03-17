.class Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;
.super Lcom/miui/barcodescanner/lib/utils/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field private mService:Lcom/xiaomi/scanner/app/RemoteService;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/RemoteService;)V
    .locals 0
    .param p1, "service"    # Lcom/xiaomi/scanner/app/RemoteService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/barcodescanner/lib/utils/IRemoteService$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;->mService:Lcom/xiaomi/scanner/app/RemoteService;

    .line 37
    return-void
.end method


# virtual methods
.method public createQRImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "qrImageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeEncoder;->encodeText(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/google/zxing/WriterException;
    invoke-static {}, Lcom/xiaomi/scanner/app/RemoteService;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "WriterException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "e":Lcom/google/zxing/WriterException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/xiaomi/scanner/app/RemoteService;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "OutOfMemoryError"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public recogniseQRImage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 56
    .local v2, "result":Lcom/google/zxing/Result;
    if-nez v2, :cond_0

    .line 60
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "result":Lcom/google/zxing/Result;
    :goto_0
    return-object v3

    .line 56
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "result":Lcom/google/zxing/Result;
    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/scanner/module/code/utils/Utils;->formatToGB(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 57
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaomi/scanner/app/RemoteService;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Exception"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
