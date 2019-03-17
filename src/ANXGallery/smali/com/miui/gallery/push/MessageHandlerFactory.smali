.class public Lcom/miui/gallery/push/MessageHandlerFactory;
.super Ljava/lang/Object;
.source "MessageHandlerFactory.java"


# static fields
.field private static sModuleHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/push/messagehandler/MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    const-string v1, "cloud_control"

    const-class v2, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    const-string v1, "notification"

    const-class v2, Lcom/miui/gallery/push/messagehandler/NotificationMessageHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    const-string v1, "feature_red_dot"

    const-class v2, Lcom/miui/gallery/push/messagehandler/FeatureRedDotMessageHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "story_notification"

    const-class v2, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/miui/gallery/push/messagehandler/MessageHandler;
    .locals 5
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    sget-object v4, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 33
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/push/messagehandler/MessageHandler;>;"
    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/miui/gallery/push/messagehandler/MessageHandler;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :cond_0
    :goto_0
    return-object v3

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAllMessageHandlers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/push/messagehandler/MessageHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/push/messagehandler/MessageHandler;>;"
    sget-object v3, Lcom/miui/gallery/push/MessageHandlerFactory;->sModuleHandlerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 50
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/push/messagehandler/MessageHandler;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/push/messagehandler/MessageHandler;>;"
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    return-object v2
.end method
