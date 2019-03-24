.class public Lcom/miui/internal/component/plugin/PluginClassLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dW:Lcom/miui/internal/component/plugin/PluginLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/component/plugin/PluginLoader;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginClassLoader;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    .line 15
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/component/plugin/PluginClassLoader;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginClassLoader;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->getPlugins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 28
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/component/plugin/Plugin;

    .line 29
    iget-object v1, p0, Lcom/miui/internal/component/plugin/PluginClassLoader;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v1, v0}, Lcom/miui/internal/component/plugin/PluginLoader;->getClassLoader(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 30
    nop

    .line 33
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/Plugin;->getExtension(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Extension;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/component/plugin/Extension;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    nop

    .line 45
    return-object v1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 43
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access impl of extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed in plugin "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :catch_1
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 40
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init impl of extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed in plugin "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :catch_2
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 37
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no impl of extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found in plugin "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    new-instance v0, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more than one plugin found for extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    new-instance v0, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no plugin found for extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
