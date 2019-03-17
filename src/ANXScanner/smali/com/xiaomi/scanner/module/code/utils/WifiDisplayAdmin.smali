.class public Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
.super Ljava/lang/Object;
.source "WifiDisplayAdmin.java"


# static fields
.field public static final ACTION_MIRACAST_SETTINGS:Ljava/lang/String; = "com.nvidia.settings.MIRACAST_SETTINGS"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WifiDisplayAdmin"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 23
    return-void
.end method

.method public static isWifiDisplayOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 100
    :try_start_0
    const-class v3, Landroid/provider/Settings$Global;

    const-string v4, "WIFI_DISPLAY_ON"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/util/ReflectUtil;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "display":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/xiaomi/scanner/util/AppUtil;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 105
    :cond_1
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "isWifiDisplayOn error"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndConnectDisplay(Ljava/lang/String;)Z
    .locals 9
    .param p1, "p2pMac"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 60
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v5, :cond_0

    .line 61
    sget-object v5, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "null manager"

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v5, v6

    .line 77
    :goto_0
    return v5

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v7, "getWifiDisplayStatus"

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 65
    .local v3, "object":Ljava/lang/Object;
    const-string v5, "getDisplays"

    invoke-static {v3, v5}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    move-object v0, v5

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    move-object v4, v0

    .line 66
    .local v4, "wifiDisplays":[Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_2

    .line 67
    array-length v7, v4

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v4, v5

    .line 68
    .local v1, "diaplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    const/4 v5, 0x1

    goto :goto_0

    .line 67
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "diaplay":Landroid/hardware/display/WifiDisplay;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "wifiDisplays":[Landroid/hardware/display/WifiDisplay;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "check Display error"

    invoke-static {v5, v7, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no display fit this p2pMac="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v5, v6

    .line 77
    goto :goto_0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)Z
    .locals 8
    .param p1, "p2pMac"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v3, :cond_0

    .line 88
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "null manager"

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    :goto_0
    return v2

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v4, "connectWifiDisplay"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "connectWifiDisplay error"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startWifiDisplayScan()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    .line 31
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null manager"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v2, "startWifiDisplayScan"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopWifiDisplayScan()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    .line 47
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null manager"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v2, "stopWifiDisplayScan"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
