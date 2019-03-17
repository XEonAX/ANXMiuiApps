.class public Lcom/alibaba/mtl/log/sign/BaseRequestAuth;
.super Ljava/lang/Object;
.source "BaseRequestAuth.java"

# interfaces
.implements Lcom/alibaba/mtl/log/sign/IRequestAuth;


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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->g:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->E:Z

    .line 33
    iput-object p1, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->g:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;
    .param p3, "isEncode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->g:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->E:Z

    .line 45
    iput-object p1, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->g:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    .line 47
    iput-boolean p3, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->E:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 56
    :cond_0
    const-string v1, "BaseRequestAuth"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "There is no appkey,please check it!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    :goto_0
    return-object v0

    .line 59
    :cond_2
    if-eqz p1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/j;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/j;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEncode()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/sign/BaseRequestAuth;->E:Z

    return v0
.end method
