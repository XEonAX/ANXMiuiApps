.class abstract Lcom/taobao/tao/remotebusiness/listener/b;
.super Ljava/lang/Object;
.source "MtopBaseListener.java"


# instance fields
.field protected listener:Lmtopsdk/mtop/common/MtopListener;

.field protected mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;


# direct methods
.method protected constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/b;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 13
    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/b;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 22
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/b;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 23
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/b;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 24
    return-void
.end method
