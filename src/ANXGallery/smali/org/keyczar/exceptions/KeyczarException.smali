.class public Lorg/keyczar/exceptions/KeyczarException;
.super Ljava/lang/Exception;
.source "KeyczarException.java"


# static fields
.field private static final serialVersionUID:J = 0x6d8b1d64137fc693L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
