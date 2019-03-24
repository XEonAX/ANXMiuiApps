.class public Lmiui/upnp/typedef/property/PropertyValueUtil;
.super Ljava/lang/Object;
.source "PropertyValueUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyValueUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiui/upnp/typedef/property/PropertyValue;"
        }
    .end annotation

    .line 40
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 43
    .local v0, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 44
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    .line 45
    .local v5, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 47
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 51
    const-class v2, Ljava/lang/Boolean;

    if-ne p0, v2, :cond_1

    .line 52
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 53
    :cond_1
    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_2

    .line 54
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 55
    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_3

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 57
    :cond_3
    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_4

    .line 58
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 59
    :cond_4
    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_6

    .line 60
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    .line 44
    .end local v5    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :cond_6
    :goto_1
    goto :goto_2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 65
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 71
    :goto_2
    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v1

    return-object v1
.end method

.method public static createByType(Ljava/lang/Class;Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/upnp/typedef/property/PropertyValue;"
        }
    .end annotation

    .line 15
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 18
    .local v0, "v":Lmiui/upnp/typedef/property/PropertyValue;
    if-nez p1, :cond_0

    .line 19
    invoke-static {p0}, Lmiui/upnp/typedef/property/PropertyValueUtil;->createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-static {p1}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    const-string v1, "PropertyValueUtil"

    const-string v2, "invalid: type is %s, init value is %s (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 28
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lmiui/upnp/typedef/property/PropertyValueUtil;->createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0
.end method
