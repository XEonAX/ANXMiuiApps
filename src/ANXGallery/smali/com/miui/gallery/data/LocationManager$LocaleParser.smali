.class public Lcom/miui/gallery/data/LocationManager$LocaleParser;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleParser"
.end annotation


# direct methods
.method public static fromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 9
    .param p0, "localeString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1065
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-object v4

    .line 1067
    :cond_1
    const-string v5, "_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "parts":[Ljava/lang/String;
    array-length v5, v2

    if-lez v5, :cond_0

    aget-object v5, v2, v6

    if-eqz v5, :cond_0

    .line 1070
    aget-object v1, v2, v6

    .line 1071
    .local v1, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1072
    .local v0, "country":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1073
    .local v3, "variant":Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_2

    .line 1074
    aget-object v0, v2, v7

    .line 1076
    :cond_2
    array-length v4, v2

    if-le v4, v8, :cond_3

    .line 1077
    aget-object v3, v2, v8

    .line 1079
    :cond_3
    if-nez v0, :cond_4

    .line 1080
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_4
    if-nez v3, :cond_5

    .line 1082
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    :cond_5
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1089
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 1101
    :goto_0
    return-object v4

    .line 1091
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, "variant":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1095
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1096
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1098
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
