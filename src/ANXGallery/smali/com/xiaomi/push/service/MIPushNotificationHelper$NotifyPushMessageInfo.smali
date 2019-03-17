.class public Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
.super Ljava/lang/Object;
.source "MIPushNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/MIPushNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyPushMessageInfo"
.end annotation


# instance fields
.field public targetPkgName:Ljava/lang/String;

.field public traffic:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->traffic:J

    return-void
.end method
