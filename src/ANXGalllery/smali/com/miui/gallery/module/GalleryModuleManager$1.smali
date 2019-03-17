.class Lcom/miui/gallery/module/GalleryModuleManager$1;
.super Ljava/lang/Object;
.source "GalleryModuleManager.java"

# interfaces
.implements Lmiui/module/ModuleManager$ModuleLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/module/GalleryModuleManager;->loadModule(ZLcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/module/GalleryModuleManager;

.field final synthetic val$listener:Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/module/GalleryModuleManager;Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/module/GalleryModuleManager;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    iput-object p2, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->val$listener:Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFail(Ljava/lang/String;I)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 83
    const-string v1, "GalleryModuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load module fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$100(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$100(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.extra_load_module_failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$200(Lcom/miui/gallery/module/GalleryModuleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 90
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$200(Lcom/miui/gallery/module/GalleryModuleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/gallery/module/CacheRepository;->clearCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/module/GalleryModuleManager$1$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/module/GalleryModuleManager$1$2;-><init>(Lcom/miui/gallery/module/GalleryModuleManager$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onLoadFinish()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v1, "GalleryModuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load module success :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$000(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$000(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$000(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$100(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 66
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$100(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.extra_load_module_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1;->this$0:Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {v1}, Lcom/miui/gallery/module/GalleryModuleManager;->access$200(Lcom/miui/gallery/module/GalleryModuleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 71
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/module/GalleryModuleManager$1$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/module/GalleryModuleManager$1$1;-><init>(Lcom/miui/gallery/module/GalleryModuleManager$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void

    .line 64
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 67
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
