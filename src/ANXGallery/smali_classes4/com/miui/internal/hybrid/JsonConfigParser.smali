.class public Lcom/miui/internal/hybrid/JsonConfigParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/hybrid/ConfigParser;


# static fields
.field private static final eJ:Ljava/lang/String; = "timestamp"

.field private static final eK:Ljava/lang/String; = "vendor"

.field private static final eL:Ljava/lang/String; = "features"

.field private static final eM:Ljava/lang/String; = "params"

.field private static final eN:Ljava/lang/String; = "name"

.field private static final eO:Ljava/lang/String; = "value"

.field private static final eP:Ljava/lang/String; = "permissions"

.field private static final eQ:Ljava/lang/String; = "origin"

.field private static final eR:Ljava/lang/String; = "subdomains"

.field private static final fA:Ljava/lang/String; = "content"

.field private static final fz:Ljava/lang/String; = "signature"


# instance fields
.field private fB:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->fB:Lorg/json/JSONObject;

    .line 37
    return-void
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/hybrid/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .line 108
    return-object p1
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 76
    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 79
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v3}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    .line 81
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    .line 82
    const-string v4, "params"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 85
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 86
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p1, v3}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method private b(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 96
    if-eqz p2, :cond_0

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v2}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    .line 100
    const-string v3, "origin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    .line 101
    const-string v3, "subdomains"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    .line 102
    invoke-virtual {p1, v2}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public static createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .locals 1

    .line 50
    new-instance v0, Lcom/miui/internal/hybrid/JsonConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsonConfigParser;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .line 40
    nop

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    nop

    .line 46
    invoke-static {v0}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object p0

    return-object p0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->fB:Lorg/json/JSONObject;

    .line 59
    new-instance v2, Lcom/miui/internal/hybrid/Security;

    invoke-direct {v2}, Lcom/miui/internal/hybrid/Security;-><init>()V

    .line 60
    const-string v3, "signature"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    .line 61
    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    .line 64
    const-string v2, "vendor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    .line 65
    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->a(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->b(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p1

    return-object p1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
