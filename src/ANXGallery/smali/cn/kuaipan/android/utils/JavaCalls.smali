.class public Lcn/kuaipan/android/utils/JavaCalls;
.super Ljava/lang/Object;
.source "JavaCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/JavaCalls$JavaParam;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    .line 15
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "targetInstance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/kuaipan/android/utils/JavaCalls;->callMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JavaCalls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meet exception when call Method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs callMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "targetInstance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/kuaipan/android/utils/JavaCalls;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcn/kuaipan/android/utils/JavaCalls;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {p2}, Lcn/kuaipan/android/utils/JavaCalls;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "result":Ljava/lang/Object;, "TT;"
    return-object v2
.end method

.method public static varargs callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lcn/kuaipan/android/utils/JavaCalls;->callStaticMethodOrThrow(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JavaCalls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meet exception when call Method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs callStaticMethodOrThrow(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/kuaipan/android/utils/JavaCalls;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcn/kuaipan/android/utils/JavaCalls;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    invoke-static {p2}, Lcn/kuaipan/android/utils/JavaCalls;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "result":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method private static compareClassLists([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "b":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    if-nez p0, :cond_3

    .line 106
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    move v4, v2

    .line 127
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v2, v3

    .line 106
    goto :goto_0

    .line 109
    :cond_3
    array-length v1, p0

    .line 111
    .local v1, "length":I
    if-nez p1, :cond_4

    .line 112
    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_1

    .line 115
    :cond_4
    array-length v2, p1

    if-eq v1, v2, :cond_5

    move v4, v3

    .line 116
    goto :goto_1

    .line 119
    :cond_5
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_7

    .line 120
    aget-object v2, p0, v0

    aget-object v5, p1, v0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    aget-object v5, p0, v0

    .line 121
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    aget-object v5, p0, v0

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    sget-object v5, Lcn/kuaipan/android/utils/JavaCalls;->PRIMITIVE_MAP:Ljava/util/HashMap;

    aget-object v6, p1, v0

    .line 122
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    move v4, v3

    .line 127
    goto :goto_1
.end method

.method private static findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "list"    # [Ljava/lang/reflect/Method;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Method name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p0, v1

    .line 95
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p2}, Lcn/kuaipan/android/utils/JavaCalls;->compareClassLists([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    return-object v0

    .line 94
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    .local v1, "methods":[Ljava/lang/reflect/Method;
    invoke-static {v1, p1, p2}, Lcn/kuaipan/android/utils/JavaCalls;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    .local v0, "method":Ljava/lang/reflect/Method;
    return-object v0
.end method

.method private static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 189
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    array-length v3, p0

    if-lez v3, :cond_2

    .line 190
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Class;

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 192
    aget-object v1, p0, v0

    .line 193
    .local v1, "param":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcn/kuaipan/android/utils/JavaCalls$JavaParam;

    if-eqz v3, :cond_0

    .line 194
    check-cast v1, Lcn/kuaipan/android/utils/JavaCalls$JavaParam;

    .end local v1    # "param":Ljava/lang/Object;
    iget-object v3, v1, Lcn/kuaipan/android/utils/JavaCalls$JavaParam;->clazz:Ljava/lang/Class;

    aput-object v3, v2, v0

    .line 191
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .restart local v1    # "param":Ljava/lang/Object;
    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_2
    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    .line 200
    .end local v0    # "i":I
    .end local v1    # "param":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method private static varargs getParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "parameters":[Ljava/lang/Object;
    if-eqz p0, :cond_1

    array-length v3, p0

    if-lez v3, :cond_1

    .line 207
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 209
    aget-object v1, p0, v0

    .line 210
    .local v1, "param":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcn/kuaipan/android/utils/JavaCalls$JavaParam;

    if-eqz v3, :cond_0

    .line 211
    check-cast v1, Lcn/kuaipan/android/utils/JavaCalls$JavaParam;

    .end local v1    # "param":Ljava/lang/Object;
    iget-object v3, v1, Lcn/kuaipan/android/utils/JavaCalls$JavaParam;->obj:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 208
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .restart local v1    # "param":Ljava/lang/Object;
    :cond_0
    aput-object v1, v2, v0

    goto :goto_1

    .line 217
    .end local v0    # "i":I
    .end local v1    # "param":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method
