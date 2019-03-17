.class public Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;
.super Ljava/lang/Object;
.source "BigMiCloudProvider.java"

# interfaces
.implements Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;


# static fields
.field private static final sCloudCoder:Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudCoder;

.field private static final sCloudManager:Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;->sCloudCoder:Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudCoder;

    .line 56
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider$2;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;->sCloudManager:Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFileSDKDownload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 0
    .param p2, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "master":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->download(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 93
    return-void
.end method

.method public doFileSDKUpload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 0
    .param p2, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "master":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;->upload(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;->sCloudManager:Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->newInstance()Lcom/xiaomi/micloudsdk/request/CloudHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 101
    .local v1, "resultString":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    new-instance v2, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    invoke-direct {v2, v0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 115
    .local v1, "resultString":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    new-instance v2, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    invoke-direct {v2, v0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
