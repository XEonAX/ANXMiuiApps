.class public Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;->a:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    iput-object p2, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;->a:Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/litevm/LiteVMParamType$PARAM_TYPE;->getValue()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/litevm/LiteVMParameterWrapper;->b:Ljava/lang/Object;

    return-object v0
.end method
