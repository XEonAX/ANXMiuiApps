.class Lcom/uploader/implement/UploaderManager$b;
.super Landroid/content/BroadcastReceiver;
.source "UploaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/UploaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uploader/implement/UploaderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uploader/implement/UploaderManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/uploader/implement/UploaderManager;

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 235
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uploader/implement/UploaderManager$b;->a:Ljava/lang/ref/WeakReference;

    .line 236
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 240
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    :try_start_0
    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 247
    .local v1, "isConnected":Z
    :cond_2
    const-string v4, "extraInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    .local v0, "extraInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/UploaderManager;

    .line 252
    .local v2, "manager":Lcom/uploader/implement/UploaderManager;
    if-eqz v2, :cond_0

    .line 256
    invoke-static {v2}, Lcom/uploader/implement/UploaderManager;->b(Lcom/uploader/implement/UploaderManager;)V

    goto :goto_0

    .line 248
    .end local v0    # "extraInfo":Ljava/lang/String;
    .end local v1    # "isConnected":Z
    .end local v2    # "manager":Lcom/uploader/implement/UploaderManager;
    :catch_0
    move-exception v3

    .line 249
    .local v3, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method
