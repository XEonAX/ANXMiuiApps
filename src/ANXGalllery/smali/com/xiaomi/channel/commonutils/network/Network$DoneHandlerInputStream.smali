.class public final Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;
.super Ljava/io/FilterInputStream;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/network/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoneHandlerInputStream"
.end annotation


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 892
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 893
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 897
    iget-boolean v2, p0, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;->done:Z

    if-nez v2, :cond_0

    .line 898
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 899
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    .line 904
    .end local v0    # "result":I
    :goto_0
    return v0

    .line 903
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;->done:Z

    move v0, v1

    .line 904
    goto :goto_0
.end method
