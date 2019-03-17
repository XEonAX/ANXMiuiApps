.class Lcom/alibaba/imagesearch/ui/PailitaoActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/PailitaoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/imagesearch/ui/PailitaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$2;->this$0:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    const-string v0, "retry init BaiChuan SDK Success"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "retry init BaiChuan SDK Success"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

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

    return-void
.end method
