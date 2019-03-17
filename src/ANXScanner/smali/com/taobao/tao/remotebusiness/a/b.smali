.class public final Lcom/taobao/tao/remotebusiness/a/b;
.super Ljava/lang/Object;
.source "HandlerParam.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lmtopsdk/mtop/common/MtopListener;

.field public b:Lmtopsdk/mtop/common/MtopEvent;

.field public c:Lmtopsdk/mtop/domain/BaseOutDo;

.field public d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

.field public e:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/a/b;->a:Lmtopsdk/mtop/common/MtopListener;

    .line 49
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/a/b;->b:Lmtopsdk/mtop/common/MtopEvent;

    .line 50
    iput-object p3, p0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 51
    return-void
.end method
