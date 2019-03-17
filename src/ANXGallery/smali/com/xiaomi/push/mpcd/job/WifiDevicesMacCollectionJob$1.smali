.class Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;
.super Ljava/lang/Object;
.source "WifiDevicesMacCollectionJob.java"

# interfaces
.implements Lcom/xiaomi/metoknlp/devicediscover/DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;->this$0:Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCollect(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;->this$0:Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    invoke-static {p1}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->access$002(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;->this$0:Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    invoke-static {v1}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->access$200(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;->this$0:Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    invoke-static {v1}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->access$200(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 55
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
