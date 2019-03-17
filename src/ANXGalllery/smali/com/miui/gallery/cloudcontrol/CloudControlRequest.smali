.class public Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "CloudControlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->getMethod()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 32
    const-string v0, "data"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->getDataParam()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 33
    const-string/jumbo v0, "syncToken"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->getSyncToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;-><init>(Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;)V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->reportImeiIsNull()V

    return-void
.end method

.method private ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private static reportImeiIsNull()V
    .locals 7

    .prologue
    .line 132
    const-string v0, "cloud_control"

    const-string v1, "imei_is_null"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 135
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;-><init>(Lcom/miui/gallery/cloudcontrol/CloudControlRequest;)V

    .line 44
    invoke-virtual {v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/CloudControlResponse;

    .line 45
    .local v0, "cloudControlResponse":Lcom/miui/gallery/cloudcontrol/CloudControlResponse;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->deliverResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v0    # "cloudControlResponse":Lcom/miui/gallery/cloudcontrol/CloudControlResponse;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 48
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->PARSE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    .end local v1    # "e":Lcom/google/gson/JsonParseException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->HANDLE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
