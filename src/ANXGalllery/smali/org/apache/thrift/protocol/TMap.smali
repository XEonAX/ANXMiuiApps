.class public final Lorg/apache/thrift/protocol/TMap;
.super Ljava/lang/Object;
.source "TMap.java"


# instance fields
.field public final keyType:B

.field public final size:I

.field public final valueType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 0
    .param p1, "k"    # B
    .param p2, "v"    # B
    .param p3, "s"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lorg/apache/thrift/protocol/TMap;->keyType:B

    .line 33
    iput-byte p2, p0, Lorg/apache/thrift/protocol/TMap;->valueType:B

    .line 34
    iput p3, p0, Lorg/apache/thrift/protocol/TMap;->size:I

    .line 35
    return-void
.end method
