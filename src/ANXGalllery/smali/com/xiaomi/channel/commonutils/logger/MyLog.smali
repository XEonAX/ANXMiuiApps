.class public abstract Lcom/xiaomi/channel/commonutils/logger/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static LOG_LEVEL:I

.field private static final NEGATIVE_CODE:Ljava/lang/Integer;

.field private static logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

.field private static final mActionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mStartTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    .line 46
    new-instance v0, Lcom/xiaomi/channel/commonutils/logger/DefaultAndroidLogger;

    invoke-direct {v0}, Lcom/xiaomi/channel/commonutils/logger/DefaultAndroidLogger;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mStartTimes:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mActionNames:Ljava/util/HashMap;

    .line 126
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->NEGATIVE_CODE:Ljava/lang/Integer;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/String;)V

    .line 107
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public static log(ILjava/lang/String;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    sget v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    if-lt p0, v0, :cond_0

    .line 168
    sget-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    sget v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    if-lt p0, v0, :cond_0

    .line 180
    sget-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public static log(ILjava/lang/Throwable;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    sget v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    if-lt p0, v0, :cond_0

    .line 174
    sget-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static pe(Ljava/lang/Integer;)V
    .locals 8
    .param p0, "code"    # Ljava/lang/Integer;

    .prologue
    .line 155
    sget v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    const/4 v6, 0x1

    if-gt v1, v6, :cond_0

    .line 156
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 160
    .local v2, "startTime":J
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mActionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 162
    .local v4, "time":J
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ends in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ps(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 137
    sget v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 138
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 139
    .local v0, "code":Ljava/lang/Integer;
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mStartTimes:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->mActionNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    .line 145
    .end local v0    # "code":Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->NEGATIVE_CODE:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 185
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set log level as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/String;)V

    .line 188
    :cond_1
    sput p0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->LOG_LEVEL:I

    .line 189
    return-void
.end method

.method public static setLogger(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V
    .locals 0
    .param p0, "newLogger"    # Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .prologue
    .line 49
    sput-object p0, Lcom/xiaomi/channel/commonutils/logger/MyLog;->logger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 50
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->log(ILjava/lang/String;)V

    .line 60
    return-void
.end method
