.class public Lcom/miui/gallery/data/LocationManager$AddressParser;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressParser"
.end annotation


# direct methods
.method public static fromJson(Ljava/lang/String;)Landroid/location/Address;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1022
    if-nez p0, :cond_0

    .line 1023
    const/4 v0, 0x0

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->fromJson(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Landroid/location/Address;
    .locals 6
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1030
    if-nez p0, :cond_1

    .line 1031
    const/4 v0, 0x0

    .line 1049
    :cond_0
    return-object v0

    .line 1034
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->getLocaleFromJson(Lorg/json/JSONObject;)Ljava/util/Locale;

    move-result-object v4

    .line 1035
    .local v4, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/location/Address;

    invoke-direct {v0, v4}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1036
    .local v0, "address":Landroid/location/Address;
    const-string v5, "countryName"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1037
    const-string v5, "admin"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 1038
    const-string/jumbo v5, "subAdmin"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 1039
    const-string v5, "locality"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 1040
    const-string/jumbo v5, "subLocality"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 1041
    const-string/jumbo v5, "thoroughfare"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v5, "subThoroughfare"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    .line 1043
    const-string v5, "addressLines"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1044
    .local v1, "addressLines":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 1045
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1046
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getLocaleFromJson(Lorg/json/JSONObject;)Ljava/util/Locale;
    .locals 2
    .param p0, "addressJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1057
    invoke-static {p0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->getLocaleStringFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/LocationManager$LocaleParser;->fromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 1058
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocaleStringFromJson(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "addressJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1053
    const-string v0, "locale"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 984
    const/4 v2, 0x0

    .line 991
    :goto_0
    return-object v2

    .line 987
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 988
    .local v1, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 989
    .local v0, "address":Landroid/location/Address;
    invoke-static {v0}, Lcom/miui/gallery/data/LocationManager$AddressParser;->toJson(Landroid/location/Address;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 991
    .end local v0    # "address":Landroid/location/Address;
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toJson(Landroid/location/Address;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 995
    if-nez p0, :cond_0

    .line 996
    const/4 v1, 0x0

    .line 1018
    :goto_0
    return-object v1

    .line 999
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1000
    .local v1, "data":Lorg/json/JSONObject;
    const-string v4, "locale"

    invoke-virtual {p0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/data/LocationManager$LocaleParser;->toString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    const-string v4, "countryName"

    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const-string v4, "admin"

    invoke-virtual {p0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    const-string/jumbo v4, "subAdmin"

    invoke-virtual {p0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    const-string v4, "locality"

    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    const-string/jumbo v4, "subLocality"

    invoke-virtual {p0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    const-string/jumbo v4, "thoroughfare"

    invoke-virtual {p0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    const-string/jumbo v4, "subThoroughfare"

    invoke-virtual {p0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1009
    .local v3, "maxAddressLines":I
    const/4 v0, 0x0

    .line 1010
    .local v0, "addressLines":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1011
    if-nez v0, :cond_1

    .line 1012
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "addressLines":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1014
    .restart local v0    # "addressLines":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1010
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1016
    :cond_2
    const-string v4, "addressLines"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method
