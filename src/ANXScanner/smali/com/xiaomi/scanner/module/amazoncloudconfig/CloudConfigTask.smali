.class public Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;
.super Landroid/os/AsyncTask;
.source "CloudConfigTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_DATA_REPORT:Ljava/lang/String; = "imp_b_back_ad_event"

.field private static final EVENT_REPORT_URL:Ljava/lang/String; = "https://api.setting.intl.miui.com/setting/v1/config"

.field public static final MIUISCANNER_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.scanner"

.field private static final PARAM_KEY_APP_ID:Ljava/lang/String; = "app_id"

.field private static final PARAM_KEY_APP_VERSION:Ljava/lang/String; = "version_name"

.field private static final PARAM_KEY_CIDS:Ljava/lang/String; = "cids"

.field private static final PARAM_KEY_LANGUAGE:Ljava/lang/String; = "l"

.field private static final PARAM_KEY_MIUI_VERSION:Ljava/lang/String; = "miui_version"

.field private static final PARAM_KEY_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final PARAM_KEY_REGION:Ljava/lang/String; = "r"

.field private static final PARAM_KEY_SERVER_CODE:Ljava/lang/String; = "server_code"

.field private static final PARAM_KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final PARAM_VALUE_APP_ID:Ljava/lang/String; = "GLOBAL_MISCANNER"

.field private static final PARAM_VALUE_CIDS:Ljava/lang/String; = "scanner_switch"

.field private static final PARAM_VALUE_SERVER_CODE:Ljava/lang/String; = "100"

.field private static final PRODUCTION_SCANNER_API_HOST:Ljava/lang/String; = "https://api.setting.intl.miui.com"

.field private static final SECRET_KEY:Ljava/lang/String; = "1a142cb487bcb06f"

.field private static final SIGN_SALT:Ljava/lang/String; = "4fd450ec3389b623d119a62b5c574ee7"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mCloudConfigResponse:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CloudConfigTask"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;)V
    .locals 1
    .param p1, "cloudConfigResponse"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->mCloudConfigResponse:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->mCloudConfigResponse:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->parseResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->error()V

    return-void
.end method

.method private error()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->mCloudConfigResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;

    .line 133
    .local v0, "res":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;->onError()V

    .line 136
    :cond_0
    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "https://api.setting.intl.miui.com/setting/v1/config"

    return-object v0
.end method

.method private parseResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v7, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->mCloudConfigResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;

    .line 140
    .local v6, "res":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;
    if-nez v6, :cond_0

    .line 154
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    .local v1, "dataObject":Lorg/json/JSONObject;
    const-string v7, "list"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 146
    .local v4, "listArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 147
    .local v5, "listObject":Lorg/json/JSONObject;
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    .local v0, "contentObject":Lorg/json/JSONObject;
    const-string v7, "enable_switch"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 149
    .local v3, "isAmazonAssistantEnabled":Z
    invoke-interface {v6, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;->onResponse(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v1    # "dataObject":Lorg/json/JSONObject;
    .end local v3    # "isAmazonAssistantEnabled":Z
    .end local v4    # "listArray":Lorg/json/JSONArray;
    .end local v5    # "listObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "amazon assistant cloud config parserResponse - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->error()V

    goto :goto_0
.end method

.method private reportAction()V
    .locals 8

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 70
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "language":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v5, "version_name"

    const-string v6, "10.6"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v5, "server_code"

    const-string v6, "100"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v5, "app_id"

    const-string v6, "GLOBAL_MISCANNER"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v5, "cids"

    const-string v6, "scanner_switch"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v5, "r"

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v5, "pkg"

    const-string v6, "com.xiaomi.scanner"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v5, "l"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "miui_version"

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getMiuiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "4fd450ec3389b623d119a62b5c574ee7"

    invoke-static {v5, v6, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->wrapperUriWithParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "url":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 85
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "reportAction - url is null"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v6, "1a142cb487bcb06f"

    const-string v5, "timestamp"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "imp_b_back_ad_event"

    invoke-static {v6, v5, v7}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->encryptionBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    .local v0, "bodyByte":[B
    new-instance v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;

    invoke-direct {v5, p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;-><init>(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;)V

    invoke-static {v4, v0, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->post(Ljava/lang/String;[BLcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 63
    sget-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Cloud config call doInBackground"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->reportAction()V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
