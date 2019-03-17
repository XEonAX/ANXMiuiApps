.class public Lcom/xiaomi/push/service/GeoFenceUtils;
.super Ljava/lang/Object;
.source "GeoFenceUtils.java"


# direct methods
.method public static canLocalCheck(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkMetoknlpVersionAbove(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static checkMetoknlpVersionAbove(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v0, "com.xiaomi.metoknlp"

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkPackageVersionAbove(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static checkPackageVersionAbove(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 55
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 56
    .local v2, "version_code":I
    if-lt v2, p2, :cond_0

    .line 57
    const/4 v3, 0x1

    .line 60
    .end local v2    # "version_code":I
    :cond_0
    return v3

    .line 51
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method public static getGeoEnableSwitch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v0, "mipush_extra"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "geo_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isXMSFGeoWork(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v3, "com.xiaomi.xmsf"

    const/16 v4, 0x6a

    invoke-static {p0, v3, v4}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkPackageVersionAbove(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 73
    .local v0, "isXMSFSupportGeo":Z
    const-string v3, "com.xiaomi.metok"

    const/16 v4, 0x14

    invoke-static {p0, v3, v4}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkPackageVersionAbove(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 74
    .local v1, "v8_2xXMSFGeoIsWork":Z
    const-string v3, "com.xiaomi.metoknlp"

    const/4 v4, 0x6

    invoke-static {p0, v3, v4}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkPackageVersionAbove(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 75
    .local v2, "v8_3xXMSFGeoIsWork":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setGeoEnableSwitch(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 138
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "geo_switch"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 142
    return-void
.end method

.method public static verifyGeoChannel(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
