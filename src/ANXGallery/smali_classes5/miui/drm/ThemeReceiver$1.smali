.class Lmiui/drm/ThemeReceiver$1;
.super Ljava/lang/Object;
.source "ThemeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/drm/ThemeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/drm/ThemeReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/drm/ThemeReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/drm/ThemeReceiver;

    .line 43
    iput-object p1, p0, Lmiui/drm/ThemeReceiver$1;->this$0:Lmiui/drm/ThemeReceiver;

    iput-object p2, p0, Lmiui/drm/ThemeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 47
    :try_start_0
    invoke-static {}, Lmiui/drm/ThemeReceiver;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "location":Ljava/lang/String;
    iget-object v2, p0, Lmiui/drm/ThemeReceiver$1;->this$0:Lmiui/drm/ThemeReceiver;

    iget-object v3, p0, Lmiui/drm/ThemeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lmiui/drm/ThemeReceiver;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v3, v1, v4}, Lmiui/drm/ThemeReceiver;->access$100(Lmiui/drm/ThemeReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string v0, "drm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore default theme in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lmiui/content/res/ThemeRuntimeManager;

    iget-object v2, p0, Lmiui/drm/ThemeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/content/res/ThemeRuntimeManager;->restoreDefault()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 53
    .end local v1    # "location":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "drm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check theme drm occur exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
