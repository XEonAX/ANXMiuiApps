.class final Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;
.super Ljava/lang/Object;
.source "AggregationSDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->uploadCallStack(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 55
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->access$000(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AggregationSdkMonitorDepth:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 58
    .local v0, "callStackDepth":I
    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->access$100(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "callStackStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;->val$context:Landroid/content/Context;

    const-string v2, "monitor_upload"

    const-string v3, "call_stack"

    const-wide/16 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient;->upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 62
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->access$200(Landroid/content/Context;)V

    .line 65
    .end local v0    # "callStackDepth":I
    .end local v6    # "callStackStr":Ljava/lang/String;
    :cond_0
    return-void
.end method
