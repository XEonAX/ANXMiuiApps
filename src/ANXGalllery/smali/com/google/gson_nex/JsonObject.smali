.class public final Lcom/google/gson_nex/JsonObject;
.super Lcom/google/gson_nex/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lcom/google/gson_nex/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson_nex/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gson_nex/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson_nex/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/google/gson_nex/JsonElement;
    .locals 1

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lcom/google/gson_nex/JsonNull;->INSTANCE:Lcom/google/gson_nex/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson_nex/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson_nex/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/google/gson_nex/JsonElement;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/google/gson_nex/JsonNull;->INSTANCE:Lcom/google/gson_nex/JsonNull;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson_nex/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/google/gson_nex/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson_nex/JsonObject;->add(Ljava/lang/String;Lcom/google/gson_nex/JsonElement;)V

    .line 102
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/google/gson_nex/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson_nex/JsonObject;->add(Ljava/lang/String;Lcom/google/gson_nex/JsonElement;)V

    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/google/gson_nex/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson_nex/JsonObject;->add(Ljava/lang/String;Lcom/google/gson_nex/JsonElement;)V

    .line 91
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/google/gson_nex/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson_nex/JsonObject;->add(Ljava/lang/String;Lcom/google/gson_nex/JsonElement;)V

    .line 80
    return-void
.end method

.method bridge synthetic deepCopy()Lcom/google/gson_nex/JsonElement;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gson_nex/JsonObject;->deepCopy()Lcom/google/gson_nex/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method deepCopy()Lcom/google/gson_nex/JsonObject;
    .locals 4

    .prologue
    .line 38
    new-instance v2, Lcom/google/gson_nex/JsonObject;

    invoke-direct {v2}, Lcom/google/gson_nex/JsonObject;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson_nex/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson_nex/JsonElement;->deepCopy()Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/gson_nex/JsonObject;->add(Ljava/lang/String;Lcom/google/gson_nex/JsonElement;)V

    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson_nex/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson_nex/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/gson_nex/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/gson_nex/JsonObject;

    iget-object v0, p1, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    .line 188
    invoke-virtual {v0, v1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/google/gson_nex/JsonElement;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/JsonElement;

    return-object v0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/google/gson_nex/JsonArray;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/google/gson_nex/JsonObject;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson_nex/JsonPrimitive;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson_nex/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/google/gson_nex/JsonElement;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gson_nex/JsonObject;->members:Lcom/google/gson_nex/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/JsonElement;

    return-object v0
.end method
