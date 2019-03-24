.class public Lmiui/hybrid/feature/Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final LOG_TAG:Ljava/lang/String; = "Device"

.field private static final zm:Ljava/lang/String; = "getDeviceInfo"

.field private static final zn:Ljava/lang/String; = "model"

.field private static final zo:Ljava/lang/String; = "romVersion"

.field private static final zp:Ljava/lang/String; = "region"

.field private static final zq:Ljava/lang/String; = "deviceId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ct()Lmiui/hybrid/Response;
    .locals 3

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    :try_start_0
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "romVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "region"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "deviceId"

    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    new-instance v1, Lmiui/hybrid/Response;

    invoke-direct {v1, v0}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "Device"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xc8

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 64
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string v0, "getDeviceInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 68
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    .line 55
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 56
    const-string v0, "getDeviceInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lmiui/hybrid/feature/Device;->ct()Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    return-void
.end method
