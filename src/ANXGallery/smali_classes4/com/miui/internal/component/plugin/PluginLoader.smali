.class public Lcom/miui/internal/component/plugin/PluginLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final eb:Ljava/lang/String; = "plugins-opt"

.field private static final ec:Ljava/lang/String; = ".apk"

.field private static final ed:Ljava/lang/String; = ".xml"

.field private static final ee:Ljava/lang/String; = "PluginManifest.xml"

.field private static final ef:Ljava/lang/String; = "assets/PluginManifest.xml"

.field private static eg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private static eh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/component/plugin/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ei:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static ej:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dD:Ljava/io/File;

.field private ek:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->eg:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->eh:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginLoader;->ek:Ljava/io/File;

    .line 47
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginLoader;->ek:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "plugins-opt"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginLoader;->dD:Ljava/io/File;

    .line 48
    iget-object p1, p0, Lcom/miui/internal/component/plugin/PluginLoader;->ek:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 49
    iget-object p1, p0, Lcom/miui/internal/component/plugin/PluginLoader;->dD:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 50
    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginLoader;->C()V

    .line 51
    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginLoader;->F()V

    .line 52
    return-void
.end method

.method private C()V
    .locals 8

    .line 55
    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginLoader;->E()V

    .line 56
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginLoader;->ek:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/internal/component/plugin/PluginLoader;->ek:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/os/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    const/4 v5, 0x0

    .line 65
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/miui/internal/component/plugin/PluginParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipEntry;

    const-string v7, "assets/PluginManifest.xml"

    invoke-direct {v5, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v4}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/miui/internal/component/plugin/PluginParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    move-object v5, v6

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_5

    .line 73
    :catch_0
    move-exception v3

    move-object v5, v6

    goto :goto_2

    .line 71
    :catch_1
    move-exception v3

    move-object v5, v6

    goto :goto_3

    .line 69
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0, v4, v3}, Lcom/miui/internal/component/plugin/PluginLoader;->b(Ljava/io/File;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v3

    .line 70
    sget-object v4, Lcom/miui/internal/component/plugin/PluginLoader;->eg:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/miui/internal/component/plugin/PluginParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    if-eqz v5, :cond_3

    .line 78
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    .line 76
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 73
    :catch_2
    move-exception v3

    .line 74
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Lcom/miui/internal/component/plugin/PluginParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    if-eqz v5, :cond_3

    .line 78
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 71
    :catch_3
    move-exception v3

    .line 72
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    if-eqz v5, :cond_3

    .line 78
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 81
    :goto_4
    goto :goto_7

    .line 79
    :catch_4
    move-exception v3

    .line 80
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 76
    :goto_5
    if-eqz v5, :cond_2

    .line 78
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 81
    goto :goto_6

    .line 79
    :catch_5
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    :cond_2
    :goto_6
    throw v0

    .line 60
    :cond_3
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 86
    :cond_4
    return-void
.end method

.method private E()V
    .locals 5

    .line 89
    nop

    .line 90
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/component/plugin/PluginContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "PluginManifest.xml"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/miui/internal/component/plugin/PluginLoader;->a(Ljava/io/InputStream;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/miui/internal/component/plugin/PluginParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    move-object v1, v2

    :cond_0
    :goto_0
    goto :goto_1

    .line 99
    :catch_0
    move-exception v2

    .line 100
    invoke-virtual {v2}, Lcom/miui/internal/component/plugin/PluginParseException;->printStackTrace()V

    goto :goto_1

    .line 97
    :catch_1
    move-exception v2

    goto :goto_0

    .line 102
    :goto_1
    if-nez v1, :cond_1

    .line 103
    new-instance v1, Lcom/miui/internal/component/plugin/Plugin;

    invoke-direct {v1}, Lcom/miui/internal/component/plugin/Plugin;-><init>()V

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/component/plugin/Plugin;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/component/plugin/Plugin;->setGroup(Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/miui/internal/component/plugin/AccessPermission;->PRIVATE:Lcom/miui/internal/component/plugin/AccessPermission;

    invoke-virtual {v1, v2}, Lcom/miui/internal/component/plugin/Plugin;->setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V

    .line 108
    :cond_1
    sget-object v2, Lcom/miui/internal/component/plugin/PluginLoader;->eg:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v2, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private F()V
    .locals 6

    .line 125
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->eg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/miui/internal/component/plugin/PluginLoader;->eg:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/component/plugin/Plugin;

    .line 127
    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Plugin;->getExtensions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 128
    sget-object v4, Lcom/miui/internal/component/plugin/PluginLoader;->eh:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 129
    if-nez v4, :cond_0

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    sget-object v5, Lcom/miui/internal/component/plugin/PluginLoader;->eh:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/miui/internal/component/plugin/PluginManifestParser;

    invoke-direct {v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;-><init>()V

    .line 119
    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginManifestParser;->parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p2}, Lcom/miui/internal/component/plugin/Plugin;->setFile(Ljava/io/File;)V

    .line 121
    return-object p1
.end method

.method private a(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;
    .locals 4

    .line 158
    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginLoader;->dD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v3, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method private a(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 6

    .line 198
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    nop

    .line 212
    return-void

    .line 208
    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 210
    new-instance p2, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke asset manager encounter an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 205
    :catch_1
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 207
    new-instance p2, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke asset manager encounter an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 202
    :catch_2
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 204
    new-instance p2, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke asset manager encounter an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 199
    :catch_3
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 201
    new-instance p2, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke asset manager encounter an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private b(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;
    .locals 3

    .line 175
    nop

    .line 177
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 178
    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/component/plugin/PluginLoader;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getDependencies()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/component/plugin/Dependency;

    .line 180
    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Dependency;->isResourcesRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lcom/miui/internal/component/plugin/PluginLoader;->eg:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Dependency;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/component/plugin/Plugin;

    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/Plugin;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/component/plugin/PluginLoader;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 183
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/PluginContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 185
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    nop

    .line 193
    return-object v1

    .line 189
    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 191
    new-instance v0, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke asset manager encounter an error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :catch_1
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 188
    new-instance v0, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke asset manager encounter an error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/io/File;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/component/plugin/PluginLoader;->a(Ljava/io/InputStream;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getClassLoader(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;
    .locals 4

    .line 147
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sget-object v1, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->a(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ei:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    return-object p1
.end method

.method public getPlugins(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/component/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->eh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;
    .locals 4

    .line 164
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    sget-object v1, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->b(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 171
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->ej:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    return-object p1
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1

    .line 139
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->eh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
