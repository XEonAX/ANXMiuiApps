.class Lcom/miui/gallery/net/GalleryNetwork;
.super Lcom/android/volley/toolbox/BasicNetwork;
.source "GalleryNetwork.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;)V

    .line 21
    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/16 v7, 0x3e9

    .line 25
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 26
    new-instance v6, Lcom/miui/gallery/net/base/RequestError;

    sget-object v7, Lcom/miui/gallery/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v8, "Network not connected."

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/miui/gallery/net/base/RequestError;-><init>(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    throw v6

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v3

    .line 30
    .local v3, "method":I
    if-lt v3, v7, :cond_4

    .line 32
    :try_start_0
    instance-of v6, p1, Lcom/miui/gallery/net/json/JsonObjectRequest;

    if-nez v6, :cond_1

    .line 33
    new-instance v6, Lcom/android/volley/VolleyError;

    const-string v7, "Not support this request type"

    invoke-direct {v6, v7}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/miui/gallery/cloud/GalleryMiCloudServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 36
    .end local v1    # "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/net/json/JsonObjectRequest;

    move-object v2, v0

    .line 37
    .local v2, "jsonRequest":Lcom/miui/gallery/net/json/JsonObjectRequest;
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v4

    .line 38
    .local v4, "provider":Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;
    if-ne v3, v7, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/gallery/net/json/JsonObjectRequest;->getParams()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "response":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/android/volley/NetworkResponse;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/volley/NetworkResponse;-><init>([B)V

    .line 52
    .end local v2    # "jsonRequest":Lcom/miui/gallery/net/json/JsonObjectRequest;
    .end local v4    # "provider":Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;
    .end local v5    # "response":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 40
    .restart local v2    # "jsonRequest":Lcom/miui/gallery/net/json/JsonObjectRequest;
    .restart local v4    # "provider":Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;
    :cond_2
    const/16 v6, 0x3ea

    if-ne v3, v6, :cond_3

    .line 41
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/gallery/net/json/JsonObjectRequest;->getParams()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "response":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v5    # "response":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/volley/VolleyError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/miui/gallery/cloud/GalleryMiCloudServerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .end local v2    # "jsonRequest":Lcom/miui/gallery/net/json/JsonObjectRequest;
    .end local v4    # "provider":Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/BasicNetwork;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v6

    goto :goto_1
.end method
