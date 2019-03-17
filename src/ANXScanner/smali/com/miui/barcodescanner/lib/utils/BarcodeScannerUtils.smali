.class public Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;
.super Ljava/lang/Object;
.source "BarcodeScannerUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;,
        Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;,
        Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.xiaomi.scanner.app.RemoteService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageSize:I

.field private mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

.field private mService:Lcom/miui/barcodescanner/lib/utils/IRemoteService;

.field private mText:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private unBindSercice()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public createQRImage(Ljava/lang/String;ILandroid/content/Context;Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "qrImageSize"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "listener"    # Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;

    .prologue
    .line 36
    iput-object p4, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    .line 37
    iput-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mText:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    if-eqz p4, :cond_0

    .line 40
    invoke-interface {p4}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;->onFail()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iput p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mImageSize:I

    .line 45
    iput-object p3, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.scanner"

    const-string v2, "com.xiaomi.scanner.app.RemoteService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    if-nez v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p2}, Lcom/miui/barcodescanner/lib/utils/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/barcodescanner/lib/utils/IRemoteService;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mService:Lcom/miui/barcodescanner/lib/utils/IRemoteService;

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    instance-of v2, v2, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mService:Lcom/miui/barcodescanner/lib/utils/IRemoteService;

    iget-object v3, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mText:Ljava/lang/String;

    iget v4, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mImageSize:I

    invoke-interface {v2, v3, v4}, Lcom/miui/barcodescanner/lib/utils/IRemoteService;->createQRImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    check-cast v2, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;

    invoke-interface {v2, v0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;->onSuccess(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->release()V

    goto :goto_0

    .line 78
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    invoke-interface {v2}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;->onFail()V

    goto :goto_1

    .line 89
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mService:Lcom/miui/barcodescanner/lib/utils/IRemoteService;

    iget-object v3, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/miui/barcodescanner/lib/utils/IRemoteService;->recogniseQRImage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    check-cast v2, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;

    invoke-interface {v2, v1}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    invoke-interface {v2}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;->onFail()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->release()V

    .line 97
    return-void
.end method

.method public recogniseQRImage(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mUri:Landroid/net/Uri;

    .line 54
    iput-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    .line 56
    if-nez p1, :cond_1

    .line 57
    if-eqz p3, :cond_0

    .line 58
    invoke-interface {p3}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;->onFail()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.scanner.app.RemoteService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->unBindSercice()V

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
