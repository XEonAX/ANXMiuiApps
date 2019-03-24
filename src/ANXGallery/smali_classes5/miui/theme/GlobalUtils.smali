.class public Lmiui/theme/GlobalUtils;
.super Ljava/lang/Object;
.source "GlobalUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static isReligiousArea(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 13
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$array;->religious_regions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "regions":[Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 17
    .local v3, "currentRegion":Ljava/lang/String;
    array-length v4, v1

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 18
    .local v6, "reg":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 19
    return v2

    .line 17
    .end local v6    # "reg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    .end local v3    # "currentRegion":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$array;->religious_languages:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "languages":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "currentLanguage":Ljava/lang/String;
    array-length v5, v3

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 28
    .local v7, "lan":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 29
    return v2

    .line 27
    .end local v7    # "lan":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 34
    .end local v1    # "regions":[Ljava/lang/String;
    .end local v3    # "languages":[Ljava/lang/String;
    .end local v4    # "currentLanguage":Ljava/lang/String;
    :cond_3
    return v0
.end method
