.class public Lcom/alimama/tunion/trade/convert/TUnionConvertResult;
.super Ljava/lang/Object;
.source "TUnionConvertResult.java"


# instance fields
.field private a:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->a:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    .line 19
    iput-object p2, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getJumpType()Lcom/alimama/tunion/trade/convert/TUnionJumpType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->a:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    return-object v0
.end method

.method public getResultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setJumpType(Lcom/alimama/tunion/trade/convert/TUnionJumpType;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->a:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    .line 28
    return-void
.end method

.method public setResultUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;->b:Ljava/lang/String;

    .line 36
    return-void
.end method
