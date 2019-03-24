.class public Lmiui/yellowpage/ServicesDataEntry;
.super Ljava/lang/Object;
.source "ServicesDataEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/ServicesDataEntry$Type;
    }
.end annotation


# instance fields
.field private mGroupName:Ljava/lang/String;

.field private mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/yellowpage/ServicesDataEntry$Type;)V
    .locals 0
    .param p1, "itemType"    # Lmiui/yellowpage/ServicesDataEntry$Type;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

    .line 25
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/yellowpage/ServicesDataEntry;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    return-object v1

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "servicesData":Lorg/json/JSONObject;
    invoke-static {v0}, Lmiui/yellowpage/ServicesDataEntry;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 65
    .end local v0    # "servicesData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;
    .locals 10
    .param p0, "servicesData"    # Lorg/json/JSONObject;

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 74
    return-object v0

    .line 78
    :cond_0
    :try_start_0
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "name":Ljava/lang/String;
    const-string v2, "style"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "style":I
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 81
    .local v3, "data":Lorg/json/JSONArray;
    new-instance v4, Lmiui/yellowpage/ServicesDataEntry;

    invoke-static {}, Lmiui/yellowpage/ServicesDataEntry$Type;->values()[Lmiui/yellowpage/ServicesDataEntry$Type;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Lmiui/yellowpage/ServicesDataEntry;-><init>(Lmiui/yellowpage/ServicesDataEntry$Type;)V

    .line 82
    .local v4, "servicesDataEntry":Lmiui/yellowpage/ServicesDataEntry;
    invoke-virtual {v4, v1}, Lmiui/yellowpage/ServicesDataEntry;->setName(Ljava/lang/String;)V

    .line 83
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 84
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/Service;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 86
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 87
    .local v7, "serviceJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 88
    invoke-static {v7}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v8

    .line 89
    .local v8, "service":Lmiui/yellowpage/Service;
    if-eqz v8, :cond_1

    .line 90
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/yellowpage/Service;->setRawData(Ljava/lang/String;)V

    .line 91
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v7    # "serviceJson":Lorg/json/JSONObject;
    .end local v8    # "service":Lmiui/yellowpage/Service;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v4, v5}, Lmiui/yellowpage/ServicesDataEntry;->setServices(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v5    # "services":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/Service;>;"
    :cond_3
    return-object v4

    .line 98
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "style":I
    .end local v3    # "data":Lorg/json/JSONArray;
    .end local v4    # "servicesDataEntry":Lmiui/yellowpage/ServicesDataEntry;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Lorg/json/JSONException;
    return-object v0
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmiui/yellowpage/ServicesDataEntry;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lmiui/yellowpage/ServicesDataEntry$Type;
    .locals 1

    .line 34
    iget-object v0, p0, Lmiui/yellowpage/ServicesDataEntry;->mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/Service;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lmiui/yellowpage/ServicesDataEntry;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public setItemType(Lmiui/yellowpage/ServicesDataEntry$Type;)V
    .locals 0
    .param p1, "type"    # Lmiui/yellowpage/ServicesDataEntry$Type;

    .line 42
    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

    .line 43
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mGroupName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/Service;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/Service;>;"
    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mServices:Ljava/util/List;

    .line 51
    return-void
.end method
