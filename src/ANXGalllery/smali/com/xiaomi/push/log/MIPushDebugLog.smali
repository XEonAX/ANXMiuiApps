.class public Lcom/xiaomi/push/log/MIPushDebugLog;
.super Ljava/lang/Object;
.source "MIPushDebugLog.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field private sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

.field private sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V
    .locals 1
    .param p1, "sUserLogInterface"    # Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    .param p2, "sPushLogFileInterface"    # Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 9
    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 12
    iput-object p1, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 13
    iput-object p2, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 14
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    .line 28
    :cond_1
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_1
    return-void
.end method
