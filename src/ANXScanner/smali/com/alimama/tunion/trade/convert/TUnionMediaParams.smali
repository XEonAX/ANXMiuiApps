.class public Lcom/alimama/tunion/trade/convert/TUnionMediaParams;
.super Ljava/lang/Object;
.source "TUnionMediaParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdzoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getSubpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUnid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAdzoneId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->d:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public setSubpid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUnid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->c:Ljava/lang/String;

    .line 60
    return-void
.end method
