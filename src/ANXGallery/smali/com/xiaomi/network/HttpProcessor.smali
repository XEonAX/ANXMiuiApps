.class public abstract Lcom/xiaomi/network/HttpProcessor;
.super Ljava/lang/Object;
.source "HttpProcessor.java"


# instance fields
.field private httpRequest:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "httpRequest"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaomi/network/HttpProcessor;->httpRequest:I

    .line 26
    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/xiaomi/network/HttpProcessor;->httpRequest:I

    return v0
.end method

.method public prepare(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/NameValuePair;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract visit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
