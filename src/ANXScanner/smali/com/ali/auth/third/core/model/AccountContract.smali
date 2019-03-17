.class public Lcom/ali/auth/third/core/model/AccountContract;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ali/auth/third/core/model/AccountContract;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/auth/third/core/model/AccountContract;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/auth/third/core/model/AccountContract;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/ali/auth/third/core/model/AccountContract;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/model/AccountContract;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHash_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/model/AccountContract;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/model/AccountContract;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/model/AccountContract;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/model/AccountContract;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/model/AccountContract;->c:Ljava/lang/String;

    return-void
.end method

.method public setHash_key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/model/AccountContract;->e:Ljava/lang/String;

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/model/AccountContract;->b:Ljava/lang/String;

    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/model/AccountContract;->d:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/model/AccountContract;->a:Ljava/lang/String;

    return-void
.end method
