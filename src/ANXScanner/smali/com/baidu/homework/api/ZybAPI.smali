.class public Lcom/baidu/homework/api/ZybAPI;
.super Ljava/lang/Object;


# static fields
.field private static APPID:Ljava/lang/String; = null

.field public static final HOST:Ljava/lang/String; = "https://www.zybang.com"

.field private static final NEW_SUFFIX:Ljava/lang/String; = "f_webp"

.field private static final OLD_SUFFIX:Ljava/lang/String; = ".webp"

.field private static final PHOTO_BIG:Ljava/lang/String; = "http://d.hiphotos.baidu.com/zhidao/pic/item/"

.field private static final PHOTO_SMALL:Ljava/lang/String; = "http://d.hiphotos.baidu.com/zhidao/abpic/item/"

.field public static final VC:I = 0x4

.field public static final VCNAME:Ljava/lang/String; = "1.3.0c"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lcom/baidu/homework/model/SearchResult;
    .locals 1

    invoke-static {p0}, Lcom/baidu/homework/api/ZybAPI;->parseSearchResult(Lorg/json/JSONObject;)Lcom/baidu/homework/model/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginUrlByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "zyb_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://img.zuoyebang.cc/%s.jpg@%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "f_webp"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "qa_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://test-image.bceimg.com/%s.jpg@%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "f_webp"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://d.hiphotos.baidu.com/zhidao/pic/item/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getResultBySid(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/homework/network/NetworkCallback;)Lcom/baidu/homework/network/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/homework/network/NetworkCallback",
            "<",
            "Lcom/baidu/homework/model/SearchResult;",
            ">;)",
            "Lcom/baidu/homework/network/Request;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/homework/network/c;

    const-string v2, "https://www.zybang.com/search/sdk/searchresult"

    invoke-direct {v1, v2, v0}, Lcom/baidu/homework/network/c;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v0, Lcom/baidu/homework/api/c;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/baidu/homework/api/c;-><init>(Landroid/content/Context;Lcom/baidu/homework/network/Request;Ljava/lang/String;Lcom/baidu/homework/network/NetworkCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/homework/api/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v1
.end method

.method public static getThumbnailUrlByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "zyb_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://img.zuoyebang.cc/%s.jpg@s_0,w_200,h_200,%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "f_webp"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "qa_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://test-image.bceimg.com/%s.jpg@s_0,w_200,h_200,%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "f_webp"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://d.hiphotos.baidu.com/zhidao/abpic/item/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static parseSearchResult(Lorg/json/JSONObject;)Lcom/baidu/homework/model/SearchResult;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "errNo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "htmls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/homework/network/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/baidu/homework/model/SearchResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/baidu/homework/model/SearchResult;-><init>(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_1
    const v0, 0x1869f

    if-ne v1, v0, :cond_2

    new-instance v0, Lcom/baidu/homework/model/SearchResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/baidu/homework/model/SearchResult;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/baidu/homework/model/SearchResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/baidu/homework/model/SearchResult;-><init>(I)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/baidu/homework/model/SearchResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/baidu/homework/model/SearchResult;-><init>(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static picSearch(Landroid/content/Context;[BLcom/baidu/homework/network/NetworkCallback;)Lcom/baidu/homework/network/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[B",
            "Lcom/baidu/homework/network/NetworkCallback",
            "<",
            "Lcom/baidu/homework/model/SearchResult;",
            ">;)",
            "Lcom/baidu/homework/network/Request;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/homework/network/d;

    const-string v1, "https://www.zybang.com/search/sdk/picsearch"

    const-string v2, "image"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/baidu/homework/network/d;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/HashMap;)V

    new-instance v1, Lcom/baidu/homework/api/a;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/homework/api/a;-><init>(Landroid/content/Context;Lcom/baidu/homework/network/Request;Lcom/baidu/homework/network/NetworkCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/homework/api/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static setUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/baidu/homework/common/a;

    const-string v1, "ewP@5fAz%$RBM5Ye"

    invoke-direct {v0, v1}, Lcom/baidu/homework/common/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/homework/common/a;->a([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/homework/common/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static textSearch(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/homework/network/NetworkCallback;)Lcom/baidu/homework/network/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/homework/network/NetworkCallback",
            "<",
            "Lcom/baidu/homework/model/SearchResult;",
            ">;)",
            "Lcom/baidu/homework/network/Request;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/homework/network/c;

    const-string v2, "https://www.zybang.com/search/sdk/textsearch"

    invoke-direct {v1, v2, v0}, Lcom/baidu/homework/network/c;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v0, Lcom/baidu/homework/api/b;

    invoke-direct {v0, p0, v1, p2}, Lcom/baidu/homework/api/b;-><init>(Landroid/content/Context;Lcom/baidu/homework/network/Request;Lcom/baidu/homework/network/NetworkCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/homework/api/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v1
.end method
