.class public Lcom/xiaomi/scanner/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/HttpUtils$HttpReqType;,
        Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;,
        Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    }
.end annotation


# static fields
.field private static final HTTP_OK:I = 0xc8

.field private static final PRODUCT_SERVER:Z = true

.field private static final REQ_TYPE_JSON:I = 0x1

.field private static final REQ_TYPE_STREAM:I = 0x0

.field public static final SERVER_DATA_OK:I = 0x1

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TOKEN:Ljava/lang/String; = "R4LsLwmAboEhZMftgrfQSafuSn4"

.field private static gson:Lcom/google/gson/Gson;

.field private static okHttpClient:Lokhttp3/OkHttpClient;

.field private static sequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/scanner/util/HttpUtils;->sequence:I

    .line 62
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "HttpUtils"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 67
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/util/HttpUtils;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/xiaomi/scanner/util/HttpUtils;->onResponseToMain(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private static varargs asyncGetFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "req"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 307
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-static {p0, p2}, Lcom/xiaomi/scanner/util/HttpUtils;->getRealUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 308
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/scanner/util/HttpUtils$2;

    invoke-direct {v4, p1}, Lcom/xiaomi/scanner/util/HttpUtils$2;-><init>(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v2    # "request":Lokhttp3/Request;
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asyncGet error e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Lcom/xiaomi/scanner/util/HttpUtils;->onResponseToMain(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    goto :goto_0
.end method

.method private static varargs asyncPostFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[BI[Ljava/lang/Object;)V
    .locals 6
    .param p0, "req"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "type"    # I
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<TT;>;[BI[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 200
    .local v0, "client":Lokhttp3/OkHttpClient;
    invoke-static {p0, p2, p3, p4}, Lcom/xiaomi/scanner/util/HttpUtils;->genRequest(Ljava/lang/String;[BI[Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v2

    .line 201
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/scanner/util/HttpUtils$1;

    invoke-direct {v4, p1}, Lcom/xiaomi/scanner/util/HttpUtils$1;-><init>(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v2    # "request":Lokhttp3/Request;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPostFromServer e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Lcom/xiaomi/scanner/util/HttpUtils;->onResponseToMain(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    goto :goto_0
.end method

.method private static varargs asyncPostFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[B[Ljava/lang/Object;)V
    .locals 1
    .param p0, "req"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<TT;>;[B[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/scanner/util/HttpUtils;->asyncPostFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[BI[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method private static varargs asyncPostJsonFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "req"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/xiaomi/scanner/util/HttpUtils;->asyncPostFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[BI[Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public static asyncRealTimeTranslate(Landroid/graphics/Bitmap;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "srcCode"    # Ljava/lang/String;
    .param p3, "desCode"    # Ljava/lang/String;
    .param p4, "useLocalRotate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<Lcom/xiaomi/scanner/translation/bean/TranslateResult;>;"
    const-string v0, "/api/v1/scanner/visiontranslation"

    const/16 v1, 0x4b0

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->scaleAndToByteFromBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "language"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string v4, "to"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    const-string v4, "disableOrientationDetection"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 108
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 107
    invoke-static {v0, p1, v1, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->asyncPostFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[B[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static asyncTranslateText(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateTextInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<Lcom/xiaomi/scanner/translation/bean/TranslateTextInfo;>;"
    const-string v0, "/api/v1/scanner/translation/text"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string v3, "to"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p0, v1, v2

    invoke-static {v0, p1, v1}, Lcom/xiaomi/scanner/util/HttpUtils;->asyncPostJsonFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method private static genJsonContent([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "params"    # [Ljava/lang/Object;

    .prologue
    .line 248
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 250
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "requestId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v3, "sequenceId"

    sget v4, Lcom/xiaomi/scanner/util/HttpUtils;->sequence:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/xiaomi/scanner/util/HttpUtils;->sequence:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 253
    aget-object v3, p0, v1

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genJsonContent error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static varargs genRequest(Ljava/lang/String;[BI[Ljava/lang/Object;)Lokhttp3/Request;
    .locals 5
    .param p0, "req"    # Ljava/lang/String;
    .param p1, "body"    # [B
    .param p2, "type"    # I
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 228
    if-nez p2, :cond_1

    .line 229
    invoke-static {p0, p3}, Lcom/xiaomi/scanner/util/HttpUtils;->getRealUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 231
    const-string v3, "application/octet-stream"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    .line 232
    .local v1, "requestBody":Lokhttp3/RequestBody;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 244
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .local v0, "request":Lokhttp3/Request;
    :goto_0
    return-object v0

    .line 234
    .end local v0    # "request":Lokhttp3/Request;
    :cond_0
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .restart local v0    # "request":Lokhttp3/Request;
    goto :goto_0

    .line 236
    .end local v0    # "request":Lokhttp3/Request;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    if-ne p2, v4, :cond_2

    .line 237
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v3}, Lcom/xiaomi/scanner/util/HttpUtils;->getRealUrl(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2    # "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {p3}, Lcom/xiaomi/scanner/util/HttpUtils;->genJsonContent([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 239
    .restart local v1    # "requestBody":Lokhttp3/RequestBody;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 240
    .restart local v0    # "request":Lokhttp3/Request;
    goto :goto_0

    .line 241
    .end local v0    # "request":Lokhttp3/Request;
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p3}, Lcom/xiaomi/scanner/util/HttpUtils;->getRealUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .restart local v0    # "request":Lokhttp3/Request;
    goto :goto_0
.end method

.method private static getClientKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 157
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "app.pfx"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 158
    .local v0, "is":Ljava/io/InputStream;
    const-string v3, "1234"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 159
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 160
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 161
    .local v2, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const-string v3, "1234"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 162
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    return-object v3
.end method

.method private static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xa

    .line 119
    sget-object v2, Lcom/xiaomi/scanner/util/HttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    if-nez v2, :cond_0

    .line 120
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->getSystemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 121
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 122
    .local v0, "sc":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->getClientKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 123
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v3, Lokhttp3/ConnectionPool;

    const/4 v4, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v4, v6, v7, v5}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 124
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    invoke-virtual {v2, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/scanner/util/HttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 129
    :cond_0
    sget-object v2, Lcom/xiaomi/scanner/util/HttpUtils;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v2
.end method

.method private static varargs getRealUrl(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "type"    # I
    .param p1, "req"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/xiaomi/scanner/util/HttpUtils;->getServerUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    .local v2, "reqUrl":Ljava/lang/StringBuilder;
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "R4LsLwmAboEhZMftgrfQSafuSn4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-nez p0, :cond_0

    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "reqId":Ljava/lang/String;
    const-string v3, "requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "sequence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/xiaomi/scanner/util/HttpUtils;->sequence:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/xiaomi/scanner/util/HttpUtils;->sequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v3, "apkVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2968

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http req id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", req = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    .end local v1    # "reqId":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-eqz v3, :cond_1

    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 181
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    :goto_0
    return-object v3

    .line 183
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 184
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static varargs getRealUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "req"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/xiaomi/scanner/util/HttpUtils;->getRealUrl(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServerUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "req"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "https://miscanner.api.xiaomi.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    return-object v0
.end method

.method private static getSystemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 146
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 147
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 148
    .local v1, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-nez v2, :cond_1

    .line 149
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected default trust managers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_1
    aget-object v2, v1, v4

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2
.end method

.method private static onResponseToMain(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V
    .locals 6
    .param p0, "code"    # I
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    if-nez p2, :cond_0

    .line 331
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "on Response to main error callback null"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v2, 0x0

    .line 335
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 337
    :try_start_0
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->gson:Lcom/google/gson/Gson;

    iget-object v4, p2, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->tType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    .line 343
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .local v1, "finalT":Ljava/lang/Object;, "TT;"
    .local v1, "t":Ljava/lang/Object;, "TT;"
    :goto_1
    new-instance v3, Lcom/xiaomi/scanner/util/HttpUtils$3;

    invoke-direct {v3, v1, p2, p0}, Lcom/xiaomi/scanner/util/HttpUtils$3;-><init>(Ljava/lang/Object;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;I)V

    invoke-static {v3}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 338
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponseToMain error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v2

    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .local v1, "t":Ljava/lang/Object;, "TT;"
    goto :goto_1
.end method

.method public static queryScanRuleConfig(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<",
            "Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;>;"
    const-string v0, "/api/v1/scanner/configuration"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "scan_payment_rule"

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/xiaomi/scanner/util/HttpUtils;->asyncGetFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static syncBusinessFromServer(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-string v3, "/api/v1/scanner/businesscard"

    invoke-static {p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getServerByteFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/xiaomi/scanner/util/HttpUtils;->syncPostFromServer(Ljava/lang/String;[B[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;

    move-result-object v1

    .line 73
    .local v1, "response":Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    :try_start_0
    iget v3, v1, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->responseCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->data:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 74
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->gson:Lcom/google/gson/Gson;

    iget-object v4, v1, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->data:Ljava/lang/String;

    const-class v5, Lcom/xiaomi/scanner/bean/BusinessCardResult;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/BusinessCardResult;

    .line 75
    .local v2, "result":Lcom/xiaomi/scanner/bean/BusinessCardResult;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/xiaomi/scanner/bean/BusinessCardResult;->resultCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/xiaomi/scanner/bean/BusinessCardResult;->businessCardResult:Lcom/xiaomi/scanner/bean/BusinessCardResult$BusinessResultInfo;

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, v2, Lcom/xiaomi/scanner/bean/BusinessCardResult;->businessCardResult:Lcom/xiaomi/scanner/bean/BusinessCardResult$BusinessResultInfo;

    iget-object v3, v3, Lcom/xiaomi/scanner/bean/BusinessCardResult$BusinessResultInfo;->businessCardItems:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "result":Lcom/xiaomi/scanner/bean/BusinessCardResult;
    :goto_0
    return-object v3

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync business throw error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static varargs syncGetFromServer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    .locals 8
    .param p0, "req"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 288
    new-instance v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;

    invoke-direct {v2}, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;-><init>()V

    .line 290
    .local v2, "httpResponse":Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 291
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/util/HttpUtils;->getRealUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 292
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 293
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    iput v5, v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->responseCode:I

    .line 294
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->data:Ljava/lang/String;

    .line 297
    :cond_0
    sget-object v5, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncPostFromServer response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->responseCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    :goto_0
    return-object v2

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncGet e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static syncIdentifyPlantFromServer(Landroid/graphics/Bitmap;)Lcom/xiaomi/scanner/bean/PlantResult;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    sget-object v4, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "syncIdentifyPlantFromServer req"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    const-string v4, "/api/v1/scanner/plant"

    invoke-static {p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getServerByteFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/xiaomi/scanner/util/HttpUtils;->syncPostFromServer(Ljava/lang/String;[B[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;

    move-result-object v3

    .line 88
    .local v3, "response":Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    const/4 v2, 0x0

    .line 90
    .local v2, "plantResult":Lcom/xiaomi/scanner/bean/PlantResult;
    :try_start_0
    iget v4, v3, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->responseCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->data:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 91
    sget-object v4, Lcom/xiaomi/scanner/util/HttpUtils;->gson:Lcom/google/gson/Gson;

    iget-object v5, v3, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->data:Ljava/lang/String;

    const-class v6, Lcom/xiaomi/scanner/bean/PlantResult;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/xiaomi/scanner/bean/PlantResult;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 97
    new-instance v2, Lcom/xiaomi/scanner/bean/PlantResult;

    .end local v2    # "plantResult":Lcom/xiaomi/scanner/bean/PlantResult;
    invoke-direct {v2}, Lcom/xiaomi/scanner/bean/PlantResult;-><init>()V

    .line 99
    .restart local v2    # "plantResult":Lcom/xiaomi/scanner/bean/PlantResult;
    :cond_1
    return-object v2

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncIdentifyPlantFromServer error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs syncPostFromServer(Ljava/lang/String;I[B[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    .locals 8
    .param p0, "req"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "body"    # [B
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 270
    new-instance v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;

    invoke-direct {v2}, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;-><init>()V

    .line 272
    .local v2, "httpResponse":Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 273
    .local v0, "client":Lokhttp3/OkHttpClient;
    invoke-static {p0, p2, p1, p3}, Lcom/xiaomi/scanner/util/HttpUtils;->genRequest(Ljava/lang/String;[BI[Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v3

    .line 274
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 275
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    iput v5, v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->responseCode:I

    .line 276
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->data:Ljava/lang/String;

    .line 279
    :cond_0
    sget-object v5, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncPostFromServer response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;->responseCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    :goto_0
    return-object v2

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/xiaomi/scanner/util/HttpUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncPostFromServer e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs syncPostFromServer(Ljava/lang/String;[B[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    .locals 1
    .param p0, "req"    # Ljava/lang/String;
    .param p1, "body"    # [B
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/scanner/util/HttpUtils;->syncPostFromServer(Ljava/lang/String;I[B[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static varargs syncPostJsonFromServer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;
    .locals 2
    .param p0, "req"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 266
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/xiaomi/scanner/util/HttpUtils;->syncPostFromServer(Ljava/lang/String;I[B[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/HttpUtils$HttpResponse;

    move-result-object v0

    return-object v0
.end method
