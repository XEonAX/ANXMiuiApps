.class Lcom/xiaomi/analytics/internal/SdkManager$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/SdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/SdkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/UpdateManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/analytics/internal/UpdateManager;->needCheckUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$1;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/UpdateManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/UpdateManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/analytics/internal/UpdateManager;->checkUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SdkManager"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mUpdateChecker exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
