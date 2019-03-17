.class public Lorg/keyczar/exceptions/ShortSignatureException;
.super Lorg/keyczar/exceptions/KeyczarException;
.source "ShortSignatureException.java"


# static fields
.field private static final serialVersionUID:J = 0x4201a0bc4b0fc09eL


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 31
    const-string v0, "SignatureTooShort"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
