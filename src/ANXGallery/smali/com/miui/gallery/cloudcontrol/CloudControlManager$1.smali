.class Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;
.super Landroid/os/AsyncTask;
.source "CloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/CloudControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 91
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$000(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)V

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    .local v2, "start":J
    const/4 v4, 0x0

    aget-object v0, p1, v4

    .line 95
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$100(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Lcom/miui/gallery/cloudcontrol/ProfileCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->load(Landroid/content/Context;)V

    .line 96
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$202(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z

    .line 97
    const-string v4, "CloudControlManager"

    const-string v5, "Load cache costs %d ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4, v8}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$302(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z

    .line 103
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$400(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "start":J
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$100(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Lcom/miui/gallery/cloudcontrol/ProfileCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->notifyAfterLoadFinished()V

    .line 106
    const/4 v4, 0x0

    return-object v4

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$202(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z

    .line 100
    const-string v4, "CloudControlManager"

    const-string v5, "Init failed, what should not happen: %s."

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4, v8}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$302(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z

    .line 103
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$400(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 102
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v5, v8}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$302(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z

    .line 103
    iget-object v5, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;->this$0:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    invoke-static {v5}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->access$400(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4
.end method
