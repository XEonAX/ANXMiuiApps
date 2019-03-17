.class public Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CloudConfigNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSSLSocketFactory"
.end annotation


# instance fields
.field private mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 351
    return-void
.end method

.method private enableTlsIfAvailable(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 416
    instance-of v2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 417
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 418
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "supportedProtocols":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 423
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "supportedProtocols":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getDefault(I)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;
    .locals 2
    .param p0, "handshakeTimeoutMillis"    # I

    .prologue
    .line 354
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;-><init>()V

    .line 355
    .local v0, "factory":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 357
    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 365
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 366
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 372
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 373
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localhost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 379
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 380
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 386
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 387
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localhost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 393
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 394
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socketParam"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 411
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 412
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
