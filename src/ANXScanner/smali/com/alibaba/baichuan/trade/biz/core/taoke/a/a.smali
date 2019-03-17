.class public Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alimama/tunion/trade/base/ITUnionCommon;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdzoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
