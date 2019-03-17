.class public Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;
.super Ljava/lang/Object;
.source "KeyType.java"

# interfaces
.implements Lcom/google/gson_nex/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/interfaces/KeyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyTypeDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson_nex/JsonDeserializer",
        "<",
        "Lorg/keyczar/interfaces/KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/keyczar/interfaces/KeyType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->typeMap:Ljava/util/Map;

    .line 134
    invoke-static {}, Lorg/keyczar/DefaultKeyType;->values()[Lorg/keyczar/DefaultKeyType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 135
    invoke-static {v3}, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->registerType(Lorg/keyczar/interfaces/KeyType;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerType(Lorg/keyczar/interfaces/KeyType;)V
    .locals 4

    .prologue
    .line 148
    invoke-interface {p0}, Lorg/keyczar/interfaces/KeyType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to map two key types to the same name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    sget-object v1, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson_nex/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson_nex/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson_nex/JsonParseException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->deserialize(Lcom/google/gson_nex/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson_nex/JsonDeserializationContext;)Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson_nex/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson_nex/JsonDeserializationContext;)Lorg/keyczar/interfaces/KeyType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson_nex/JsonParseException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/google/gson_nex/JsonElement;->getAsJsonPrimitive()Lcom/google/gson_nex/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson_nex/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 160
    sget-object v1, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot deserialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " no such key has been registered."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    sget-object v1, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/KeyType;

    return-object v0
.end method
