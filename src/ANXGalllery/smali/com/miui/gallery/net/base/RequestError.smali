.class public Lcom/miui/gallery/net/base/RequestError;
.super Lcom/android/volley/VolleyError;
.source "RequestError.java"


# instance fields
.field private mErrorCode:Lcom/miui/gallery/net/base/ErrorCode;

.field private mResponseData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/net/base/RequestError;->mErrorCode:Lcom/miui/gallery/net/base/ErrorCode;

    .line 13
    iput-object p3, p0, Lcom/miui/gallery/net/base/RequestError;->mResponseData:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/net/base/RequestError;->mResponseData:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/net/base/RequestError;->mResponseData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorCode()Lcom/miui/gallery/net/base/ErrorCode;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/net/base/RequestError;->mErrorCode:Lcom/miui/gallery/net/base/ErrorCode;

    return-object v0
.end method

.method public getResponseData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/net/base/RequestError;->mResponseData:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/net/base/RequestError;->mErrorCode:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
