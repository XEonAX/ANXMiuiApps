.class public Lcom/xiaomi/scanner/module/PailitaoManager;
.super Ljava/lang/Object;
.source "PailitaoManager.java"


# static fields
.field private static final STATUS_INITIALIZATION_DONE_FAILURE:I = 0x15

.field private static final STATUS_INITIALIZATION_DONE_SUCCESS:I = 0x14

.field private static final STATUS_INITIALIZATION_DONING:I = 0xa

.field private static final STATUS_INITIALIZATION_NENER:I

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static sStatus:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PailitaoManager"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/PailitaoManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/PailitaoManager;->sStatus:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/scanner/module/PailitaoManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 29
    sput-object p0, Lcom/xiaomi/scanner/module/PailitaoManager;->sStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final decode(Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/taobao/ma/common/result/MaResult;
    .locals 3
    .param p0, "params"    # Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->getYuvImage()Landroid/graphics/YuvImage;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/module/PailitaoManager;->pailitaoDecode(Landroid/graphics/YuvImage;)Lcom/taobao/ma/common/result/MaResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/module/PailitaoManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Pailitao.decode"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 93
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/module/PailitaoManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "no need to init sdk"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/module/PailitaoManager;->sStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    new-instance v0, Lcom/alibaba/imagesearch/PailitaoSettings;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;-><init>()V

    .line 102
    .local v0, "settings":Lcom/alibaba/imagesearch/PailitaoSettings;
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    .line 103
    const-string v1, "xiaomi"

    iput-object v1, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    .line 104
    const-string v1, "xiaomi"

    iput-object v1, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    .line 105
    const-string v1, "mm_113567256_12244709_53870994"

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/PailitaoSettings;->setTaokePid(Ljava/lang/String;)V

    .line 107
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/scanner/module/PailitaoManager;->sStatus:Ljava/lang/Integer;

    .line 110
    new-instance v1, Lcom/xiaomi/scanner/module/PailitaoManager$2;

    invoke-direct {v1}, Lcom/xiaomi/scanner/module/PailitaoManager$2;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/Pailitao;->initialize(Landroid/app/Application;Lcom/alibaba/imagesearch/PailitaoSettings;Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;)V

    goto :goto_0
.end method

.method public static final isReady()Z
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/xiaomi/scanner/module/PailitaoManager;->sStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pailitaoDecode(Landroid/graphics/YuvImage;)Lcom/taobao/ma/common/result/MaResult;
    .locals 7
    .param p0, "yuvimage"    # Landroid/graphics/YuvImage;

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    .local v2, "var2":J
    invoke-static {}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->removeAllResultParser()V

    .line 56
    new-instance v1, Lcom/taobao/ma/bar/parser/MaBarParSer;

    invoke-direct {v1}, Lcom/taobao/ma/bar/parser/MaBarParSer;-><init>()V

    invoke-static {v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    .line 57
    new-instance v1, Lcom/taobao/ma/qr/parser/MaQrParSer;

    invoke-direct {v1}, Lcom/taobao/ma/qr/parser/MaQrParSer;-><init>()V

    invoke-static {v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    .line 58
    new-instance v1, Lcom/taobao/ma/qr/parser/MaTBAntiFakeParSer;

    invoke-direct {v1}, Lcom/taobao/ma/qr/parser/MaTBAntiFakeParSer;-><init>()V

    invoke-static {v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    .line 59
    new-instance v1, Lcom/taobao/ma/qr/parser/Ma4GParSer;

    invoke-direct {v1}, Lcom/taobao/ma/qr/parser/Ma4GParSer;-><init>()V

    invoke-static {v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    .line 60
    new-instance v1, Lcom/taobao/ma/qr/parser/MaDMParSer;

    invoke-direct {v1}, Lcom/taobao/ma/qr/parser/MaDMParSer;-><init>()V

    invoke-static {v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    .line 61
    new-instance v1, Lcom/taobao/ma/qr/parser/MaGen3ParSer;

    invoke-direct {v1}, Lcom/taobao/ma/qr/parser/MaGen3ParSer;-><init>()V

    invoke-static {v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    .line 62
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/taobao/ma/common/result/MaType;

    const/4 v5, 0x0

    sget-object v6, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    aput-object v6, v4, v5

    invoke-static {p0, v1, v4}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->decode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/taobao/ma/common/result/MaType;)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v0

    .line 63
    .local v0, "result":Lcom/taobao/ma/common/result/MaResult;
    return-object v0
.end method

.method public static searchImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/alibaba/imagesearch/Pailitao;->searchImage(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static showMaPage(Landroid/app/Activity;Lcom/taobao/ma/common/result/MaResult;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "result"    # Lcom/taobao/ma/common/result/MaResult;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/taobao/ma/common/result/MaResult;->getType()Lcom/taobao/ma/common/result/MaType;

    move-result-object v1

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    if-eq v1, v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/NetworkUtil;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Lcom/xiaomi/scanner/module/PailitaoManager$1;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/PailitaoManager$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/Pailitao;->showMaPage(Landroid/app/Activity;Lcom/taobao/ma/common/result/MaResult;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z

    move-result v0

    goto :goto_0
.end method
