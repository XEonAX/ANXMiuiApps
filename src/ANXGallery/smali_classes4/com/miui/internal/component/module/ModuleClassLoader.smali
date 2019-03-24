.class public Lcom/miui/internal/component/module/ModuleClassLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleClassLoader"

.field private static final dA:Ljava/lang/String; = "dexElements"

.field private static final dB:Ljava/lang/String; = "nativeLibraryPathElements"

.field private static final dx:Ljava/lang/String; = "dalvik.system.DexPathList"

.field private static final dy:Ljava/lang/String; = "dalvik.system.DexPathList$Element"

.field private static final dz:Ljava/lang/String; = "dalvik.system.DexPathList$NativeLibraryElement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 97
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_1

    .line 98
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 99
    const-string v4, "dalvik.system.DexPathList"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 105
    :catch_0
    move-exception v3

    goto :goto_1

    .line 103
    :catch_1
    move-exception v3

    .line 107
    nop

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    const-string v0, "dexPathList field not found."

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 173
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/File;

    if-ne v3, v4, :cond_0

    .line 175
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 176
    return-object v2

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    const-string v0, "nativeLibraryDirectories field not found."

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    .line 149
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    return-object v2

    .line 148
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " field not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 184
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 186
    const-string v1, "addDexPath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    nop

    .line 192
    return-void

    .line 190
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "addDexPath method not found."

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 116
    const-string v0, "dexElements"

    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {p0, p1, v0, v1}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 122
    const-string p2, "nativeLibraryPathElements"

    const-string v0, "dalvik.system.DexPathList$NativeLibraryElement"

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 124
    const-string p2, "nativeLibraryPathElements"

    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p0, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 132
    invoke-static {p1, p2, p3}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 135
    invoke-static {p0, p2, p3}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 136
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 138
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 139
    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    add-int/2addr v3, v1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 141
    aget-object p1, p1, v2

    aput-object p1, p3, v2

    .line 142
    array-length p1, v0

    invoke-static {v0, v2, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    .line 165
    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v1

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/io/File;

    .line 166
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 167
    array-length p1, v1

    invoke-static {v1, v2, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z
    .locals 6

    .line 38
    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 39
    :cond_0
    return v0

    .line 42
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    nop

    .line 45
    const/4 v2, 0x1

    if-nez p0, :cond_3

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge p1, v3, :cond_2

    .line 47
    invoke-static {v1, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    return v2

    .line 50
    :cond_2
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 51
    const/4 p4, 0x0

    .line 55
    move-object v5, p4

    move-object p4, p1

    move-object p1, v5

    goto :goto_0

    :cond_3
    move-object p4, p0

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_7

    .line 56
    nop

    .line 57
    if-nez p1, :cond_4

    .line 58
    new-instance p1, Ldalvik/system/PathClassLoader;

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {p1, p4, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 60
    :cond_4
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {v3, p4, p1, p2, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    move-object p1, v3

    :goto_1
    invoke-static {p1}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    .line 65
    if-eqz p0, :cond_5

    .line 66
    invoke-static {v1, p1}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :cond_5
    if-eqz p2, :cond_6

    .line 69
    invoke-static {v1, p1, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :cond_6
    goto :goto_2

    .line 72
    :cond_7
    if-eqz p4, :cond_8

    .line 73
    invoke-static {p3, p4}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 75
    :cond_8
    if-eqz p2, :cond_9

    .line 76
    invoke-static {p3, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_9
    :goto_2
    return v2

    .line 90
    :catch_0
    move-exception p0

    .line 91
    const-string p1, "ModuleClassLoader"

    const-string p2, "Invocation target"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 88
    :catch_1
    move-exception p0

    .line 89
    const-string p1, "ModuleClassLoader"

    const-string p2, "no method found"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 86
    :catch_2
    move-exception p0

    .line 87
    const-string p1, "ModuleClassLoader"

    const-string p2, "No field found"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 84
    :catch_3
    move-exception p0

    .line 85
    const-string p1, "ModuleClassLoader"

    const-string p2, "No class found"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 82
    :catch_4
    move-exception p0

    .line 83
    const-string p1, "ModuleClassLoader"

    const-string p2, "Illegal access"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 80
    :catch_5
    move-exception p0

    .line 81
    const-string p1, "ModuleClassLoader"

    const-string p2, "Illegal arguments"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_3
    nop

    .line 93
    :goto_4
    return v0
.end method

.method private static b(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 196
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    const-string v1, "addNativePath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Collection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    nop

    .line 204
    return-void

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "addNativePath method not found."

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
