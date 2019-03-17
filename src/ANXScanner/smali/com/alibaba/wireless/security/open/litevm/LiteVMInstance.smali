.class public Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMInstance;->a:Ljava/lang/Object;

    return-object v0
.end method
