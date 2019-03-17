.class public Lcom/taobao/tlog/adapter/JSLogBridge;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "JSLogBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    }
.end annotation


# static fields
.field private static final GETLOGLEVEL:Ljava/lang/String; = "getLogLevel"

.field private static final LOGD:Ljava/lang/String; = "logd"

.field private static final LOGE:Ljava/lang/String; = "loge"

.field private static final LOGI:Ljava/lang/String; = "logi"

.field private static final LOGV:Ljava/lang/String; = "logv"

.field private static final LOGW:Ljava/lang/String; = "logw"

.field private static final tlogBridgeName:Ljava/lang/String; = "tlogBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    .line 120
    return-void
.end method

.method private getLog(Ljava/lang/String;)Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    .locals 5
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    new-instance v2, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;

    invoke-direct {v2, p0}, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;-><init>(Lcom/taobao/tlog/adapter/JSLogBridge;)V

    .line 111
    .local v2, "log":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string v3, "tag"

    const-string v4, "jsTag"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->tag:Ljava/lang/String;

    .line 113
    const-string v3, "content"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->data:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "log":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    :goto_0
    return-object v2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 26
    const-string v0, "tlogBridge"

    const-class v1, Lcom/taobao/tlog/adapter/JSLogBridge;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 32
    const-string v1, "getLogLevel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 51
    :goto_0
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0

    .line 37
    :cond_1
    const-string v1, "logv"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/taobao/tlog/adapter/JSLogBridge;->logv(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 39
    :cond_2
    const-string v1, "logd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {p0, p2, p3}, Lcom/taobao/tlog/adapter/JSLogBridge;->logd(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "logi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/taobao/tlog/adapter/JSLogBridge;->logi(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 43
    :cond_4
    const-string v1, "logw"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/taobao/tlog/adapter/JSLogBridge;->logw(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 45
    :cond_5
    const-string v1, "loge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/taobao/tlog/adapter/JSLogBridge;->loge(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0
.end method

.method public logd(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/taobao/tlog/adapter/JSLogBridge;->getLog(Ljava/lang/String;)Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;

    move-result-object v0

    .line 70
    .local v0, "logBody":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, v0, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v1, "the tag is null!"

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loge(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/taobao/tlog/adapter/JSLogBridge;->getLog(Ljava/lang/String;)Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;

    move-result-object v0

    .line 100
    .local v0, "logBody":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, v0, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "the tag is null!"

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logi(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/taobao/tlog/adapter/JSLogBridge;->getLog(Ljava/lang/String;)Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;

    move-result-object v0

    .line 80
    .local v0, "logBody":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, v0, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v1, "the tag is null!"

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logv(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/tlog/adapter/JSLogBridge;->getLog(Ljava/lang/String;)Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;

    move-result-object v0

    .line 60
    .local v0, "logBody":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, v0, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v1, "the tag is null!"

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logw(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/taobao/tlog/adapter/JSLogBridge;->getLog(Ljava/lang/String;)Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;

    move-result-object v0

    .line 90
    .local v0, "logBody":Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, v0, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v1, "the tag is null!"

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
