.class Lcom/alibaba/baichuan/trade/biz/core/config/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "AlibcConfigBusiness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u4ece\u7f51\u7edc\u62c9\u53d6config\u6570\u636e,url\u4e3a\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/http/HttpHelper;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "AlibcConfigBusiness"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u62c9\u53d6\u7684config\u6570\u636e\u4e3a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->formatFromJSON(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v3, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "AlibcConfigBusiness"

    const-string v4, "\u7f51\u7edc\u62c9\u53d6config\u6570\u636e\u6210\u529f"

    invoke-static {v3, v4}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)V

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;->onSuccess(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "AlibcConfigBusiness"

    const-string v1, "config\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    const-string v1, "\u6821\u9a8c\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    move-result-object v0

    const-string v1, "config\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AlibcConfigBusiness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790JSON\u51fa\u9519"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    const-string v2, "\u89e3\u6790\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;->onError(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    instance-of v0, v1, Lcom/alibaba/baichuan/trade/common/utils/http/HttpHelper$HttpHelpterException;

    if-eqz v0, :cond_1

    const-string v0, "AlibcConfigBusiness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6Http\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/alibaba/baichuan/trade/common/utils/http/HttpHelper$HttpHelpterException;

    iget v3, v0, Lcom/alibaba/baichuan/trade/common/utils/http/HttpHelper$HttpHelpterException;->statusCode:I

    const/16 v4, -0x3e7

    if-ne v3, v4, :cond_4

    move-object v0, v2

    :goto_2
    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    const-string v3, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v2, v0, v3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget v0, v0, Lcom/alibaba/baichuan/trade/common/utils/http/HttpHelper$HttpHelpterException;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
