.class public Lcn/kuaipan/android/exception/KscException;
.super Ljava/lang/Exception;
.source "KscException.java"

# interfaces
.implements Lcn/kuaipan/android/exception/IKscError;


# static fields
.field private static final serialVersionUID:J = 0x678bb89717b88b4eL


# instance fields
.field protected final detailMessage:Ljava/lang/String;

.field private final errCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcn/kuaipan/android/exception/KscException;->getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iput p1, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    .line 37
    iput-object p2, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 38
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 101
    .end local p0    # "t":Ljava/lang/Throwable;
    .local v0, "result":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 97
    .end local v0    # "result":Ljava/lang/Throwable;
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    move-object v0, p0

    .line 98
    .restart local v0    # "result":Ljava/lang/Throwable;
    instance-of v1, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;

    .end local v0    # "result":Ljava/lang/Throwable;
    check-cast p0, Lorg/apache/http/conn/HttpHostConnectException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-direct {v0, p0}, Lcn/kuaipan/android/exception/HttpHostConnectExceptionWrapper;-><init>(Lorg/apache/http/conn/HttpHostConnectException;)V

    .restart local v0    # "result":Ljava/lang/Throwable;
    :cond_1
    move-object p0, v0

    .line 101
    goto :goto_0
.end method

.method public static newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "detailState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 55
    instance-of v0, p0, Lcn/kuaipan/android/exception/KscException;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lcn/kuaipan/android/exception/KscException;

    .line 88
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 66
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lcn/kuaipan/android/exception/ErrorHelper;->handleInterruptException(Ljava/lang/Throwable;)V

    .line 67
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b12f

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b0c0

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b250

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 73
    :cond_3
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_4

    .line 74
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b12e

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 75
    :cond_4
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_5

    .line 76
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b2b4

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 77
    :cond_5
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_6

    .line 78
    new-instance v0, Lcn/kuaipan/android/exception/NetworkException;

    const v1, 0x7b2b5

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/NetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 79
    :cond_6
    instance-of v0, p0, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_7

    .line 80
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x7a129

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 81
    :cond_7
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    .line 82
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x62639

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 83
    :cond_8
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_9

    .line 84
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x62638

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto/16 :goto_0

    .line 85
    :cond_9
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_a

    .line 86
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 88
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_a
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const v1, 0x62a1f

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    return v0
.end method

.method public getSimpleMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(ErrCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuaipan/android/exception/KscException;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_0
    return-object v1
.end method
