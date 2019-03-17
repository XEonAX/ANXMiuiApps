.class public Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;
.super Ljava/lang/Object;
.source "FeatureProfile.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/FeatureProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/miui/gallery/cloudcontrol/FeatureProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    .locals 4
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;-><init>()V

    .line 117
    .local v0, "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 118
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setName(Ljava/lang/String;)V

    .line 123
    :cond_0
    const-string/jumbo v3, "strategy"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const-string/jumbo v3, "strategy"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 125
    .local v2, "strategy":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStrategy(Ljava/lang/String;)V

    .line 131
    .end local v2    # "strategy":Lcom/google/gson/JsonElement;
    :cond_1
    :goto_0
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStatus(Ljava/lang/String;)V

    .line 134
    :cond_2
    return-object v0

    .line 128
    .restart local v2    # "strategy":Lcom/google/gson/JsonElement;
    :cond_3
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStrategy(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    move-result-object v0

    return-object v0
.end method
