.class public Lcom/xiaomi/channel/commonutils/network/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field public headers:Ljava/util/Map;
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

.field public responseCode:I

.field public responseString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    const-string v0, "resCode = %1$d, headers = %2$s, response = %3$s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->headers:Ljava/util/Map;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseString:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
