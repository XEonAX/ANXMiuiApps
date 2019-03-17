.class public interface abstract Lorg/apache/thrift/TBase;
.super Ljava/lang/Object;
.source "TBase.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/thrift/TBase;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract read(Lorg/apache/thrift/protocol/TProtocol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation
.end method

.method public abstract write(Lorg/apache/thrift/protocol/TProtocol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation
.end method
