.class public Lcn/kuaipan/android/exception/ServerMsgException;
.super Lcn/kuaipan/android/exception/KscException;
.source "ServerMsgException.java"


# static fields
.field private static final serialVersionUID:J = -0x973d5eb4de08ba7L


# instance fields
.field private final origMessage:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "details"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcn/kuaipan/android/exception/ServerMsgMap;->getErrorCode(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    .line 19
    iput p1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->statusCode:I

    .line 20
    iput-object p2, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Lcn/kuaipan/android/exception/KscException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcn/kuaipan/android/exception/KscException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimpleMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(ErrCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuaipan/android/exception/ServerMsgException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuaipan/android/exception/ServerMsgException;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuaipan/android/exception/ServerMsgException;->origMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    :cond_0
    iget-object v2, p0, Lcn/kuaipan/android/exception/ServerMsgException;->detailMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/kuaipan/android/exception/ServerMsgException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuaipan/android/exception/ServerMsgException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_1
    return-object v1
.end method
