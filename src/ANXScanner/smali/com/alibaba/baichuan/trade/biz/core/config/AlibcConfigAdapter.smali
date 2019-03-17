.class public Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final CHECK_GROUP_NAME:Ljava/lang/String; = "group0"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public formatFromJSON(Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->TAG:Ljava/lang/String;

    const-string v2, "json\u8f6c\u6362\u4e3amap\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getConfigData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    return-object v0
.end method

.method public removeCheckGroup()Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    const-string v1, "group0"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    const-string v1, "group0"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreCheckGroup()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    const-string v1, "group0"

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
