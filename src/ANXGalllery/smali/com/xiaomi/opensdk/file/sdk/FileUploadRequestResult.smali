.class public Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
.super Lcn/kuaipan/android/kss/UploadRequestResult;
.source "FileUploadRequestResult.java"

# interfaces
.implements Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;


# static fields
.field public static final PARSER:Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser",
            "<",
            "Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final requestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->PARSER:Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "resultData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/UploadRequestResult;-><init>(Ljava/util/Map;)V

    .line 42
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->requestId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
    .locals 6
    .param p0, "kssStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 53
    new-instance v3, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    invoke-direct {v3, v2}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcn/kuaipan/android/utils/IObtainable;

    if-eqz v4, :cond_0

    .line 61
    check-cast v2, Lcn/kuaipan/android/utils/IObtainable;

    .end local v2    # "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Lcn/kuaipan/android/utils/IObtainable;->recycle()V

    :cond_0
    return-object v3

    .line 54
    .restart local v2    # "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a50c

    const-string v5, "kss is null"

    invoke-direct {v3, v4, v5, v1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    instance-of v4, v2, Lcn/kuaipan/android/utils/IObtainable;

    if-eqz v4, :cond_1

    .line 61
    check-cast v2, Lcn/kuaipan/android/utils/IObtainable;

    .end local v2    # "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Lcn/kuaipan/android/utils/IObtainable;->recycle()V

    :cond_1
    throw v3

    .line 56
    .restart local v2    # "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a509

    const-string v5, "kss is not json"

    invoke-direct {v3, v4, v5, v1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "result":Lorg/json/JSONObject;
    invoke-super {p0}, Lcn/kuaipan/android/kss/UploadRequestResult;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "superString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "requestId"

    iget-object v5, p0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->requestId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "superString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 73
    .restart local v2    # "superString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
