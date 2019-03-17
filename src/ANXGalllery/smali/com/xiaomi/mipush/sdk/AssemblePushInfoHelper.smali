.class public Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;
.super Ljava/lang/Object;
.source "AssemblePushInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;
    }
.end annotation


# static fields
.field private static mHashMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaomi/mipush/sdk/AssemblePush;",
            "Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->mHashMaps:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    new-instance v1, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;

    const-string v2, "com.xiaomi.assemble.control.HmsPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->add(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;)V

    .line 30
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    new-instance v1, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;

    const-string v2, "com.xiaomi.assemble.control.FCMPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->add(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;)V

    .line 32
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    new-instance v1, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;

    const-string v2, "com.xiaomi.assemble.control.COSPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->add(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;)V

    .line 33
    return-void
.end method

.method private static add(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;)V
    .locals 1
    .param p0, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;
    .param p1, "info"    # Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->mHashMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method

.method public static getConfigKeyByType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/xmpush/thrift/ConfigKey;
    .locals 1
    .param p0, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 58
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AggregatePushSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    return-object v0
.end method

.method public static getManageClassInfoByType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;
    .locals 1
    .param p0, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 48
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->mHashMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;

    return-object v0
.end method

.method public static getRetryType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/RetryType;
    .locals 3
    .param p0, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Lcom/xiaomi/mipush/sdk/RetryType;
    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$1;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 73
    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_HUAWEI_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    .line 66
    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_FCM_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    .line 69
    goto :goto_0

    .line 71
    :pswitch_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_COS_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
