.class public Lcom/miui/internal/component/ComponentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ds:Ljava/lang/String; = "plugins"

.field private static final dt:Ljava/lang/String; = "plugins"


# instance fields
.field private du:Landroid/app/Application;

.field private dv:Lmiui/core/Manifest;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lmiui/core/Manifest;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/internal/component/ComponentManager;->du:Landroid/app/Application;

    .line 39
    iput-object p2, p0, Lcom/miui/internal/component/ComponentManager;->dv:Lmiui/core/Manifest;

    .line 40
    return-void
.end method

.method private B()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/miui/internal/component/ComponentManager;->du:Landroid/app/Application;

    invoke-static {v0}, Lmiui/module/ModuleManager;->createInstance(Landroid/app/Application;)Lmiui/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->dv:Lmiui/core/Manifest;

    invoke-virtual {v1}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/module/ModuleManager;->loadModules([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private C()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->du:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setApplicationContext(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/miui/internal/component/ComponentManager;->du:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/miui/internal/component/ComponentManager;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/miui/internal/component/ComponentManager;->du:Landroid/app/Application;

    const-string v2, "plugins"

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/internal/component/ComponentManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 59
    :cond_0
    new-instance v1, Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {v1, v0}, Lcom/miui/internal/component/plugin/PluginLoader;-><init>(Ljava/io/File;)V

    .line 60
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginLoader(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 62
    new-instance v0, Lcom/miui/internal/component/plugin/PluginClassLoader;

    invoke-direct {v0, v1}, Lcom/miui/internal/component/plugin/PluginClassLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 63
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginClassLoader(Lcom/miui/internal/component/plugin/PluginClassLoader;)V

    .line 65
    new-instance v0, Lcom/miui/internal/component/plugin/PluginResourceLoader;

    invoke-direct {v0, v1}, Lcom/miui/internal/component/plugin/PluginResourceLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 66
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginResourceLoader(Lcom/miui/internal/component/plugin/PluginResourceLoader;)V

    .line 67
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    .line 75
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 79
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 82
    invoke-static {v3, v4}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 83
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    :goto_1
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "plugins"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/internal/component/ComponentManager;->B()V

    .line 44
    invoke-direct {p0}, Lcom/miui/internal/component/ComponentManager;->C()V

    .line 45
    return-void
.end method
