.class public Lorg/keyczar/exceptions/InvalidSignatureException;
.super Lorg/keyczar/exceptions/KeyczarException;
.source "InvalidSignatureException.java"


# static fields
.field private static final serialVersionUID:J = -0x7fcd1852c1da44c9L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "InvalidSignatureException"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
