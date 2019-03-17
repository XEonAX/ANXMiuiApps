.class public Lorg/jcodec/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final boxed2primitive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    .line 20
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Void;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private static classes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "params"    # [Ljava/lang/Object;

    .prologue
    .line 39
    array-length v3, p0

    new-array v0, v3, [Ljava/lang/Class;

    .line 40
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 41
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    sget-object v3, Lorg/jcodec/platform/Platform;->boxed2primitive:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 40
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    aput-object v1, v0, v2

    goto :goto_1

    .line 48
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "fourcc"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    const-string v1, "iso8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "class1"    # Ljava/lang/Class;
    .param p1, "class2"    # Ljava/lang/Class;

    .prologue
    .line 92
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lorg/jcodec/platform/Platform;->classes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static stringFromBytes([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stringFromCharset([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static unsignedInt(I)J
    .locals 4
    .param p0, "signed"    # I

    .prologue
    .line 112
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
