.class public Lcom/miui/gallery/util/BaseMiscUtil;
.super Ljava/lang/Object;
.source "BaseMiscUtil.java"


# static fields
.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 17
    new-array v6, v8, [J

    sput-object v6, Lcom/miui/gallery/util/BaseMiscUtil;->sCrcTable:[J

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 23
    int-to-long v2, v0

    .line 24
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    .line 25
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 26
    .local v4, "x":J
    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    .end local v4    # "x":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 28
    :cond_1
    sget-object v6, Lcom/miui/gallery/util/BaseMiscUtil;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "j":I
    .end local v2    # "part":J
    :cond_2
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 101
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 103
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 102
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 103
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 108
    if-le p0, p2, :cond_0

    .line 110
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 109
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 110
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BaseMiscUtil"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .prologue
    .line 69
    const-wide/16 v0, -0x1

    .line 70
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 71
    sget-object v4, Lcom/miui/gallery/util/BaseMiscUtil;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-wide v0
.end method

.method public static doubleEquals(DD)Z
    .locals 6
    .param p0, "f1"    # D
    .param p2, "f2"    # D

    .prologue
    .line 84
    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BaseMiscUtil;->doubleNear(DDD)Z

    move-result v0

    return v0
.end method

.method public static doubleNear(DDD)Z
    .locals 4
    .param p0, "f1"    # D
    .param p2, "f2"    # D
    .param p4, "eps"    # D

    .prologue
    .line 92
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 96
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floatEquals(FF)Z
    .locals 1
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 80
    const v0, 0x33d6bf95    # 1.0E-7f

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/BaseMiscUtil;->floatNear(FFF)Z

    move-result v0

    return v0
.end method

.method public static floatNear(FFF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .param p2, "eps"    # F

    .prologue
    .line 88
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 121
    .restart local p0    # "target":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 123
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 117
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "target":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 129
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/BaseMiscUtil;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 139
    :cond_0
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 152
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "BaseMiscUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "BaseMiscUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BaseMiscUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "BaseMiscUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 149
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BaseMiscUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isValid(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 42
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
