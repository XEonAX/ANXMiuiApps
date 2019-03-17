.class public Lcn/kuaipan/android/http/client/KscRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "KscRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 20
    .local v1, "result":Ljava/net/URI;
    const-string v2, "ksc.message_list"

    .line 21
    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 24
    .restart local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    const-string v2, "ksc.message_list"

    invoke-interface {p2, v2, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v1
.end method
