.class Lcom/xiaomi/analytics/internal/SdkManager$2;
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
    .line 168
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 172
    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$300()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$400(Lcom/xiaomi/analytics/internal/SdkManager;)V

    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "sysAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    const/4 v1, 0x0

    .line 177
    .local v1, "dexAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$500(Lcom/xiaomi/analytics/internal/SdkManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$600()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    :cond_0
    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$700(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 179
    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$800(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    invoke-interface {v4}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    .line 185
    :cond_1
    if-eqz v4, :cond_2

    .line 186
    const-string v7, "SdkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sys version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$600()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 190
    const-string v5, "SdkManager"

    const-string v7, "use system analytics only, so don\'t load asset/local analytics.apk"

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5, v4}, Lcom/xiaomi/analytics/internal/SdkManager;->access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 192
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 193
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5, v6}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    .line 236
    .end local v1    # "dexAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v4    # "sysAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :goto_0
    return-void

    .line 197
    .restart local v1    # "dexAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .restart local v4    # "sysAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v1

    .line 198
    const-string v9, "SdkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "assets analytics null "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_b

    move v7, v6

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v3

    .line 201
    .local v3, "localAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    const-string v7, "SdkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "local analytics null "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v1, :cond_5

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v5

    invoke-interface {v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v5

    if-lez v5, :cond_c

    .line 203
    :cond_5
    const-string v5, "SdkManager"

    const-string v7, "use local analytics."

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object v1, v3

    .line 209
    :cond_6
    :goto_2
    move-object v0, v4

    .line 210
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    if-eqz v0, :cond_7

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v5

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v5

    if-lez v5, :cond_d

    .line 211
    :cond_7
    const-string v5, "SdkManager"

    const-string v7, "use dex analytics."

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    move-object v0, v1

    .line 213
    if-eqz v1, :cond_8

    .line 214
    invoke-interface {v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    .line 216
    :cond_8
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1200(Lcom/xiaomi/analytics/internal/SdkManager;Z)V

    .line 224
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v5

    sget-object v7, Lcom/xiaomi/analytics/internal/Constants;->MIN_CORE_VER:Lcom/xiaomi/analytics/internal/Version;

    invoke-virtual {v5, v7}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v5

    if-ltz v5, :cond_a

    .line 225
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 227
    :cond_a
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1500(Lcom/xiaomi/analytics/internal/SdkManager;)V

    .line 229
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/SdkManager;->access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 230
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5, v6}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    goto/16 :goto_0

    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v3    # "localAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_b
    move v7, v5

    .line 198
    goto/16 :goto_1

    .line 205
    .restart local v3    # "localAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_c
    if-eqz v1, :cond_6

    .line 206
    :try_start_3
    const-string v5, "SdkManager"

    const-string v7, "use assets analytics."

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 230
    .end local v1    # "dexAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v3    # "localAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v4    # "sysAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "SdkManager"

    invoke-static {v5}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "heavy work exception"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5, v6}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    goto/16 :goto_0

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .restart local v1    # "dexAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .restart local v3    # "localAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .restart local v4    # "sysAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_d
    if-eqz v4, :cond_9

    .line 218
    :try_start_6
    const-string v5, "SdkManager"

    const-string v7, "use sys analytics."

    invoke-static {v5, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5, v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1302(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 221
    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v5}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1400(Lcom/xiaomi/analytics/internal/SdkManager;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 234
    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v1    # "dexAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v3    # "localAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v4    # "sysAnalytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v7, v6}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    throw v5
.end method
