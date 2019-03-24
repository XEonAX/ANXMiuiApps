.class public Lmiui/upnp/typedef/exception/UpnpException;
.super Ljava/lang/Exception;
.source "UpnpException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    .line 12
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/error/UpnpError;)V
    .locals 1
    .param p1, "error"    # Lmiui/upnp/typedef/error/UpnpError;

    .line 20
    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getCode()I

    move-result v0

    iput v0, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lmiui/upnp/typedef/error/UpnpError;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getCode()I

    move-result v0

    iput v0, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    .line 17
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 25
    iget v0, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    return v0
.end method

.method public toUpnpError()Lmiui/upnp/typedef/error/UpnpError;
    .locals 3

    .line 29
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    iget v1, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    invoke-virtual {p0}, Lmiui/upnp/typedef/exception/UpnpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
