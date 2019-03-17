.class public Lcom/xiaomi/mipush/sdk/COSPushHelper;
.super Ljava/lang/Object;
.source "COSPushHelper.java"


# static fields
.field private static mLastTime:J

.field private static volatile mNeedRegister:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->mNeedRegister:Z

    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->mLastTime:J

    return-void
.end method

.method public static doInNetworkChange(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 64
    .local v0, "now":J
    invoke-static {}, Lcom/xiaomi/mipush/sdk/COSPushHelper;->getNeedRegister()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/xiaomi/mipush/sdk/COSPushHelper;->mLastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-wide v2, Lcom/xiaomi/mipush/sdk/COSPushHelper;->mLastTime:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    .line 65
    :cond_0
    sput-wide v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->mLastTime:J

    .line 66
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/COSPushHelper;->registerCOSAssemblePush(Landroid/content/Context;)V

    .line 68
    :cond_1
    return-void
.end method

.method public static getNeedRegister()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->mNeedRegister:Z

    return v0
.end method

.method public static registerCOSAssemblePush(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v0

    .line 51
    .local v0, "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "ASSEMBLE_PUSH :  register cos when network change!"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->register()V

    .line 55
    :cond_0
    return-void
.end method
