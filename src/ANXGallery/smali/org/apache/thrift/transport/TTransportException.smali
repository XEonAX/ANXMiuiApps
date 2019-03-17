.class public Lorg/apache/thrift/transport/TTransportException;
.super Lorg/apache/thrift/TException;
.source "TTransportException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/thrift/TException;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/thrift/TException;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 46
    iput p1, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 51
    iput p1, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 60
    iput p1, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->type_:I

    .line 56
    return-void
.end method
