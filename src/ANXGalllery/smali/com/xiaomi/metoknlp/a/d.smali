.class public Lcom/xiaomi/metoknlp/a/d;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static V:Landroid/telephony/TelephonyManager;

.field private static W:Landroid/content/Context;


# direct methods
.method public static f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    sput-object p0, Lcom/xiaomi/metoknlp/a/d;->W:Landroid/content/Context;

    .line 16
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/xiaomi/metoknlp/a/d;->V:Landroid/telephony/TelephonyManager;

    .line 17
    return-void
.end method

.method public static getImei()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    :try_start_0
    sget-object v1, Lcom/xiaomi/metoknlp/a/d;->W:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/metoknlp/a/d;->W:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    sget-object v3, Lcom/xiaomi/metoknlp/a/d;->W:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    sget-object v1, Lcom/xiaomi/metoknlp/a/d;->V:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/xiaomi/metoknlp/a/d;->V:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    sget-object v1, Lcom/xiaomi/metoknlp/a/d;->V:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 22
    sget-object v0, Lcom/xiaomi/metoknlp/a/d;->V:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_0
    return-object v0
.end method
