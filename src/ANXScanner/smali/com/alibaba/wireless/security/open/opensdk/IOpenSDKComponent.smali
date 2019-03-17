.class public interface abstract Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# static fields
.field public static final OPEN_BIZ_IID:[B

.field public static final OPEN_BIZ_TID:[B

.field public static final OPEN_BIZ_UID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->OPEN_BIZ_UID:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->OPEN_BIZ_IID:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->OPEN_BIZ_TID:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x3t
    .end array-data
.end method


# virtual methods
.method public abstract analyzeOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method
