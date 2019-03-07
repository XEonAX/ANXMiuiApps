.class Lcom/xiaomi/analytics/internal/Debugger$1;
.super Landroid/content/BroadcastReceiver;
.source "Debugger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/Debugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/Debugger;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/Debugger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/internal/Debugger;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/Debugger$1;->this$0:Lcom/xiaomi/analytics/internal/Debugger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    if-nez p2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Debugger"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sput-boolean v5, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sput-boolean v4, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    goto :goto_0

    .line 70
    :cond_3
    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    sput-boolean v5, Lcom/xiaomi/analytics/internal/Debugger;->sUseStaging:Z

    goto :goto_0

    .line 72
    :cond_4
    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sput-boolean v4, Lcom/xiaomi/analytics/internal/Debugger;->sUseStaging:Z

    goto :goto_0
.end method
