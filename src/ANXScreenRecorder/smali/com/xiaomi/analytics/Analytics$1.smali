.class Lcom/xiaomi/analytics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/analytics/Analytics;->getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/Analytics;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/Analytics;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xiaomi/analytics/Analytics$1;->this$0:Lcom/xiaomi/analytics/Analytics;

    iput p2, p0, Lcom/xiaomi/analytics/Analytics$1;->val$timeout:I

    iput-object p3, p0, Lcom/xiaomi/analytics/Analytics$1;->val$configKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/xiaomi/analytics/Analytics$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    .local v2, "time":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget v6, p0, Lcom/xiaomi/analytics/Analytics$1;->val$timeout:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/xiaomi/analytics/Analytics$1;->this$0:Lcom/xiaomi/analytics/Analytics;

    invoke-static {v4}, Lcom/xiaomi/analytics/Analytics;->access$000(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    .line 111
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    if-eqz v0, :cond_1

    .line 112
    iget-object v4, p0, Lcom/xiaomi/analytics/Analytics$1;->val$configKey:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getClientExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "extra":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/analytics/Analytics$1;->val$configKey:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->isPolicyReady(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v1    # "extra":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 117
    .restart local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_1
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 119
    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
