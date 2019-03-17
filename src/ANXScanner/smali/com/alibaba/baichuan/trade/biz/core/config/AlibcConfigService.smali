.class public Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_APPMONITOR_SAMPLING:I = 0x2710

.field public static final DOUBLE_11_OPEN_TYPE_AUTO:I = 0x0

.field public static final DOUBLE_11_OPEN_TYPE_H5:I = 0x2

.field public static final DOUBLE_11_OPEN_TYPE_NATIVE:I = 0x1

.field private static b:Ljava/lang/String;

.field public static channel:Ljava/lang/String;

.field private static e:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;


# instance fields
.field a:Ljava/lang/Runnable;

.field private final c:J

.field private final d:J

.field public expiredTimeStamp:J

.field private f:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

.field private g:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

.field private h:Landroid/os/Handler;

.field private i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

.field public isvVersion:Ljava/lang/String;

.field public taokeParams:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "albbTradeConfig"

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/32 v2, 0x36ee80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->c:J

    iput-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->d:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->h:Landroid/os/Handler;

    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->isvVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->expiredTimeStamp:J

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/b;

    invoke-direct {v0, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/b;-><init>(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->g:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->b()V

    return-void
.end method

.method private a()J
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/common/Environment;->PRE:Lcom/alibaba/baichuan/trade/common/Environment;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->f:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)J
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private b()V
    .locals 4

    const-string v0, "AlibcConfigService"

    const-string v1, "config\u8bbe\u7f6e\u9ed8\u8ba4\u503c\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->g:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;->getJSONConfigDo()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AlibcConfigService"

    const-string v1, "configspwrapper\u6709\u503c"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->g:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;->getJSONConfigDo()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->updateConfig(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AlibcConfigService"

    const-string v1, "\u8bfb\u53d6\u672c\u5730\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "{  \"group0\": {    \"dataId\": \"com.alibaba.baichuan.nbcp.meta.default\",    \"group\": \"1.0.0\",    \"lastUpdate\": \"Jun 14, 2016 2:12:22 PM\",    \"sign\": \"\"  },  \"albbTradeConfig\": {    \"isSyncForTaoke\": \"YES\",    \"isForceH5\": \"NO\",    \"isNeedAlipay\": \"YES\",    \"loginDegarade\": \"NO\"  }}"

    const-string v1, "AlibcConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u914d\u7f6e\u6587\u4ef6\u7684\u503c\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->formatFromJSON(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->updateConfig(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)V

    const-string v0, "AlibcConfigService"

    const-string v1, "\u8bfb\u53d6\u672c\u5730\u914d\u7f6e\u6587\u4ef6\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AlibcConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u9ed8\u8ba4\u914d\u7f6e\u6587\u4ef6\u89e3\u6790\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->g:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->e:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->e:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->e:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppMonitorSampling()I
    .locals 3

    const/16 v1, 0x2710

    const-string v0, "sampling"

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "AlibcConfigService"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getDouble11OpenType()I
    .locals 3

    const/4 v1, 0x0

    const-string v0, "double11OpenType"

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "AlibcConfigService"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    const-string v0, ""

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string v2, "AlibcConfigService"

    const-string v3, "\u672c\u5730\u9ed8\u8ba4\u914d\u7f6e\u6587\u4ef6\u8bfb\u53d6\u9519\u8bef"

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->getConfigValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->getConfigValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGlobalIsvCode()Ljava/lang/String;
    .locals 1

    const-string v0, "isvCode"

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "isvCode"

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlobalTaokeParams()Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->taokeParams:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    return-object v0
.end method

.method public getGroupConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->getConfigValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->getConfigValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsEnabaleABTest()Z
    .locals 2

    const-string v0, "isEnableABTest"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsSyncForTaoke()Z
    .locals 2

    const-string v0, "YES"

    const-string v1, "isSyncForTaoke"

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsTUnionMtopDegrade()Z
    .locals 2

    const-string v0, "isTUnionMtopDegrade"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsvVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "isvVersion"

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "isvVersion"

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->isvVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoginDegarade(Z)Z
    .locals 2

    const-string v0, "loginDegarade"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTaokeParams()Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->taokeParams:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    return-object v0
.end method

.method public init()V
    .locals 3

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;

    invoke-direct {v2, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;-><init>(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)V

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;-><init>(Landroid/content/Context;Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->f:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;

    invoke-virtual {p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->startRepeatingLoadConfigTask()V

    return-void
.end method

.method public isForceH5()Z
    .locals 2

    const-string v0, "YES"

    const-string v1, "isForceH5"

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needTaoke()Z
    .locals 2

    const-string v0, "YES"

    const-string v1, "isTaokeUT"

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setChangeSlickUrl(Z)V
    .locals 2

    const-string v0, "IS_TAOKE_SCLICK"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "channelType"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "channelName"

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->setConfigValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsEnAbleABTest(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isEnableABTest"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v0, "isEnableABTest"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setIsForceH5(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isForceH5"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v1, "isForceH5"

    if-eqz p1, :cond_0

    const-string v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "NO"

    goto :goto_0
.end method

.method public setIsSyncForTaoke(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isSyncForTaoke"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v1, "isSyncForTaoke"

    if-eqz p1, :cond_0

    const-string v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "NO"

    goto :goto_0
.end method

.method public setIsTUnionMtopDegrade(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isTUnionMtopDegrade"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v0, "isTUnionMtopDegrade"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setIsvCode(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isvCode"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v0, "isvCode"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setIsvVersion(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isvVersion"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v0, "isvVersion"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setShouldUseAlipay(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->i:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    const-string v1, "isNeedAlipay"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->addUpdateFilterKeys(Ljava/lang/String;)V

    const-string v1, "isNeedAlipay"

    if-eqz p1, :cond_0

    const-string v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "NO"

    goto :goto_0
.end method

.method public setTaokeParams(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "pid"

    iget-object v1, p1, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->pid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "subPid"

    iget-object v1, p1, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->subPid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "unionId"

    iget-object v1, p1, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->unionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->taokeParams:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    goto :goto_0
.end method

.method public shouldUseAlipay(Z)Z
    .locals 2

    const-string v0, "isNeedAlipay"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startRepeatingLoadConfigTask()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
