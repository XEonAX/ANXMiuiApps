.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 14
    .param p5, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p6, "buildMethod"    # Ljava/lang/reflect/Method;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p8, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v10

    iput v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 66
    if-eqz p7, :cond_3

    .line 67
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "typeName":Ljava/lang/String;
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "typeKey":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .end local v8    # "typeKey":Ljava/lang/String;
    :goto_0
    iput-object v8, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 72
    iput-object v9, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_1
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "orders":[Ljava/lang/String;
    array-length v10, v6

    if-nez v10, :cond_0

    const/4 v6, 0x0

    .end local v6    # "orders":[Ljava/lang/String;
    :cond_0
    iput-object v6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    .end local v9    # "typeName":Ljava/lang/String;
    :goto_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    iget-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    iget-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v10

    new-array v7, v10, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 88
    .local v7, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 89
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    .local v5, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    iget-object v11, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_4

    aget-object v1, v11, v10

    .line 91
    .local v1, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v13, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 69
    .end local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v7    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v8    # "typeKey":Ljava/lang/String;
    .restart local v9    # "typeName":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 74
    .end local v8    # "typeKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    .line 79
    .end local v9    # "typeName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 80
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 81
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto :goto_2

    .line 93
    .restart local v5    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v7    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4
    const/4 v2, 0x0

    .line 94
    .local v2, "i":I
    iget-object v11, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length v12, v11

    const/4 v10, 0x0

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_4
    if-ge v10, v12, :cond_5

    aget-object v4, v11, v10

    .line 95
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 96
    .restart local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v1, :cond_c

    .line 97
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v1, v7, v3

    .line 98
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 101
    .end local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "item":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 102
    .restart local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-object v1, v7, v2

    move v2, v3

    .line 103
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_6

    .line 105
    .end local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "i":I
    .end local v5    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_6
    iget-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v13, v13

    invoke-static {v10, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :cond_7
    iget-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 110
    iget-object v7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 112
    :cond_8
    iput-object v7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 114
    if-eqz p3, :cond_a

    .line 115
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    iput v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 122
    :goto_7
    if-eqz p4, :cond_9

    .line 123
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 124
    iget-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v10, v10

    iget-object v11, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v11, v11

    if-eq v10, v11, :cond_9

    .line 125
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 128
    :cond_9
    return-void

    .line 116
    :cond_a
    if-eqz p5, :cond_b

    .line 117
    invoke-virtual/range {p5 .. p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    iput v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_7

    .line 119
    :cond_b
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_7

    .restart local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v3    # "i":I
    .restart local v4    # "item":Ljava/lang/String;
    .restart local v5    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_c
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_5
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 149
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    iget-boolean v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_1

    .line 146
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 159
    .restart local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    .line 161
    .local v2, "result":I
    if-gez v2, :cond_4

    .line 162
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 165
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    invoke-static {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 79
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .param p4, "compatibleWithJavaBean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 186
    .local v11, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v6

    .line 188
    .local v6, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v59

    .line 189
    .local v59, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v68

    .line 191
    .local v68, "methods":[Ljava/lang/reflect/Method;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v65

    .line 192
    .local v65, "kotlin":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v57

    .line 194
    .local v57, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    .line 195
    .local v7, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v65, :cond_0

    .line 196
    if-nez v6, :cond_1

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 203
    :cond_0
    :goto_0
    const/16 v26, 0x0

    .line 204
    .local v26, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    .line 205
    .local v10, "buildMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 207
    .local v9, "factoryMethod":Ljava/lang/reflect/Method;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-eqz p3, :cond_3

    .line 210
    move-object/from16 v58, p0

    .local v58, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v58, :cond_2

    .line 211
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v60

    .line 213
    .local v60, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v12, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 210
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v58

    goto :goto_1

    .line 199
    .end local v9    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v10    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v26    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v58    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v60    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    goto :goto_0

    .line 215
    .restart local v9    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v26    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v58    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    .line 715
    .end local v58    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    return-object v4

    .line 218
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_4
    const/16 v63, 0x1

    .line 219
    .local v63, "isInterfaceOrAbstract":Z
    :goto_3
    if-nez v7, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v63, :cond_24

    .line 220
    :cond_6
    invoke-static/range {v57 .. v57}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v26

    .line 222
    if-eqz v26, :cond_c

    if-nez v63, :cond_c

    .line 223
    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 225
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v77

    .line 226
    .local v77, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v77

    array-length v4, v0

    if-lez v4, :cond_b

    .line 227
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v71

    .line 228
    .local v71, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .local v61, "i":I
    :goto_4
    move-object/from16 v0, v77

    array-length v4, v0

    move/from16 v0, v61

    if-ge v0, v4, :cond_b

    .line 229
    aget-object v72, v71, v61

    .line 230
    .local v72, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v37, 0x0

    .line 231
    .local v37, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v72

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_7

    aget-object v70, v72, v4

    .line 232
    .local v70, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v70

    instance-of v8, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v8, :cond_9

    move-object/from16 v37, v70

    .line 233
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 237
    .end local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_7
    if-nez v37, :cond_a

    .line 238
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v61    # "i":I
    .end local v63    # "isInterfaceOrAbstract":Z
    .end local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_8
    const/16 v63, 0x0

    goto :goto_3

    .line 231
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v61    # "i":I
    .restart local v63    # "isInterfaceOrAbstract":Z
    .restart local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 240
    .end local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_a
    aget-object v16, v77, v61

    .line 241
    .local v16, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v17, v4, v61

    .line 242
    .local v17, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 243
    .local v18, "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 244
    .local v19, "ordinal":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 245
    .local v20, "serialzeFeatures":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 246
    .local v21, "parserFeatures":I
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, p0

    invoke-direct/range {v13 .. v21}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 248
    .local v13, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 228
    add-int/lit8 v61, v61, 0x1

    goto :goto_4

    .line 252
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v61    # "i":I
    .end local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_b
    new-instance v22, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, v6

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    invoke-direct/range {v22 .. v30}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v4, v22

    goto/16 :goto_2

    .line 255
    .end local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 256
    if-eqz v9, :cond_11

    .line 257
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 259
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v77

    .line 260
    .restart local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v77

    array-length v4, v0

    if-lez v4, :cond_24

    .line 261
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v71

    .line 262
    .restart local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .restart local v61    # "i":I
    :goto_6
    move-object/from16 v0, v77

    array-length v4, v0

    move/from16 v0, v61

    if-ge v0, v4, :cond_10

    .line 263
    aget-object v72, v71, v61

    .line 264
    .restart local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v37, 0x0

    .line 265
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v72

    array-length v5, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_d

    aget-object v70, v72, v4

    .line 266
    .restart local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v70

    instance-of v8, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v8, :cond_e

    move-object/from16 v37, v70

    .line 267
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 271
    .end local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_d
    if-nez v37, :cond_f

    .line 272
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    .restart local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 275
    .end local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_f
    aget-object v16, v77, v61

    .line 276
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v17, v4, v61

    .line 277
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 278
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 279
    .restart local v19    # "ordinal":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 280
    .restart local v20    # "serialzeFeatures":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 281
    .restart local v21    # "parserFeatures":I
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, p0

    invoke-direct/range {v13 .. v21}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 283
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 262
    add-int/lit8 v61, v61, 0x1

    goto :goto_6

    .line 286
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_10
    new-instance v27, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v32, v9

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    invoke-direct/range {v27 .. v35}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v4, v27

    goto/16 :goto_2

    .line 288
    .end local v61    # "i":I
    .end local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_11
    if-nez v63, :cond_24

    .line 289
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v55

    .line 291
    .local v55, "className":Ljava/lang/String;
    const/16 v73, 0x0

    .line 292
    .local v73, "paramNames":[Ljava/lang/String;
    if-eqz v65, :cond_16

    move-object/from16 v0, v57

    array-length v4, v0

    if-lez v4, :cond_16

    .line 293
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v73

    .line 294
    invoke-static/range {v57 .. v57}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v26

    .line 295
    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 352
    :cond_12
    :goto_8
    const/16 v77, 0x0

    .line 353
    .restart local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v73, :cond_13

    .line 354
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v77

    .line 357
    :cond_13
    if-eqz v73, :cond_23

    move-object/from16 v0, v77

    array-length v4, v0

    move-object/from16 v0, v73

    array-length v5, v0

    if-ne v4, v5, :cond_23

    .line 359
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v71

    .line 360
    .restart local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .restart local v61    # "i":I
    :goto_9
    move-object/from16 v0, v77

    array-length v4, v0

    move/from16 v0, v61

    if-ge v0, v4, :cond_22

    .line 361
    aget-object v72, v71, v61

    .line 362
    .restart local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    aget-object v14, v73, v61

    .line 364
    .local v14, "paramName":Ljava/lang/String;
    const/16 v37, 0x0

    .line 365
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v72

    array-length v5, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v5, :cond_14

    aget-object v70, v72, v4

    .line 366
    .restart local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v70

    instance-of v8, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v8, :cond_1e

    move-object/from16 v37, v70

    .line 367
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 372
    .end local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_14
    aget-object v16, v77, v61

    .line 373
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v17, v4, v61

    .line 374
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-static {v0, v14, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 375
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    if-eqz v18, :cond_15

    .line 376
    if-nez v37, :cond_15

    .line 377
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v37

    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 381
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_15
    if-nez v37, :cond_20

    .line 382
    const/16 v19, 0x0

    .line 383
    .restart local v19    # "ordinal":I
    const/16 v20, 0x0

    .line 385
    .restart local v20    # "serialzeFeatures":I
    const-string v4, "org.springframework.security.core.userdetails.User"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "password"

    .line 386
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 387
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v21, v0

    .line 400
    .restart local v21    # "parserFeatures":I
    :goto_b
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v15, p0

    invoke-direct/range {v13 .. v21}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 402
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 360
    add-int/lit8 v61, v61, 0x1

    goto :goto_9

    .line 298
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v61    # "i":I
    .end local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_16
    move-object/from16 v0, v57

    array-length v5, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v5, :cond_12

    aget-object v56, v57, v4

    .line 299
    .local v56, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual/range {v56 .. v56}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v74

    .line 301
    .local v74, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v8, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    move-object/from16 v0, v55

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 302
    move-object/from16 v0, v74

    array-length v8, v0

    const/4 v15, 0x2

    if-ne v8, v15, :cond_17

    const/4 v8, 0x0

    aget-object v8, v74, v8

    const-class v15, Ljava/lang/String;

    if-ne v8, v15, :cond_17

    const/4 v8, 0x1

    aget-object v8, v74, v8

    const-class v15, Ljava/lang/String;

    if-ne v8, v15, :cond_17

    .line 303
    move-object/from16 v26, v56

    .line 304
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 305
    invoke-static/range {v56 .. v56}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v73

    .line 306
    goto/16 :goto_8

    .line 310
    :cond_17
    const-string v8, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    move-object/from16 v0, v55

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 311
    move-object/from16 v0, v74

    array-length v8, v0

    const/4 v15, 0x3

    if-ne v8, v15, :cond_18

    const/4 v8, 0x0

    aget-object v8, v74, v8

    const-class v15, Ljava/lang/Object;

    if-ne v8, v15, :cond_18

    const/4 v8, 0x1

    aget-object v8, v74, v8

    const-class v15, Ljava/lang/Object;

    if-ne v8, v15, :cond_18

    const/4 v8, 0x2

    aget-object v8, v74, v8

    const-class v15, Ljava/util/Collection;

    if-ne v8, v15, :cond_18

    .line 315
    move-object/from16 v26, v56

    .line 316
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 317
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v73, v0

    .end local v73    # "paramNames":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "principal"

    aput-object v5, v73, v4

    const/4 v4, 0x1

    const-string v5, "credentials"

    aput-object v5, v73, v4

    const/4 v4, 0x2

    const-string v5, "authorities"

    aput-object v5, v73, v4

    .line 318
    .restart local v73    # "paramNames":[Ljava/lang/String;
    goto/16 :goto_8

    .line 322
    :cond_18
    const-string v8, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    move-object/from16 v0, v55

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 323
    move-object/from16 v0, v74

    array-length v8, v0

    const/4 v15, 0x1

    if-ne v8, v15, :cond_19

    const/4 v8, 0x0

    aget-object v8, v74, v8

    const-class v15, Ljava/lang/String;

    if-ne v8, v15, :cond_19

    .line 325
    move-object/from16 v26, v56

    .line 326
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v73, v0

    .end local v73    # "paramNames":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "authority"

    aput-object v5, v73, v4

    .line 327
    .restart local v73    # "paramNames":[Ljava/lang/String;
    goto/16 :goto_8

    .line 334
    :cond_19
    invoke-virtual/range {v56 .. v56}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1b

    const/16 v64, 0x1

    .line 335
    .local v64, "is_public":Z
    :goto_d
    if-nez v64, :cond_1c

    .line 298
    :cond_1a
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 334
    .end local v64    # "is_public":Z
    :cond_1b
    const/16 v64, 0x0

    goto :goto_d

    .line 338
    .restart local v64    # "is_public":Z
    :cond_1c
    invoke-static/range {v56 .. v56}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v66

    .line 339
    .local v66, "lookupParameterNames":[Ljava/lang/String;
    if-eqz v66, :cond_1a

    move-object/from16 v0, v66

    array-length v8, v0

    if-eqz v8, :cond_1a

    .line 343
    if-eqz v26, :cond_1d

    move-object/from16 v0, v66

    array-length v8, v0

    move-object/from16 v0, v73

    array-length v15, v0

    if-le v8, v15, :cond_1a

    .line 347
    :cond_1d
    move-object/from16 v73, v66

    .line 348
    move-object/from16 v26, v56

    goto :goto_e

    .line 365
    .end local v56    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v64    # "is_public":Z
    .end local v66    # "lookupParameterNames":[Ljava/lang/String;
    .end local v74    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v14    # "paramName":Ljava/lang/String;
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v61    # "i":I
    .restart local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 389
    .end local v70    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    .restart local v19    # "ordinal":I
    .restart local v20    # "serialzeFeatures":I
    :cond_1f
    const/16 v21, 0x0

    .restart local v21    # "parserFeatures":I
    goto/16 :goto_b

    .line 392
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    :cond_20
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v69

    .line 393
    .local v69, "nameAnnotated":Ljava/lang/String;
    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_21

    .line 394
    move-object/from16 v14, v69

    .line 396
    :cond_21
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 397
    .restart local v19    # "ordinal":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 398
    .restart local v20    # "serialzeFeatures":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .restart local v21    # "parserFeatures":I
    goto/16 :goto_b

    .line 405
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v69    # "nameAnnotated":Ljava/lang/String;
    .end local v72    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "javax.servlet.http.Cookie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 406
    new-instance v22, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, v6

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    invoke-direct/range {v22 .. v30}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v4, v22

    goto/16 :goto_2

    .line 409
    .end local v61    # "i":I
    .end local v71    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_23
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default constructor not found. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    .end local v55    # "className":Ljava/lang/String;
    .end local v73    # "paramNames":[Ljava/lang/String;
    .end local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_24
    if-eqz v7, :cond_25

    .line 415
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 418
    :cond_25
    if-eqz v6, :cond_34

    .line 419
    const/16 v78, 0x0

    .line 421
    .local v78, "withPrefix":Ljava/lang/String;
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v51

    check-cast v51, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 422
    .local v51, "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    if-eqz v51, :cond_26

    .line 423
    invoke-interface/range {v51 .. v51}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v78

    .line 426
    :cond_26
    if-eqz v78, :cond_27

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_28

    .line 427
    :cond_27
    const-string v78, "with"

    .line 430
    :cond_28
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v8, v5

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v8, :cond_2e

    aget-object v29, v5, v4

    .line 431
    .local v29, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    .line 430
    :cond_29
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 435
    :cond_2a
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 439
    const/16 v19, 0x0

    .restart local v19    # "ordinal":I
    const/16 v20, 0x0

    .restart local v20    # "serialzeFeatures":I
    const/16 v21, 0x0

    .line 441
    .restart local v21    # "parserFeatures":I
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 443
    .local v36, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v36, :cond_2b

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v36

    .line 447
    :cond_2b
    if-eqz v36, :cond_2c

    .line 448
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v15

    if-eqz v15, :cond_29

    .line 452
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 453
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 454
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 456
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2c

    .line 457
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 458
    .local v28, "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v19

    move/from16 v34, v20

    move/from16 v35, v21

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_10

    .line 464
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_2c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 466
    .local v67, "methodName":Ljava/lang/String;
    const-string v15, "set"

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v22, 0x3

    move/from16 v0, v22

    if-le v15, v0, :cond_2d

    .line 467
    new-instance v75, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v75

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .local v75, "properNameBuilder":Ljava/lang/StringBuilder;
    :goto_11
    const/4 v15, 0x0

    move-object/from16 v0, v75

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v53

    .line 481
    .local v53, "c0":C
    invoke-static/range {v53 .. v53}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 485
    const/4 v15, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v22

    move-object/from16 v0, v75

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 487
    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 489
    .restart local v28    # "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v19

    move/from16 v34, v20

    move/from16 v35, v21

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_10

    .line 469
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v53    # "c0":C
    .end local v75    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_2d
    move-object/from16 v0, v67

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 473
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-le v15, v0, :cond_29

    .line 477
    new-instance v75, Ljava/lang/StringBuilder;

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v75

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v75    # "properNameBuilder":Ljava/lang/StringBuilder;
    goto :goto_11

    .line 493
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v29    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v67    # "methodName":Ljava/lang/String;
    .end local v75    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_2e
    if-eqz v6, :cond_34

    .line 494
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v52

    check-cast v52, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 496
    .local v52, "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    const/16 v50, 0x0

    .line 497
    .local v50, "buildMethodName":Ljava/lang/String;
    if-eqz v52, :cond_2f

    .line 498
    invoke-interface/range {v52 .. v52}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v50

    .line 501
    :cond_2f
    if-eqz v50, :cond_30

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_31

    .line 502
    :cond_30
    const-string v50, "build"

    .line 506
    :cond_31
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, v50

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 513
    :goto_12
    if-nez v10, :cond_32

    .line 515
    :try_start_1
    const-string v4, "create"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 523
    :cond_32
    :goto_13
    if-nez v10, :cond_33

    .line 524
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "buildMethod not found."

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 527
    :cond_33
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 531
    .end local v50    # "buildMethodName":Ljava/lang/String;
    .end local v51    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v52    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v78    # "withPrefix":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v68

    array-length v5, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v5, :cond_45

    aget-object v29, v68, v4

    .line 532
    .restart local v29    # "method":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    .restart local v19    # "ordinal":I
    const/16 v20, 0x0

    .restart local v20    # "serialzeFeatures":I
    const/16 v21, 0x0

    .line 533
    .restart local v21    # "parserFeatures":I
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 535
    .restart local v67    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 531
    :cond_35
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 540
    :cond_36
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v76

    .line 541
    .local v76, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v76

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, v76

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 545
    :cond_37
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    const-class v15, Ljava/lang/Object;

    if-eq v8, v15, :cond_35

    .line 549
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v77

    .line 551
    .restart local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v77

    array-length v8, v0

    if-eqz v8, :cond_35

    move-object/from16 v0, v77

    array-length v8, v0

    const/4 v15, 0x2

    if-gt v8, v15, :cond_35

    .line 555
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 556
    .restart local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v36, :cond_38

    move-object/from16 v0, v77

    array-length v8, v0

    const/4 v15, 0x2

    if-ne v8, v15, :cond_38

    const/4 v8, 0x0

    aget-object v8, v77, v8

    const-class v15, Ljava/lang/String;

    if-ne v8, v15, :cond_38

    const/4 v8, 0x1

    aget-object v8, v77, v8

    const-class v15, Ljava/lang/Object;

    if-ne v8, v15, :cond_38

    .line 560
    new-instance v37, Lcom/alibaba/fastjson/util/FieldInfo;

    const-string v38, ""

    const/16 v40, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v39, v29

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v19

    move/from16 v44, v20

    move/from16 v45, v21

    move-object/from16 v46, v36

    invoke-direct/range {v37 .. v48}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_15

    .line 565
    :cond_38
    move-object/from16 v0, v77

    array-length v8, v0

    const/4 v15, 0x1

    if-ne v8, v15, :cond_35

    .line 569
    if-nez v36, :cond_39

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v36

    .line 573
    :cond_39
    if-nez v36, :cond_3a

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v15, 0x4

    if-lt v8, v15, :cond_35

    .line 577
    :cond_3a
    if-eqz v36, :cond_3b

    .line 578
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 582
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 583
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 584
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 586
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3b

    .line 587
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 588
    .restart local v28    # "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v19

    move/from16 v34, v20

    move/from16 v35, v21

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_15

    .line 594
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_3b
    if-nez v36, :cond_3c

    const-string v8, "set"

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 598
    :cond_3c
    const/4 v8, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v54

    .line 601
    .local v54, "c3":C
    invoke-static/range {v54 .. v54}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_3d

    const/16 v8, 0x200

    move/from16 v0, v54

    if-le v0, v8, :cond_40

    .line 604
    :cond_3d
    sget-boolean v8, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v8, :cond_3f

    .line 605
    const/4 v8, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 619
    .restart local v28    # "propertyName":Ljava/lang/String;
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 620
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    if-nez v18, :cond_3e

    const/4 v8, 0x0

    aget-object v8, v77, v8

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v15, :cond_3e

    .line 621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "is"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v15, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v15, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 622
    .local v62, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 625
    .end local v62    # "isFieldName":Ljava/lang/String;
    :cond_3e
    const/16 v37, 0x0

    .line 626
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v18, :cond_43

    .line 627
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v37

    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 629
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v37, :cond_43

    .line 630
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 634
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 635
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 636
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 638
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_43

    .line 639
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 640
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v38, 0x0

    move-object/from16 v30, v18

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v19

    move/from16 v34, v20

    move/from16 v35, v21

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_15

    .line 607
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v15, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 609
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_40
    const/16 v8, 0x5f

    move/from16 v0, v54

    if-ne v0, v8, :cond_41

    .line 610
    const/4 v8, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 611
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_41
    const/16 v8, 0x66

    move/from16 v0, v54

    if-ne v0, v8, :cond_42

    .line 612
    const/4 v8, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 613
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_42
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v15, 0x5

    if-lt v8, v15, :cond_35

    const/4 v8, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 614
    const/4 v8, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 648
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_43
    if-eqz p2, :cond_44

    .line 649
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 652
    :cond_44
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v38, 0x0

    move-object/from16 v30, v18

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v19

    move/from16 v34, v20

    move/from16 v35, v21

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_15

    .line 656
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v29    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v54    # "c3":C
    .end local v67    # "methodName":Ljava/lang/String;
    .end local v76    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v77    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v60

    .line 657
    .restart local v60    # "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v12, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v8, v5

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v8, :cond_4d

    aget-object v29, v5, v4

    .line 660
    .restart local v29    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 661
    .restart local v67    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_47

    .line 659
    :cond_46
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 665
    :cond_47
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-nez v15, :cond_46

    .line 669
    if-nez v6, :cond_46

    const-string v15, "get"

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_46

    const/4 v15, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v15

    if-eqz v15, :cond_46

    .line 670
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_46

    .line 674
    const-class v15, Ljava/util/Collection;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_48

    const-class v15, Ljava/util/Map;

    .line 675
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_48

    const-class v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 676
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    if-eq v15, v0, :cond_48

    const-class v15, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 677
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    if-eq v15, v0, :cond_48

    const-class v15, Ljava/util/concurrent/atomic/AtomicLong;

    .line 678
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_46

    .line 682
    :cond_48
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 683
    .restart local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v36, :cond_49

    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v15

    if-nez v15, :cond_46

    .line 687
    :cond_49
    if-eqz v36, :cond_4c

    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4c

    .line 688
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 701
    .restart local v28    # "propertyName":Ljava/lang/String;
    :cond_4a
    move-object/from16 v0, v28

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v13

    .line 702
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v13, :cond_46

    .line 706
    if-eqz p2, :cond_4b

    .line 707
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 710
    :cond_4b
    new-instance v38, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v39, v28

    move-object/from16 v40, v29

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v47, v36

    invoke-direct/range {v38 .. v49}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v38

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_18

    .line 690
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_4c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x3

    move-object/from16 v0, v67

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v22, 0x4

    move-object/from16 v0, v67

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 692
    .restart local v28    # "propertyName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 693
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    if-eqz v18, :cond_4a

    .line 694
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v37

    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 695
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v37, :cond_4a

    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v15

    if-nez v15, :cond_4a

    goto/16 :goto_18

    .line 715
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v29    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v67    # "methodName":Ljava/lang/String;
    :cond_4d
    new-instance v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v5, p0

    move-object/from16 v8, v26

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    goto/16 :goto_2

    .line 518
    .end local v60    # "fields":[Ljava/lang/reflect/Field;
    .restart local v50    # "buildMethodName":Ljava/lang/String;
    .restart local v51    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v52    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v78    # "withPrefix":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_13

    .line 516
    :catch_1
    move-exception v4

    goto/16 :goto_13

    .line 509
    :catch_2
    move-exception v4

    goto/16 :goto_12

    .line 507
    :catch_3
    move-exception v4

    goto/16 :goto_12
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 21
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v5, p4, v19

    .line 720
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    .line 721
    .local v17, "modifiers":I
    and-int/lit8 v2, v17, 0x8

    if-eqz v2, :cond_1

    .line 719
    :cond_0
    :goto_1
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_0

    .line 725
    :cond_1
    and-int/lit8 v2, v17, 0x10

    if-eqz v2, :cond_3

    .line 726
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 727
    .local v15, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/Collection;

    .line 728
    invoke-virtual {v2, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 729
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 730
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 731
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const/16 v18, 0x1

    .line 732
    .local v18, "supportReadOnly":Z
    :goto_2
    if-eqz v18, :cond_0

    .line 737
    .end local v15    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "supportReadOnly":Z
    :cond_3
    const/4 v14, 0x0

    .line 738
    .local v14, "contains":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 739
    .local v16, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 740
    const/4 v14, 0x1

    .line 745
    .end local v16    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_5
    if-nez v14, :cond_0

    .line 749
    const/4 v8, 0x0

    .local v8, "ordinal":I
    const/4 v9, 0x0

    .local v9, "serialzeFeatures":I
    const/4 v10, 0x0

    .line 750
    .local v10, "parserFeatures":I
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "propertyName":Ljava/lang/String;
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 754
    .local v12, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_6

    .line 755
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 759
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 760
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 761
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 763
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 764
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 768
    :cond_6
    if-eqz p2, :cond_7

    .line 769
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 772
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_1

    .line 731
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v14    # "contains":Z
    .restart local v15    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 775
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "modifiers":I
    :cond_9
    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 4
    .param p1, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 891
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    const-string v1, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 905
    :cond_0
    :goto_0
    return-object v0

    .line 895
    :cond_1
    if-nez p1, :cond_2

    move-object v0, v1

    .line 896
    goto :goto_0

    .line 899
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object v0

    .line 901
    .local v0, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Void;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 902
    goto :goto_0
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 18
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 808
    const/4 v4, 0x0

    .line 810
    .local v4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v3, p0, v11

    .line 811
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 812
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v1, :cond_1

    .line 813
    if-eqz v4, :cond_0

    .line 814
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "multi-JSONCreator"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 817
    :cond_0
    move-object v4, v3

    .line 810
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 821
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-eqz v4, :cond_3

    move-object v5, v4

    .line 858
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    return-object v5

    .line 825
    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    move-object/from16 v0, p0

    array-length v14, v0

    const/4 v11, 0x0

    move v13, v11

    :goto_2
    if-ge v13, v14, :cond_b

    aget-object v2, p0, v13

    .line 826
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 827
    .local v9, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    array-length v11, v9

    if-nez v11, :cond_5

    .line 825
    :cond_4
    :goto_3
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_2

    .line 830
    :cond_5
    const/4 v6, 0x1

    .line 831
    .local v6, "match":Z
    array-length v15, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_4
    if-ge v12, v15, :cond_7

    aget-object v8, v9, v12

    .line 832
    .local v8, "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    const/4 v10, 0x0

    .line 833
    .local v10, "paramMatch":Z
    array-length v0, v8

    move/from16 v16, v0

    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    aget-object v7, v8, v11

    .line 834
    .local v7, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v0, v7, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 835
    const/4 v10, 0x1

    .line 839
    .end local v7    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_6
    if-nez v10, :cond_9

    .line 840
    const/4 v6, 0x0

    .line 845
    .end local v8    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .end local v10    # "paramMatch":Z
    :cond_7
    if-eqz v6, :cond_4

    .line 846
    if-eqz v4, :cond_a

    .line 847
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "multi-JSONCreator"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 833
    .restart local v7    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v8    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .restart local v10    # "paramMatch":Z
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 831
    .end local v7    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_9
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_4

    .line 850
    .end local v8    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .end local v10    # "paramMatch":Z
    :cond_a
    move-object v4, v2

    goto :goto_3

    .line 854
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v6    # "match":Z
    .end local v9    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_b
    if-eqz v4, :cond_c

    move-object v5, v4

    .line 855
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_c
    move-object v5, v4

    .line 858
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 778
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 779
    const/4 v1, 0x0

    .line 804
    :cond_0
    :goto_0
    return-object v1

    .line 782
    :cond_1
    const/4 v1, 0x0

    .line 784
    .local v1, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v5, p1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, p1, v3

    .line 785
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_3

    .line 786
    move-object v1, v0

    .line 791
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-nez v1, :cond_0

    .line 792
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 794
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_0

    aget-object v0, p1, v3

    .line 795
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    aget-object v6, v2, v4

    .line 796
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 797
    move-object v1, v0

    .line 798
    goto :goto_0

    .line 784
    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 794
    .restart local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 864
    .local v1, "factoryMethod":Ljava/lang/reflect/Method;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, p1, v3

    .line 865
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 864
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 869
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 873
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 874
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_0

    .line 875
    if-eqz v1, :cond_2

    .line 876
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "multi-JSONCreator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 879
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 883
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-object v1
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 132
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_0
    return-object v1

    .line 136
    .restart local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    iget-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 137
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 141
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
