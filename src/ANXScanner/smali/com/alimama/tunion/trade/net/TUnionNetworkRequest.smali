.class public Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;
.super Ljava/lang/Object;
.source "TUnionNetworkRequest.java"


# static fields
.field public static final TUNION_KEY_ADZONEID:Ljava/lang/String; = "adzoneid"

.field public static final TUNION_KEY_APPKEY:Ljava/lang/String; = "appkey"

.field public static final TUNION_KEY_APP_VERSION_NAME:Ljava/lang/String; = "appVersion"

.field public static final TUNION_KEY_CID:Ljava/lang/String; = "cid"

.field public static final TUNION_KEY_COOKIE_CNA:Ljava/lang/String; = "acookie"

.field public static final TUNION_KEY_DEVICE_MODEL:Ljava/lang/String; = "deviceModel"

.field public static final TUNION_KEY_INSTALLED_ALI_APP:Ljava/lang/String; = "aliapp"

.field public static final TUNION_KEY_JUMP_TYPE:Ljava/lang/String; = "jtype"

.field public static final TUNION_KEY_OS:Ljava/lang/String; = "os"

.field public static final TUNION_KEY_OS_NAME:Ljava/lang/String; = "android"

.field public static final TUNION_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TUNION_KEY_PHONE_ID:Ljava/lang/String; = "mcid"

.field public static final TUNION_KEY_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field public static final TUNION_KEY_SUBPID:Ljava/lang/String; = "subpid"

.field public static final TUNION_KEY_UNID:Ljava/lang/String; = "unid"

.field public static final TUNION_KEY_USERID:Ljava/lang/String; = "userId"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
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

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->h:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->n:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->o:Z

    return-void
.end method

.method private static a(Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alimama/tunion/trade/convert/TUnionMediaParams;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getAliApp()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string v2, "aliapp"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCnaCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "acookie"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCnaCookie()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    const-string v0, "mcid"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    const-string v0, "cid"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    const-string v0, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "deviceModel"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "packageName"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "sdkVersion"

    const-string v2, "0.3.4"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "appVersion"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getAdzoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getAdzoneId()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_4
    if-nez p1, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 152
    const-string v3, "appkey"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 156
    const-string v2, "adzoneid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getSubpid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    const-string v0, "subpid"

    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getSubpid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_7
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getUnid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 164
    const-string v0, "unid"

    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getUnid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_8
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_9
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const-string v1, "userId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    const-string v2, "appkey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    return-object v0
.end method

.method private static a(Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getAliApp()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const-string v2, "aliapp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_0
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "mcid"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez p0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "deviceModel"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "packageName"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "sdkVersion"

    const-string v2, "0.3.4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "appVersion"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object v0

    .line 80
    :cond_2
    const-string v1, "aliapp"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static createABTestRequest(Z)Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    new-instance v0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;

    invoke-direct {v0}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;-><init>()V

    .line 103
    const-string v1, "https://tunion-api.m.taobao.com/config"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setUrlName(Ljava/lang/String;)V

    .line 104
    const-string v1, "mtop.taobao.tbk.sdk.config"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setMtopApiName(Ljava/lang/String;)V

    .line 105
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setMtopApiVersion(Ljava/lang/String;)V

    .line 106
    const v1, 0x493e0

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setTimeOut(I)V

    .line 107
    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {v0, v2}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setPost(Z)V

    .line 113
    :goto_0
    invoke-static {p0}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setParamMap(Ljava/util/Map;)V

    .line 114
    return-object v0

    .line 110
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setPost(Z)V

    goto :goto_0
.end method

.method public static createConvertRequest(Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Z)Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;

    invoke-direct {v0}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;-><init>()V

    .line 175
    const-string v1, "https://tunion-api.m.taobao.com/convert"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setUrlName(Ljava/lang/String;)V

    .line 176
    const-string v1, "mtop.taobao.tbk.sdk.item.convert"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setMtopApiName(Ljava/lang/String;)V

    .line 177
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setMtopApiVersion(Ljava/lang/String;)V

    .line 178
    const v1, 0x493e0

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setTimeOut(I)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setPost(Z)V

    .line 184
    :goto_0
    invoke-static {p0, p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->a(Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setParamMap(Ljava/util/Map;)V

    .line 185
    return-object v0

    .line 182
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setPost(Z)V

    goto :goto_0
.end method

.method public static createTokenRequest(Ljava/lang/String;)Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;

    invoke-direct {v0}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;-><init>()V

    .line 190
    const-string v1, "https://tunion-api.m.taobao.com/token"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setUrlName(Ljava/lang/String;)V

    .line 191
    const v1, 0x493e0

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setTimeOut(I)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setPost(Z)V

    .line 193
    invoke-static {p0}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->setParamMap(Ljava/util/Map;)V

    .line 194
    return-object v0
.end method


# virtual methods
.method public getMtopAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopAuthParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopExtHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getMtopOpenAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopRequestType()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->l:I

    return v0
.end method

.method public getParamMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->p:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->n:I

    return v0
.end method

.method public getUrlName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isMtopIsVip()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->m:Z

    return v0
.end method

.method public isMtopNeedAuth()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->e:Z

    return v0
.end method

.method public isMtopNeedCache()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->g:Z

    return v0
.end method

.method public isMtopNeedLogin()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->d:Z

    return v0
.end method

.method public isMtopNeedWua()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->f:Z

    return v0
.end method

.method public isPost()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->o:Z

    return v0
.end method

.method public setMtopAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->k:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setMtopApiName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->b:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setMtopApiVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->c:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setMtopAuthParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->h:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setMtopExtHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->i:Ljava/util/Map;

    .line 362
    return-void
.end method

.method public setMtopIsVip(Z)V
    .locals 0

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->m:Z

    .line 386
    return-void
.end method

.method public setMtopNeedAuth(Z)V
    .locals 0

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->e:Z

    .line 295
    return-void
.end method

.method public setMtopNeedCache(Z)V
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->g:Z

    .line 277
    return-void
.end method

.method public setMtopNeedLogin(Z)V
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->d:Z

    .line 269
    return-void
.end method

.method public setMtopNeedWua(Z)V
    .locals 0

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->f:Z

    .line 313
    return-void
.end method

.method public setMtopOpenAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->j:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setMtopRequestType(I)V
    .locals 0

    .prologue
    .line 337
    iput p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->l:I

    .line 338
    return-void
.end method

.method public setParamMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->p:Ljava/util/Map;

    .line 394
    return-void
.end method

.method public setPost(Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->o:Z

    .line 330
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    .prologue
    .line 353
    iput p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->n:I

    .line 354
    return-void
.end method

.method public setUrlName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->a:Ljava/lang/String;

    .line 225
    return-void
.end method
