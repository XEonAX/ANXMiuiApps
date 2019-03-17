.class public Lcom/xiaomi/mipush/sdk/ClientReportHelper;
.super Ljava/lang/Object;
.source "ClientReportHelper.java"


# direct methods
.method public static sendConfigInfo(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/xiaomi/clientreport/data/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/clientreport/data/Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action_cr_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "action_cr_event_switch"

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    const-string v1, "action_cr_event_frequency"

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 29
    const-string v1, "action_cr_perf_switch"

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    const-string v1, "action_cr_perf_frequency"

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 31
    const-string v1, "action_cr_event_en"

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const-string v1, "action_cr_max_file_size"

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getMaxFileLength()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendDataCommon(Landroid/content/Intent;)V

    goto :goto_0
.end method
