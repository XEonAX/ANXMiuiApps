.class public Lcom/xiaomi/channel/commonutils/android/MIUIUtils;
.super Ljava/lang/Object;
.source "MIUIUtils.java"


# static fields
.field private static isGDPREnable:I

.field private static isInXMS:I

.field private static isMIUI:I

.field private static locale2RegionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/channel/commonutils/android/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI:I

    .line 32
    sput v1, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isInXMS:I

    .line 34
    sput v1, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable:I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    return-void
.end method

.method private static findServerRegionByLocale(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->initLocale2RegionMap()V

    .line 158
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/android/Region;

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    const-string v1, "ro.miui.region"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xiaomi/channel/commonutils/android/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "region":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "ro.product.locale.region"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xiaomi/channel/commonutils/android/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "persist.sys.country"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xiaomi/channel/commonutils/android/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getIsMIUI()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    const-class v3, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;

    monitor-enter v3

    :try_start_0
    sget v4, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 62
    :try_start_1
    const-string v4, "ro.miui.ui.version.code"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ro.miui.ui.version.name"

    .line 63
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v1, v2

    .line 64
    .local v1, "isMIUIBool":Z
    :cond_1
    if-eqz v1, :cond_3

    :goto_0
    sput v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v1    # "isMIUIBool":Z
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMIUI\'s value is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    .line 72
    :cond_2
    sget v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v2

    .line 64
    .restart local v1    # "isMIUIBool":Z
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 65
    .end local v1    # "isMIUIBool":Z
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "get isMIUI failed"

    invoke-static {v2, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v2, 0x0

    sput v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getMIUIType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    const-class v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getMIUIType()I

    move-result v0

    .line 77
    .local v0, "miuiTypeInt":I
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 78
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 79
    const-string v1, "alpha"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit v2

    return-object v1

    .line 80
    :cond_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 81
    :try_start_1
    const-string v1, "development"

    goto :goto_0

    .line 83
    :cond_1
    const-string/jumbo v1, "stable"

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 96
    .end local v2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 93
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 96
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v3, v2

    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->findServerRegionByLocale(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;

    move-result-object v0

    .line 150
    .local v0, "region":Lcom/xiaomi/channel/commonutils/android/Region;
    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    .line 153
    .end local v0    # "region":Lcom/xiaomi/channel/commonutils/android/Region;
    :cond_0
    return-object v0
.end method

.method private static initLocale2RegionMap()V
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    .line 167
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "CN"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->China:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "FI"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "SE"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "NO"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "FO"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "EE"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "LV"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "LT"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "BY"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "MD"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "UA"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "PL"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "CZ"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "SK"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "HU"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "DE"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "AT"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "CH"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "LI"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "GB"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "IE"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "NL"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "BE"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "LU"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "FR"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "RO"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "BG"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "RS"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "MK"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "AL"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "GR"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "SI"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "HR"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "IT"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "SM"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "MT"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "ES"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "PT"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "AD"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "CY"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "DK"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "RU"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Russia:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->locale2RegionMap:Ljava/util/Map;

    const-string v1, "IN"

    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->India:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static isGDPREnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    sget v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable:I

    if-gez v2, :cond_0

    .line 139
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getRegion(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    sput v0, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable:I

    .line 145
    :cond_0
    :goto_0
    sget v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable:I

    if-lez v2, :cond_2

    :goto_1
    return v0

    .line 142
    :cond_1
    sput v1, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 145
    goto :goto_1
.end method

.method public static declared-synchronized isMIUI()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 47
    const-class v1, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getIsMIUI()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isNotMIUI()Z
    .locals 3

    .prologue
    .line 56
    const-class v1, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getIsMIUI()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isXMS()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    sget v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isInXMS:I

    if-gez v2, :cond_0

    .line 107
    const-string v2, "miui.external.SdkHelper"

    const-string v5, "isMiuiSystem"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "result":Ljava/lang/Object;
    sput v4, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isInXMS:I

    .line 109
    if-eqz v0, :cond_0

    .line 110
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 111
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 112
    .local v1, "resultB":Z
    if-nez v1, :cond_0

    .line 113
    sput v3, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isInXMS:I

    .line 118
    .end local v1    # "resultB":Z
    :cond_0
    sget v2, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isInXMS:I

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method
