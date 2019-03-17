.class final Lcom/alibaba/baichuan/trade/biz/core/taoke/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/alimama/tunion/trade/convert/TUnionConvertResult;)V
    .locals 4

    if-nez p1, :cond_1

    const-string v0, "TUnion"

    const-string v1, "genTaokeUrl error(result is null)"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->getResultUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

    if-eqz v1, :cond_0

    const-string v1, "TUnion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genTaokeUrl : url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;->getTaokeUrl(ILjava/lang/String;)V

    goto :goto_0
.end method
