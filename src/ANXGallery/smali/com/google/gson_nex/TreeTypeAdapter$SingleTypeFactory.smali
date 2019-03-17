.class Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/gson_nex/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson_nex/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/google/gson_nex/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/google/gson_nex/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/google/gson_nex/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/gson_nex/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lcom/google/gson_nex/JsonSerializer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/gson_nex/JsonSerializer;

    :goto_0
    iput-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson_nex/JsonSerializer;

    .line 120
    instance-of v0, p1, Lcom/google/gson_nex/JsonDeserializer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/gson_nex/JsonDeserializer;

    :goto_1
    iput-object p1, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson_nex/JsonDeserializer;

    .line 123
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson_nex/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson_nex/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/gson_nex/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 124
    iput-object p2, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson_nex/reflect/TypeToken;

    .line 125
    iput-boolean p3, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 126
    iput-object p4, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 127
    return-void

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/gson_nex/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson_nex/TreeTypeAdapter$1;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson_nex/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;)Lcom/google/gson_nex/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson_nex/Gson;",
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson_nex/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson_nex/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson_nex/reflect/TypeToken;

    .line 132
    invoke-virtual {v0, p2}, Lcom/google/gson_nex/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson_nex/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/gson_nex/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson_nex/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 134
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/gson_nex/TreeTypeAdapter;

    iget-object v1, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson_nex/JsonSerializer;

    iget-object v2, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson_nex/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/gson_nex/TreeTypeAdapter;-><init>(Lcom/google/gson_nex/JsonSerializer;Lcom/google/gson_nex/JsonDeserializer;Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapterFactory;Lcom/google/gson_nex/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 133
    invoke-virtual {p2}, Lcom/google/gson_nex/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 134
    goto :goto_1
.end method
