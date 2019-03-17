.class public Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
.super Ljava/lang/Object;
.source "UTBaseRequestAuthentication.java"

# interfaces
.implements Lcom/ut/mini/core/sign/IUTRequestAuthentication;


# instance fields
.field private E:Z

.field private X:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->g:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->E:Z

    .line 36
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->g:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;
    .param p3, "isEncode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->g:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->E:Z

    .line 47
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->g:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    .line 49
    iput-boolean p3, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->E:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 57
    :cond_0
    const-string v1, "UTBaseRequestAuthentication"

    const-string v2, "There is no appkey,please check it!"

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :cond_1
    :goto_0
    return-object v0

    .line 61
    :cond_2
    if-eqz p1, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/j;->a([B)[B

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/alibaba/mtl/log/d/j;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEncode()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->E:Z

    return v0
.end method
