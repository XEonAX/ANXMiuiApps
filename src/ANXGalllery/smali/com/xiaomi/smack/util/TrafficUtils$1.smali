.class final Lcom/xiaomi/smack/util/TrafficUtils$1;
.super Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.source "TrafficUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smack/util/TrafficUtils;->saveTraffic(Landroid/content/Context;Ljava/lang/String;JZJ)V
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
    .line 148
    iput-object p1, p0, Lcom/xiaomi/smack/util/TrafficUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    invoke-static {}, Lcom/xiaomi/smack/util/TrafficUtils;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 154
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/smack/util/TrafficUtils;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    :try_start_1
    invoke-static {}, Lcom/xiaomi/smack/util/TrafficUtils;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 156
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    iget-object v2, p0, Lcom/xiaomi/smack/util/TrafficUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/xiaomi/smack/util/TrafficUtils;->access$200(Landroid/content/Context;Ljava/util/List;)V

    .line 158
    return-void

    .line 156
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    .restart local v0    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    .restart local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    .restart local v0    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    goto :goto_0
.end method
