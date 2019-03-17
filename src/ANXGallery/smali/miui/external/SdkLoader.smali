.class Lmiui/external/SdkLoader;
.super Ljava/lang/Object;
.source "SdkLoader.java"


# static fields
.field private static final LIB_ELEMENT_TYPE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string v0, "dalvik.system.DexPathList$Element"

    :goto_0
    sput-object v0, Lmiui/external/SdkLoader;->LIB_ELEMENT_TYPE_NAME:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "dalvik.system.DexPathList$NativeLibraryElement"

    goto :goto_0
.end method

.method private static getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 79
    instance-of v4, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v4, :cond_1

    .line 80
    const-class v4, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 81
    .local v1, "field":Ljava/lang/reflect/Field;
    const-string v4, "dalvik.system.DexPathList"

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 85
    :catch_0
    move-exception v4

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/NoSuchFieldException;

    const-string v5, "dexPathList field not found."

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static getElementsField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 8
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 129
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 133
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    return-object v1

    .line 138
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v5, Ljava/lang/NoSuchFieldException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " field not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getNativeLibraryDirectoriesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 7
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 153
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 154
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/io/File;

    if-ne v5, v6, :cond_0

    .line 155
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    return-object v1

    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v5, Ljava/lang/NoSuchFieldException;

    const-string v6, "nativeLibraryDirectories field not found."

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 1
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optimizedDirectoryPath"    # Ljava/lang/String;
    .param p2, "libraryPath"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/external/SdkLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z
    .locals 8
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optimizedDirectoryPath"    # Ljava/lang/String;
    .param p2, "libraryPath"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v4

    .line 37
    :cond_1
    :try_start_0
    invoke-static {p3}, Lmiui/external/SdkLoader;->getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "dexPathList":Ljava/lang/Object;
    move-object v0, p0

    .line 40
    .local v0, "apkPath":Ljava/lang/String;
    if-nez p0, :cond_3

    .line 41
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_2

    .line 42
    invoke-static {v1, p2}, Lmiui/external/SdkLoader;->loadLibBeforeAndroidM(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 46
    const/4 p1, 0x0

    .line 50
    :cond_3
    const/4 v3, 0x0

    .line 51
    .local v3, "oneShotLoader":Ljava/lang/ClassLoader;
    if-nez p1, :cond_6

    .line 52
    new-instance v3, Ldalvik/system/PathClassLoader;

    .end local v3    # "oneShotLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, p2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 57
    .restart local v3    # "oneShotLoader":Ljava/lang/ClassLoader;
    :goto_1
    invoke-static {v3}, Lmiui/external/SdkLoader;->getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "oneShotDexPathList":Ljava/lang/Object;
    if-eqz p0, :cond_4

    .line 60
    invoke-static {v1, v2}, Lmiui/external/SdkLoader;->loadDex(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :cond_4
    if-eqz p2, :cond_5

    .line 63
    invoke-static {v1, v2, p2}, Lmiui/external/SdkLoader;->loadLibrary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move v4, v5

    .line 65
    goto :goto_0

    .line 54
    .end local v2    # "oneShotDexPathList":Ljava/lang/Object;
    :cond_6
    new-instance v3, Ldalvik/system/DexClassLoader;

    .end local v3    # "oneShotLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, p1, p2, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "oneShotLoader":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 72
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "dexPathList":Ljava/lang/Object;
    .end local v3    # "oneShotLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 70
    :catch_1
    move-exception v5

    goto :goto_0

    .line 68
    :catch_2
    move-exception v5

    goto :goto_0

    .line 66
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method private static loadDex(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "oneShotDexPathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "dexElements"

    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {p0, p1, v0, v1}, Lmiui/external/SdkLoader;->replaceElement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private static loadLibBeforeAndroidM(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "libraryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-static {p0}, Lmiui/external/SdkLoader;->getNativeLibraryDirectoriesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 144
    .local v1, "nativeLibraryDirField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    move-object v0, v3

    check-cast v0, [Ljava/io/File;

    .line 145
    .local v0, "files":[Ljava/io/File;
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/io/File;

    .line 146
    .local v2, "newFiles":[Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    .line 147
    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method private static loadLibrary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "oneShotDexPathList"    # Ljava/lang/Object;
    .param p2, "libPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 104
    const-string v0, "nativeLibraryPathElements"

    sget-object v1, Lmiui/external/SdkLoader;->LIB_ELEMENT_TYPE_NAME:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lmiui/external/SdkLoader;->replaceElement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0, p2}, Lmiui/external/SdkLoader;->loadLibBeforeAndroidM(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static replaceElement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "oneShotDexPathList"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 112
    invoke-static {p1, p2, p3}, Lmiui/external/SdkLoader;->getElementsField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 113
    .local v5, "oneShotDexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, [Ljava/lang/Object;

    .line 115
    .local v4, "oneShotDexElements":[Ljava/lang/Object;
    invoke-static {p0, p2, p3}, Lmiui/external/SdkLoader;->getElementsField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 116
    .local v2, "dexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 118
    .local v1, "dexElements":[Ljava/lang/Object;
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    .line 121
    .local v3, "newElements":[Ljava/lang/Object;
    aget-object v6, v4, v8

    aput-object v6, v3, v8

    .line 122
    const/4 v6, 0x1

    array-length v7, v1

    invoke-static {v1, v8, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    return-void
.end method
