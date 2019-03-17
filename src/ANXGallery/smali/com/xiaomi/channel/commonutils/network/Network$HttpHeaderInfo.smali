.class public Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/network/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpHeaderInfo"
.end annotation


# instance fields
.field public AllHeaders:Ljava/util/Map;
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

.field public ResponseCode:I


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 506
    const-string v0, "resCode = %1$d, headers = %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->ResponseCode:I

    .line 507
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 506
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
