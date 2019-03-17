.class public abstract Lcom/xiaomi/push/service/Sync$SyncJob;
.super Ljava/lang/Object;
.source "Sync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncJob"
.end annotation


# instance fields
.field group:Ljava/lang/String;

.field period:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "period"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaomi/push/service/Sync$SyncJob;->group:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lcom/xiaomi/push/service/Sync$SyncJob;->period:J

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 56
    invoke-static {}, Lcom/xiaomi/push/service/Sync;->access$000()Lcom/xiaomi/push/service/Sync;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/xiaomi/push/service/Sync;->access$000()Lcom/xiaomi/push/service/Sync;

    move-result-object v1

    iget-object v0, v1, Lcom/xiaomi/push/service/Sync;->mContext:Landroid/content/Context;

    .line 58
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/push/service/Sync;->access$000()Lcom/xiaomi/push/service/Sync;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/Sync;->access$100(Lcom/xiaomi/push/service/Sync;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":ts-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/Sync$SyncJob;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/push/service/Sync$SyncJob;->period:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 63
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/DebugUtils;->isTesting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/Sync;->access$000()Lcom/xiaomi/push/service/Sync;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/Sync;->access$100(Lcom/xiaomi/push/service/Sync;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":ts-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/Sync$SyncJob;->group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 64
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/push/service/Sync;->access$000()Lcom/xiaomi/push/service/Sync;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/Sync$SyncJob;->sync(Lcom/xiaomi/push/service/Sync;)V

    goto :goto_0
.end method

.method abstract sync(Lcom/xiaomi/push/service/Sync;)V
.end method
