.class Lcom/alibaba/baichuan/trade/biz/core/config/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/b;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/b;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/b;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->startProcessor()V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/b;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/b;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    iget-object v1, v1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/config/b;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {v2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
