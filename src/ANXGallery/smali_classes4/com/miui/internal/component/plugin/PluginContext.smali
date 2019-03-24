.class public Lcom/miui/internal/component/plugin/PluginContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile dX:Lcom/miui/internal/component/plugin/PluginContext;


# instance fields
.field private dW:Lcom/miui/internal/component/plugin/PluginLoader;

.field private dY:Landroid/content/Context;

.field private dZ:Lcom/miui/internal/component/plugin/PluginClassLoader;

.field private ea:Lcom/miui/internal/component/plugin/PluginResourceLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/miui/internal/component/plugin/PluginContext;
    .locals 2

    .line 14
    sget-object v0, Lcom/miui/internal/component/plugin/PluginContext;->dX:Lcom/miui/internal/component/plugin/PluginContext;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/miui/internal/component/plugin/PluginContext;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/miui/internal/component/plugin/PluginContext;->dX:Lcom/miui/internal/component/plugin/PluginContext;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/miui/internal/component/plugin/PluginContext;

    invoke-direct {v1}, Lcom/miui/internal/component/plugin/PluginContext;-><init>()V

    sput-object v1, Lcom/miui/internal/component/plugin/PluginContext;->dX:Lcom/miui/internal/component/plugin/PluginContext;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/internal/component/plugin/PluginContext;->dX:Lcom/miui/internal/component/plugin/PluginContext;

    return-object v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginContext;->dY:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginClassLoader()Lcom/miui/internal/component/plugin/PluginClassLoader;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginContext;->dZ:Lcom/miui/internal/component/plugin/PluginClassLoader;

    return-object v0
.end method

.method public getPluginLoader()Lcom/miui/internal/component/plugin/PluginLoader;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginContext;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    return-object v0
.end method

.method public getPluginResourceLoader()Lcom/miui/internal/component/plugin/PluginResourceLoader;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginContext;->ea:Lcom/miui/internal/component/plugin/PluginResourceLoader;

    return-object v0
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginContext;->dY:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public setPluginClassLoader(Lcom/miui/internal/component/plugin/PluginClassLoader;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginContext;->dZ:Lcom/miui/internal/component/plugin/PluginClassLoader;

    .line 55
    return-void
.end method

.method public setPluginLoader(Lcom/miui/internal/component/plugin/PluginLoader;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginContext;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    .line 47
    return-void
.end method

.method public setPluginResourceLoader(Lcom/miui/internal/component/plugin/PluginResourceLoader;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginContext;->ea:Lcom/miui/internal/component/plugin/PluginResourceLoader;

    .line 63
    return-void
.end method
