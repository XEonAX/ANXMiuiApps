.class public Lcom/adobe/xmp/XMPException;
.super Ljava/lang/Exception;
.source "XMPException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p2, p0, Lcom/adobe/xmp/XMPException;->errorCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput p2, p0, Lcom/adobe/xmp/XMPException;->errorCode:I

    .line 45
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/adobe/xmp/XMPException;->errorCode:I

    return v0
.end method
