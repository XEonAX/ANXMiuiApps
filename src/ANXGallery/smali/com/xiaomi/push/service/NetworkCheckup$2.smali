.class final Lcom/xiaomi/push/service/NetworkCheckup$2;
.super Ljava/lang/Object;
.source "NetworkCheckup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/NetworkCheckup;->connectivityTest(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addrs:Ljava/util/List;

.field final synthetic val$all:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/push/service/NetworkCheckup$2;->val$addrs:Ljava/util/List;

    iput-boolean p2, p0, Lcom/xiaomi/push/service/NetworkCheckup$2;->val$all:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 100
    const-string/jumbo v3, "www.baidu.com:80"

    invoke-static {v3}, Lcom/xiaomi/push/service/NetworkCheckup;->access$200(Ljava/lang/String;)Z

    move-result v2

    .line 101
    .local v2, "success":Z
    iget-object v3, p0, Lcom/xiaomi/push/service/NetworkCheckup$2;->val$addrs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "host":Ljava/lang/String;
    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/xiaomi/push/service/NetworkCheckup;->access$200(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v2, v1

    .line 103
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/xiaomi/push/service/NetworkCheckup$2;->val$all:Z

    if-nez v4, :cond_0

    .line 107
    .end local v0    # "host":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_4

    .line 108
    .local v1, "key":I
    :goto_1
    invoke-static {v1}, Lcom/xiaomi/stats/StatsHelper;->count(I)V

    .line 109
    return-void

    .line 102
    .end local v1    # "key":I
    .restart local v0    # "host":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 107
    .end local v0    # "host":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x2

    goto :goto_1
.end method
