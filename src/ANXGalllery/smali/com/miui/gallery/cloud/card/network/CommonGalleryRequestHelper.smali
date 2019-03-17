.class public Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;
.super Ljava/lang/Object;
.source "CommonGalleryRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

.field private mDataType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/card/network/RequestArguments;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/card/network/RequestArguments",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<TE;>;"
    .local p1, "requestArguments":Lcom/miui/gallery/cloud/card/network/RequestArguments;, "Lcom/miui/gallery/cloud/card/network/RequestArguments<TE;>;"
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v3, Lcom/miui/gallery/cloud/card/exception/RequestArgumentsNullException;

    invoke-direct {v3}, Lcom/miui/gallery/cloud/card/exception/RequestArgumentsNullException;-><init>()V

    throw v3

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 28
    .local v2, "type":[Ljava/lang/reflect/Type;
    array-length v3, v2

    if-lez v3, :cond_2

    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 29
    aget-object v1, v2, v4

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 30
    .local v1, "pType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v0, v3, v4

    .line 31
    .local v0, "claz":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 32
    iput-object v0, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mDataType:Ljava/lang/reflect/Type;

    .line 39
    new-instance v3, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/card/network/RequestArguments;->getMethod()I

    move-result v4

    invoke-interface {p1}, Lcom/miui/gallery/cloud/card/network/RequestArguments;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mDataType:Ljava/lang/reflect/Type;

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;-><init>(ILjava/lang/String;Ljava/lang/reflect/Type;)V

    iput-object v3, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    .line 40
    return-void

    .line 34
    :cond_1
    new-instance v3, Lcom/miui/gallery/cloud/card/exception/TypeNotFoundException;

    invoke-direct {v3}, Lcom/miui/gallery/cloud/card/exception/TypeNotFoundException;-><init>()V

    throw v3

    .line 37
    .end local v0    # "claz":Ljava/lang/reflect/Type;
    .end local v1    # "pType":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    new-instance v3, Lcom/miui/gallery/cloud/card/exception/TypeNotFoundException;

    invoke-direct {v3}, Lcom/miui/gallery/cloud/card/exception/TypeNotFoundException;-><init>()V

    throw v3
.end method


# virtual methods
.method public final addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    .local p0, "this":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 86
    return-object p0
.end method

.method public final execute(Lcom/miui/gallery/cloud/card/network/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/card/network/ResponseCallback",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<TE;>;"
    .local p1, "responseCallback":Lcom/miui/gallery/cloud/card/network/ResponseCallback;, "Lcom/miui/gallery/cloud/card/network/ResponseCallback<TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    new-instance v1, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper$1;-><init>(Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;Lcom/miui/gallery/cloud/card/network/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->setOnResponseListener(Lcom/miui/gallery/net/base/ResponseListener;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->execute()V

    .line 66
    return-void
.end method

.method public final executeSync()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/net/base/RequestError;,
            Lcom/miui/gallery/cloud/card/exception/NoResultException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<TE;>;"
    iget-object v1, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "result":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Lcom/miui/gallery/cloud/card/exception/NoResultException;

    invoke-direct {v1}, Lcom/miui/gallery/cloud/card/exception/NoResultException;-><init>()V

    throw v1
.end method

.method public final setUseCache(Z)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;
    .locals 1
    .param p1, "useCache"    # Z

    .prologue
    .line 95
    .local p0, "this":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->mBaseGalleryRequest:Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 96
    return-object p0
.end method
