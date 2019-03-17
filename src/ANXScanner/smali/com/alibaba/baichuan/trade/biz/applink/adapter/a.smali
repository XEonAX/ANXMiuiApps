.class Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaokeUrl(ILjava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    iget-object v4, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->c:Ljava/util/Map;

    invoke-static {v2, v4}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    iget-object v5, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->c:Ljava/util/Map;

    invoke-static {v2, v5}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    iget-object v6, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->c:Ljava/util/Map;

    invoke-static {v2, v6}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->c(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v6

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    iget-object v7, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;->c:Ljava/util/Map;

    invoke-static {v2, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->d(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpTBURI(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    goto :goto_0
.end method
