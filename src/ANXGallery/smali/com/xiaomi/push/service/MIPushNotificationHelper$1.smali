.class final Lcom/xiaomi/push/service/MIPushNotificationHelper$1;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "MIPushNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyPushMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nm:Landroid/app/NotificationManager;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(ILandroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 370
    iput p1, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;->val$notificationId:I

    iput-object p2, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;->val$nm:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;->val$notificationId:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;->val$nm:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;->val$notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 379
    return-void
.end method
