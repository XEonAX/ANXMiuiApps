.class public Lcom/miui/internal/vip/utils/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field public static final MIUI_VERSION:Ljava/lang/String;

.field public static final PRODUCT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static volatile sDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "ro.product.device"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->PRODUCT:Ljava/lang/String;

    .line 13
    const-string v0, "ro.build.version.incremental"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->MIUI_VERSION:Ljava/lang/String;

    .line 15
    const-string v0, "DeviceHelper"

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .line 22
    sget-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->isInMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "DeviceUtils.getDeviceId shouldn\'t be invoked in main thread"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    :try_start_0
    const-class v0, Lcom/miui/internal/vip/utils/DeviceHelper;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    sget-object v2, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "rawId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "MD5"

    invoke-static {v3, v4}, Lmiui/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object v3

    .line 32
    .local v3, "digest":[B
    invoke-static {v3}, Lcom/miui/internal/vip/utils/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    .line 35
    .end local v2    # "rawId":Ljava/lang/String;
    .end local v3    # "digest":[B
    :cond_1
    monitor-exit v0

    .line 38
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getDeviceId failed, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    sget-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static isPad()Z
    .locals 1

    .line 44
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method
