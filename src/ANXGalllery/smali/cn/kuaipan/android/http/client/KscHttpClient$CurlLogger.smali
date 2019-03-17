.class Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "KscHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/client/KscHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/kuaipan/android/http/client/KscHttpClient;


# direct methods
.method private constructor <init>(Lcn/kuaipan/android/http/client/KscHttpClient;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;->this$0:Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/kuaipan/android/http/client/KscHttpClient;
    .param p2, "x1"    # Lcn/kuaipan/android/http/client/KscHttpClient$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;->this$0:Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-static {v1}, Lcn/kuaipan/android/http/client/KscHttpClient;->access$300(Lcn/kuaipan/android/http/client/KscHttpClient;)Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 345
    .local v0, "configuration":Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 346
    const-string v2, "CurlLogger"

    move-object v1, p1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v1, v3}, Lcn/kuaipan/android/http/client/KscHttpClient;->access$400(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->access$500(Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1

    .line 353
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-static {p1, v3}, Lcn/kuaipan/android/http/client/KscHttpClient;->access$400(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->access$600(Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 355
    :cond_1
    return-void
.end method
