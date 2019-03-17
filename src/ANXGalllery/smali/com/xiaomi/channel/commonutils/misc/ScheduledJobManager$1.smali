.class Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;
.source "ScheduledJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    .param p2, "job"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;->this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    iput-object p3, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;->val$key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;-><init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)V

    return-void
.end method


# virtual methods
.method onJobDone()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;->this$0:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->access$000(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;->val$key:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method onJobStart()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;->onJobStart()V

    .line 117
    return-void
.end method
