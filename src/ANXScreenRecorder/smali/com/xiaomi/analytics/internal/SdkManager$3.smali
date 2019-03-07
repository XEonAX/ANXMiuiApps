.class Lcom/xiaomi/analytics/internal/SdkManager$3;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;


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
    .line 320
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApkUpdated(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "forceUpgrade"    # Z

    .prologue
    .line 324
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v1

    if-nez v1, :cond_2

    .line 325
    const-string v1, "SdkManager"

    const-string v2, "download finished, use new analytics."

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    .line 327
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 331
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 337
    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->isForeground(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
