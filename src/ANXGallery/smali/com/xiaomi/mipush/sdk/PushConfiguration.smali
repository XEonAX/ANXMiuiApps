.class public Lcom/xiaomi/mipush/sdk/PushConfiguration;
.super Ljava/lang/Object;
.source "PushConfiguration.java"


# instance fields
.field private mGeoEnable:Z

.field private mOpenCOSPush:Z

.field private mOpenFCMPush:Z

.field private mOpenHmsPush:Z

.field private mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/xiaomi/push/service/module/PushChannelRegion;->China:Lcom/xiaomi/push/service/module/PushChannelRegion;

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;

    .line 19
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mGeoEnable:Z

    .line 20
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mOpenHmsPush:Z

    .line 21
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mOpenFCMPush:Z

    .line 22
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mOpenCOSPush:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getGeoEnable()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mGeoEnable:Z

    return v0
.end method

.method public getOpenCOSPush()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mOpenCOSPush:Z

    return v0
.end method

.method public getOpenFCMPush()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mOpenFCMPush:Z

    return v0
.end method

.method public getOpenHmsPush()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mOpenHmsPush:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PushConfiguration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Region:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;

    if-nez v1, :cond_0

    .line 78
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushConfiguration;->mRegion:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
