.class final Lcom/alibaba/imagesearch/Pailitao$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/Pailitao;->initialize(Landroid/app/Application;Lcom/alibaba/imagesearch/PailitaoSettings;Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;

.field final synthetic val$context:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$context:Landroid/app/Application;

    iput-object p2, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$callback:Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/imagesearch/Pailitao;->inited:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PailitaoHome"

    const-string v2, "BCInitFailed"

    invoke-static {v1, v2, v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alibc init Failed i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->initLogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$callback:Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$callback:Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "Alibc init Success"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->initLogD(Ljava/lang/String;)V

    const-string v0, "PSFuncBridge"

    const-class v1, Lcom/alibaba/imagesearch/a/c;

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->setISVCode(Ljava/lang/String;)Z

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-static {v0}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->setTaokeParams(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$context:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$context:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/c;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$context:Landroid/app/Application;

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/imagesearch/Pailitao;->inited:Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$callback:Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$2;->val$callback:Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;

    invoke-interface {v0}, Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;->onSuccess()V

    :cond_1
    return-void
.end method
