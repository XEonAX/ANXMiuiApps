.class final Lcom/xiaomi/scanner/stats/UsageStatistics$2;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$param:Ljava/util/Map;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1

    .prologue
    .line 256
    iput-object p1, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$category:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$event:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$value:J

    iput-object p5, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$param:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$category:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$event:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$value:J

    iget-object v3, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$2;->val$param:Ljava/util/Map;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
