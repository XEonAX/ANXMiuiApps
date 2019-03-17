.class Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wireless/security/open/SecurityGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;


# direct methods
.method constructor <init>(Lcom/alibaba/wireless/security/open/SecurityGuardManager;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/datacollection/IDataCollectionComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/simulatordetect/ISimulatorDetectComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/pkgvaliditycheck/IPkgValidityCheckComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/atlasencrypt/IAtlasEncryptComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/maldetection/IMalDetect;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
