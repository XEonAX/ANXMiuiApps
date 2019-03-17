.class Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;
.super Ljava/lang/Object;
.source "ScheduledJobManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation


# instance fields
.field job:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)V
    .locals 0
    .param p1, "job"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;->job:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;

    .line 40
    return-void
.end method


# virtual methods
.method onJobDone()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method onJobStart()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;->onJobStart()V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;->job:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;->run()V

    .line 46
    invoke-virtual {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;->onJobDone()V

    .line 47
    return-void
.end method
