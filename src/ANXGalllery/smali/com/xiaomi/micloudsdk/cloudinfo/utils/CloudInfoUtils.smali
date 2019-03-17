.class public Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;
.super Ljava/lang/Object;
.source "CloudInfoUtils.java"


# static fields
.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "langCode"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p0, :cond_1

    .line 147
    const/4 p0, 0x0

    .line 159
    .end local p0    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 149
    .restart local p0    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string p0, "he"

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const-string p0, "id"

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method public static getItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    .locals 6
    .param p0, "statusInfo"    # Lmiui/cloud/sync/MiCloudStatusInfo;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "name":Ljava/lang/String;
    const-string v1, "LocalizedName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "localizedName":Ljava/lang/String;
    const-string v1, "Used"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 111
    .local v4, "used":J
    new-instance v0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V

    .line 112
    .local v0, "itemInfo":Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    goto :goto_0
.end method

.method public static getQuotaInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .locals 19
    .param p0, "statusInfo"    # Lmiui/cloud/sync/MiCloudStatusInfo;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 85
    const-string v3, "Total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 86
    .local v4, "total":J
    const-string v3, "Used"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 87
    .local v6, "used":J
    const-string v3, "Warn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "warn":Ljava/lang/String;
    const-string v3, "YearlyPackageType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "yearlyPackageType":Ljava/lang/String;
    const-string v3, "YearlyPackageSize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 90
    .local v10, "yearlyPackageSize":J
    const-string v3, "YearlyPackageCreateTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 91
    .local v12, "yearlyPackageCreateTime":J
    const-string v3, "YearlyPackageExpireTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 92
    .local v14, "yearlyPackageExpireTime":J
    new-instance v2, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v15}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V

    .line 93
    .local v2, "quotaInfo":Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    const-string v3, "ItemInfoList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 94
    .local v16, "array":Lorg/json/JSONArray;
    if-eqz v16, :cond_1

    .line 95
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 97
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    move-result-object v18

    .local v18, "itemInfo":Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    if-eqz v18, :cond_0

    .line 98
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V

    .line 95
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 101
    .end local v17    # "index":I
    .end local v18    # "itemInfo":Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    :cond_1
    return-object v2
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 9

    .prologue
    .line 25
    sget-object v7, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->sUserAgent:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v7, "ro.product.mod_device"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/android/internal/SystemPropertiesCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "miuiModel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 32
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :goto_0
    const-string v7, "; MIUI/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v7, " E/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v7, "ro.miui.ui.version.name"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/android/internal/SystemPropertiesCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "miuiVersion":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v7, " B/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-boolean v7, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v7, :cond_3

    .line 45
    const-string v7, "A"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_1
    const-string v7, " L/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 57
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 59
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 62
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    :goto_2
    const-string v7, " LO/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "region":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 74
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->sUserAgent:Ljava/lang/String;

    .line 81
    :cond_1
    sget-object v7, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->sUserAgent:Ljava/lang/String;

    return-object v7

    .line 34
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v4    # "miuiVersion":Ljava/lang/String;
    .end local v5    # "region":Ljava/lang/String;
    :cond_2
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    .restart local v4    # "miuiVersion":Ljava/lang/String;
    :cond_3
    sget-boolean v7, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v7, :cond_4

    .line 47
    const-string v7, "D"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 48
    :cond_4
    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_5

    .line 49
    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    :cond_5
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_6
    const-string v7, "EN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 76
    .restart local v5    # "region":Ljava/lang/String;
    :cond_7
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
