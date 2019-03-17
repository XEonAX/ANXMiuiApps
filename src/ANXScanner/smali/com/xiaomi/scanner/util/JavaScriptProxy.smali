.class public Lcom/xiaomi/scanner/util/JavaScriptProxy;
.super Ljava/lang/Object;
.source "JavaScriptProxy.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final XIAOMI_SCANNER:Ljava/lang/String; = "xiaomiScanner"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "JavaScriptProxy"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/JavaScriptProxy;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launchMiniProgram(Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/xiaomi/scanner/util/JavaScriptProxy;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "launchMiniProgram"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/util/JavaScriptProxy;->launchMiniProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public launchMiniProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 20
    sget-object v2, Lcom/xiaomi/scanner/util/JavaScriptProxy;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "launchMiniProgram two params"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/xiaomi/scanner/util/WXUtils;->getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 22
    .local v0, "iwxapi":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    new-instance v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;-><init>()V

    .line 23
    .local v1, "req":Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;
    iput-object p1, v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->userName:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    iput-object p2, v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->path:Ljava/lang/String;

    .line 27
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->miniprogramType:I

    .line 28
    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 29
    return-void
.end method
