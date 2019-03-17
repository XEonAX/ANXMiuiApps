.class public Lcom/xiaomi/mipush/sdk/AssemblePushUtils;
.super Ljava/lang/Object;
.source "AssemblePushUtils.java"


# static fields
.field private static isGoogleServiceSatisfied:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied:I

    return-void
.end method

.method public static getPhoneBrand(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PhoneBrand;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 39
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.huawei.hwid"

    const-string v5, "com.huawei.hms.core.service.HMSCoreService"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v1, "hmsComponentName":Landroid/content/ComponentName;
    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 41
    .local v2, "hmsInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isAvailableEMUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    sget-object v4, Lcom/xiaomi/mipush/sdk/PhoneBrand;->HUAWEI:Lcom/xiaomi/mipush/sdk/PhoneBrand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "hmsComponentName":Landroid/content/ComponentName;
    .end local v2    # "hmsInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/mipush/sdk/PhoneBrand;->OTHER:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hmsComponentName":Landroid/content/ComponentName;
    .restart local v2    # "hmsInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    sget-object v4, Lcom/xiaomi/mipush/sdk/PhoneBrand;->OTHER:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    goto :goto_0
.end method

.method private static isAvailableEMUI()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    const-string v6, "get"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.build.hw_emui_api_level"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    .local v1, "emuiAPILevel":I
    const/16 v5, 0x9

    if-lt v1, v5, :cond_0

    .line 64
    .end local v1    # "emuiAPILevel":I
    :goto_0
    return v3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 64
    goto :goto_0
.end method

.method public static isColorOSPushSupport(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "result":Z
    const-string v2, "com.xiaomi.assemble.control.COSPushManager"

    const-string v3, "isSupportPush"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "resultO":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 103
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 104
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color os push  is avaliable ? :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 108
    return v0
.end method

.method public static isGoogleServiceSatisfied(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 74
    const-string v5, "com.google.android.gms.common.GoogleApiAvailability"

    const-string v8, "getInstance"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "objectInstance":Ljava/lang/Object;
    const-string v5, "isGooglePlayServicesAvailable"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p0, v8, v7

    invoke-static {v0, v5, v8}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "resultObject":Ljava/lang/Object;
    const-string v5, "com.google.android.gms.common.ConnectionResult"

    const-string v8, "SUCCESS"

    invoke-static {v5, v8}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "successCode":Ljava/lang/Object;
    const/4 v2, -0x1

    .line 79
    .local v2, "success":I
    if-eqz v3, :cond_1

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 80
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    if-eqz v1, :cond_0

    .line 87
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 88
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 89
    .local v4, "tempResult":I
    if-ne v4, v2, :cond_2

    move v5, v6

    :goto_0
    sput v5, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied:I

    .line 95
    .end local v4    # "tempResult":I
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is google service can be used"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v5, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied:I

    if-lez v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 96
    sget v5, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied:I

    if-lez v5, :cond_5

    :goto_3
    return v6

    .line 82
    :cond_1
    const-string v5, "google service is not avaliable"

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 83
    sput v7, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied:I

    move v6, v7

    .line 84
    goto :goto_3

    .restart local v4    # "tempResult":I
    :cond_2
    move v5, v7

    .line 89
    goto :goto_0

    .line 91
    .end local v4    # "tempResult":I
    :cond_3
    sput v7, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied:I

    .line 92
    const-string v5, "google service is not avaliable"

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v5, v7

    .line 95
    goto :goto_2

    :cond_5
    move v6, v7

    .line 96
    goto :goto_3
.end method
