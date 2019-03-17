.class public Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;
.super Ljava/lang/Object;
.source "IgnoreCertificationTrustManger.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private certificates:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 15
    iput-object p1, p0, Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;->certificates:[Ljava/security/cert/X509Certificate;

    .line 18
    :cond_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "ax509certificate"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 23
    iput-object p1, p0, Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;->certificates:[Ljava/security/cert/X509Certificate;

    .line 25
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
