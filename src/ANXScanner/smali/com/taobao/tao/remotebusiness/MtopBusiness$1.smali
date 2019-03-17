.class Lcom/taobao/tao/remotebusiness/MtopBusiness$1;
.super Ljava/lang/Object;
.source "MtopBusiness.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/remotebusiness/MtopBusiness;


# direct methods
.method constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness$1;->this$0:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method
