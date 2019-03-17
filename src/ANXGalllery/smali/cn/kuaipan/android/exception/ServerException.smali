.class public Lcn/kuaipan/android/exception/ServerException;
.super Lcn/kuaipan/android/exception/KscException;
.source "ServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x58731af61b7dd7faL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 11
    const v0, 0x7acd8

    invoke-static {p1}, Lcn/kuaipan/android/exception/ServerException;->validCode(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    .line 12
    iput p1, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    .line 13
    return-void
.end method

.method private static validCode(I)I
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    .line 20
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    .line 23
    .end local p0    # "statusCode":I
    :goto_0
    return p0

    .restart local p0    # "statusCode":I
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSimpleMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(ErrCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuaipan/android/exception/ServerException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcn/kuaipan/android/exception/ServerException;->detailMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/kuaipan/android/exception/ServerException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuaipan/android/exception/ServerException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_0
    return-object v1
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcn/kuaipan/android/exception/ServerException;->statusCode:I

    return v0
.end method
