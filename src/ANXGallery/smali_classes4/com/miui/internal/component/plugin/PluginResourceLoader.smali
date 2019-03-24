.class public Lcom/miui/internal/component/plugin/PluginResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dW:Lcom/miui/internal/component/plugin/PluginLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/component/plugin/PluginLoader;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    .line 17
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/Class;)Landroid/content/res/Resources;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/component/plugin/PluginResourceLoader;->lookup(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->getPlugins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 30
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/component/plugin/Plugin;

    .line 31
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->dW:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->getResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;

    move-result-object p1

    .line 32
    return-object p1

    .line 28
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

    .line 26
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
