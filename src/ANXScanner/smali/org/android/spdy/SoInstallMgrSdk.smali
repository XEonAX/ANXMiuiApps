.class public Lorg/android/spdy/SoInstallMgrSdk;
.super Ljava/lang/Object;
.source "SoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final EventID_SO_INIT:I = 0x5229

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final X86:Ljava/lang/String; = "x86"

.field static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    const-string v2, "CPU_ABI"

    invoke-static {v1, v2}, Lorg/android/spdy/SoInstallMgrSdk;->_getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    const-string v0, "armeabi"

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 10
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 264
    const/4 v4, 0x0

    .line 270
    .local v4, "initSuc":Z
    :try_start_0
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 272
    if-nez p2, :cond_1

    .line 276
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 313
    :goto_1
    return v4

    .line 278
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 279
    .local v6, "runtime":Ljava/lang/Runtime;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/ClassLoader;

    aput-object v8, v0, v7

    .line 280
    .local v0, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/Runtime;

    const-string v8, "load"

    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 281
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 282
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 292
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 301
    .local v2, "e2":Ljava/lang/UnsatisfiedLinkError;
    const/4 v4, 0x0

    .line 303
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1

    .line 307
    .end local v2    # "e2":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v3

    .line 309
    .local v3, "e3":Ljava/lang/Error;
    const/4 v4, 0x0

    .line 310
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 221
    sget-object v0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 222
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 223
    const-string v3, ""

    .line 232
    :goto_0
    return-object v3

    .line 225
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 228
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 58
    sput-object p0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static initSo(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method

.method public static initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 11
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 82
    .local v0, "InitSuc":Z
    if-nez p2, :cond_0

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    if-nez v0, :cond_3

    .line 126
    :try_start_1
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 128
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 129
    .local v7, "res":Z
    if-eqz v7, :cond_1

    .line 195
    .end local v7    # "res":Z
    :goto_2
    return v7

    .line 88
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 89
    .local v8, "runtime":Ljava/lang/Runtime;
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/ClassLoader;

    aput-object v10, v1, v9

    .line 90
    .local v1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v9, Ljava/lang/Runtime;

    const-string v10, "loadLibrary"

    invoke-virtual {v9, v10, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 91
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 98
    .end local v1    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 102
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 106
    .local v4, "e2":Ljava/lang/UnsatisfiedLinkError;
    const/4 v0, 0x0

    .line 108
    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v4    # "e2":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v5

    .line 113
    .local v5, "e3":Ljava/lang/Error;
    const/4 v0, 0x0

    .line 114
    invoke-virtual {v5}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v5    # "e3":Ljava/lang/Error;
    .restart local v7    # "res":Z
    :cond_1
    :try_start_3
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 140
    .end local v7    # "res":Z
    :cond_2
    invoke-static {}, Lorg/android/spdy/SoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "cpuType":Ljava/lang/String;
    const-string v9, "mips"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "x86"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7

    move-result v9

    if-eqz v9, :cond_5

    .line 190
    .end local v2    # "cpuType":Ljava/lang/String;
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    :cond_4
    move v7, v0

    .line 195
    goto :goto_2

    .line 151
    .restart local v2    # "cpuType":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_7

    move-result v0

    goto :goto_3

    .line 153
    :catch_3
    move-exception v3

    .line 155
    .local v3, "e":Ljava/util/zip/ZipException;
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    .line 167
    .end local v2    # "cpuType":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/zip/ZipException;
    :catch_4
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 171
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "cpuType":Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 160
    .local v4, "e2":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_3

    .line 174
    .end local v2    # "cpuType":Ljava/lang/String;
    .end local v4    # "e2":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 176
    .local v4, "e2":Ljava/lang/UnsatisfiedLinkError;
    const/4 v0, 0x0

    .line 178
    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_3

    .line 182
    .end local v4    # "e2":Ljava/lang/UnsatisfiedLinkError;
    :catch_7
    move-exception v5

    .line 184
    .restart local v5    # "e3":Ljava/lang/Error;
    const/4 v0, 0x0

    .line 186
    invoke-virtual {v5}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_3
.end method

.method static isExist(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 254
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .locals 3
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 240
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 248
    :cond_0
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 19
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "lib/armeabi/lib"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 322
    .local v13, "sourcePath":Ljava/lang/String;
    :try_start_0
    const-string v16, ""

    .line 323
    .local v16, "zipPath":Ljava/lang/String;
    sget-object v5, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 324
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_0

    .line 327
    const/16 v17, 0x0

    .line 427
    .end local v5    # "context":Landroid/content/Context;
    .end local v16    # "zipPath":Ljava/lang/String;
    :goto_0
    return v17

    .line 330
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v16    # "zipPath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 331
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 333
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 339
    :cond_1
    new-instance v15, Ljava/util/zip/ZipFile;

    invoke-direct/range {v15 .. v16}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 341
    .local v15, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 343
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 344
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, "path":Ljava/lang/String;
    const-string v17, ".."

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "\\"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "%"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 346
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    if-eqz v17, :cond_2

    .line 350
    const/4 v9, 0x0

    .line 351
    .local v9, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 352
    .local v10, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 353
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/4 v14, 0x0

    .line 358
    .local v14, "total":I
    :try_start_1
    invoke-static/range {p0 .. p1}, Lorg/android/spdy/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {v15, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 362
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "lib"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "bk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 364
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 366
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 369
    .local v3, "buffers":[B
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "realLength":I
    if-lez v12, :cond_5

    .line 371
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0, v12}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    add-int/2addr v14, v12

    goto :goto_1

    .line 379
    :cond_5
    if-eqz v9, :cond_6

    .line 383
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 391
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 392
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 398
    :cond_7
    :goto_3
    if-eqz v10, :cond_8

    .line 399
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 404
    :cond_8
    :goto_4
    if-eqz v15, :cond_9

    .line 406
    :try_start_5
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 407
    const/4 v15, 0x0

    .line 411
    :cond_9
    if-lez v14, :cond_f

    .line 413
    invoke-static/range {p0 .. p2}, Lorg/android/spdy/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result v17

    goto/16 :goto_0

    .line 385
    :catch_0
    move-exception v6

    .line 386
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 422
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "buffers":[B
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "realLength":I
    .end local v14    # "total":I
    .end local v15    # "zf":Ljava/util/zip/ZipFile;
    .end local v16    # "zipPath":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 423
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 427
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 393
    .restart local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "buffers":[B
    .restart local v4    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "realLength":I
    .restart local v14    # "total":I
    .restart local v15    # "zf":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipPath":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 394
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 400
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 401
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 379
    .end local v3    # "buffers":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "realLength":I
    :catchall_0
    move-exception v17

    if-eqz v9, :cond_b

    .line 383
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 391
    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    .line 392
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 398
    :cond_c
    :goto_6
    if-eqz v10, :cond_d

    .line 399
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 404
    :cond_d
    :goto_7
    if-eqz v15, :cond_e

    .line 406
    :try_start_a
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 407
    const/4 v15, 0x0

    :cond_e
    throw v17

    .line 385
    :catch_4
    move-exception v6

    .line 386
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 393
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 394
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 400
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 401
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_7

    .line 418
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "buffers":[B
    .restart local v12    # "realLength":I
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_0
.end method
