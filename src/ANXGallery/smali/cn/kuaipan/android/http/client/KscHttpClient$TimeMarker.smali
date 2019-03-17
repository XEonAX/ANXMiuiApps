.class Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;
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
    name = "TimeMarker"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/kuaipan/android/http/client/KscHttpClient;


# direct methods
.method private constructor <init>(Lcn/kuaipan/android/http/client/KscHttpClient;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;->this$0:Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/kuaipan/android/http/client/KscHttpClient;
    .param p2, "x1"    # Lcn/kuaipan/android/http/client/KscHttpClient$1;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;)V

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
    .line 362
    const-string v1, "ksc.connect_start"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    const-string v1, "ksc.message_list"

    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 368
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 370
    .restart local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    const-string v1, "ksc.message_list"

    invoke-interface {p2, v1, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method
