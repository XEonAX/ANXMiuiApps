.class Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;
.super Ljava/lang/Object;
.source "MIPushCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final crashFilterByPkgName:[Ljava/lang/String;

.field private static final mObject:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mObject:Ljava/lang/Object;

    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.xiaomi.channel.commonutils"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.common.logger"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.xiaomi.measite.smack"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.xiaomi.metoknlp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.xiaomi.mipush.sdk"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.xiaomi.network"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.xiaomi.push"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.xiaomi.slim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.xiaomi.smack"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.xiaomi.stats"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.xiaomi.tinyData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.xiaomi.xmpush.thrift"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.xiaomi.clientreport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->crashFilterByPkgName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->updateUploadTimeStamp()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method private canUploadCrash()Z
    .locals 10

    .prologue
    .line 168
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    const-string v7, "mipush_extra"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 169
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/network/Network;->isUsingMobileDataConnection(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ConfigKey;->Crash4GUploadSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    const/4 v6, 0x0

    .line 194
    :goto_0
    return v6

    .line 174
    :cond_0
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ConfigKey;->Crash4GUploadFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 175
    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v7

    const/16 v8, 0xe10

    .line 174
    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 177
    .local v0, "crash4GUploadPeriod":I
    const/16 v6, 0xe10

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 179
    .local v2, "currentTimeStamp":J
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "last_crash_upload_time_stamp"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 180
    .local v4, "lastUploadCrashTimeStamp":J
    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-float v6, v6

    int-to-float v7, v0

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 184
    .end local v0    # "crash4GUploadPeriod":I
    .end local v2    # "currentTimeStamp":J
    .end local v4    # "lastUploadCrashTimeStamp":J
    :cond_2
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 185
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ConfigKey;->CrashWIFIUploadFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 186
    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v7

    const/16 v8, 0x708

    .line 185
    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v1

    .line 188
    .local v1, "crashWIFIUploadPeriod":I
    const/16 v6, 0x3c

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 190
    .restart local v2    # "currentTimeStamp":J
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "last_crash_upload_time_stamp"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 191
    .restart local v4    # "lastUploadCrashTimeStamp":J
    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 194
    .end local v1    # "crashWIFIUploadPeriod":I
    .end local v2    # "currentTimeStamp":J
    .end local v4    # "lastUploadCrashTimeStamp":J
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private filterCrashByPkgName(ZLjava/lang/String;)Z
    .locals 5
    .param p1, "isFromMiPush"    # Z
    .param p2, "crashStackTraceElement"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v2, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->crashFilterByPkgName:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 132
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    const/4 p1, 0x1

    .line 136
    .end local v0    # "str":Ljava/lang/String;
    .end local p1    # "isFromMiPush":Z
    :cond_0
    return p1

    .line 131
    .restart local v0    # "str":Ljava/lang/String;
    .restart local p1    # "isFromMiPush":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCrashContent(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 148
    .local v1, "crashStackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const/4 v3, 0x0

    .line 153
    .local v3, "isFromMiPush":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 154
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "crashStackTraceElement":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->filterCrashByPkgName(ZLjava/lang/String;)Z

    move-result v3

    .line 156
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "crashStackTraceElement":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_1
    const-string v5, ""

    goto :goto_1
.end method

.method private getCrashSummary(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 119
    .local v0, "crashStackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "crashSummary":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const-string v4, ""

    .line 127
    :goto_1
    return-object v4

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleCrash(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->getCrashContent(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "crashContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->getCrashSummary(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "crashSummary":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/CrashStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/CrashStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mipush/sdk/CrashStorage;->writeCrash2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->canUploadCrash()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->uploadCrash()V

    goto :goto_0
.end method

.method private updateUploadTimeStamp()V
    .locals 6

    .prologue
    .line 252
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    const-string v2, "mipush_extra"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 253
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_crash_upload_time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 256
    return-void
.end method

.method private uploadCrash()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;-><init>(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-direct {p0, p2}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->handleCrash(Ljava/lang/Throwable;)V

    .line 75
    sget-object v2, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 88
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 86
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
