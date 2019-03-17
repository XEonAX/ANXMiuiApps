.class public Lcom/alibaba/baichuan/trade/biz/core/taoke/b/a;
.super Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;-><init>()V

    const-string v0, "mtop.alibaba.baichuan.nbsdk.cpstrace.create"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/a;->API_NAME:Ljava/lang/String;

    return-void
.end method
