.class public Lcom/xiaomi/push/service/ServiceConfig;
.super Ljava/lang/Object;
.source "ServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/ServiceConfig$Listener;
    }
.end annotation


# static fields
.field private static sDeviceUUID:Ljava/lang/String;

.field private static sInstance:Lcom/xiaomi/push/service/ServiceConfig;


# instance fields
.field private mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/ServiceConfig$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFetchTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/xiaomi/push/service/ServiceConfig;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ServiceConfig;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/ServiceConfig;->sInstance:Lcom/xiaomi/push/service/ServiceConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mListener:Ljava/util/List;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/ServiceConfig;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceConfig;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/push/service/ServiceConfig;Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceConfig;
    .param p1, "x1"    # Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/ServiceConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceConfig;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceConfig;->save()V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaomi/push/service/ServiceConfig;Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceConfig;
    .param p1, "x1"    # Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/push/service/ServiceConfig;->mPendingFetchTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/push/service/ServiceConfig;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceConfig;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mListener:Ljava/util/List;

    return-object v0
.end method

.method private checkLoad()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceConfig;->load()V

    .line 77
    :cond_0
    return-void
.end method

.method private fetchConfig()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mPendingFetchTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/ServiceConfig$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ServiceConfig$1;-><init>(Lcom/xiaomi/push/service/ServiceConfig;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mPendingFetchTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .line 174
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mPendingFetchTask:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    invoke-static {v0}, Lcom/xiaomi/smack/util/TaskExecutor;->execute(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDeviceUUID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    const-class v2, Lcom/xiaomi/push/service/ServiceConfig;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 121
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "XMPushServiceConfig"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "DeviceUUID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;

    .line 124
    sget-object v1, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;

    .line 126
    sget-object v1, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "DeviceUUID"

    sget-object v4, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/ServiceConfig;->sDeviceUUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getInstance()Lcom/xiaomi/push/service/ServiceConfig;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/push/service/ServiceConfig;->sInstance:Lcom/xiaomi/push/service/ServiceConfig;

    return-object v0
.end method

.method private load()V
    .locals 8

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "br":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 181
    .local v2, "ctx":Landroid/content/Context;
    const-string v6, "XMCloudCfg"

    invoke-virtual {v2, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 182
    .local v4, "fin":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v0    # "br":Ljava/io/BufferedInputStream;
    .local v1, "br":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v5

    .line 184
    .local v5, "input":Lcom/google/protobuf/micro/CodedInputStreamMicro;
    invoke-static {v5}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    .line 185
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 192
    .end local v1    # "br":Ljava/io/BufferedInputStream;
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "input":Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .restart local v0    # "br":Ljava/io/BufferedInputStream;
    :goto_0
    iget-object v6, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    if-nez v6, :cond_0

    .line 193
    new-instance v6, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    invoke-direct {v6}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;-><init>()V

    iput-object v6, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    .line 195
    :cond_0
    return-void

    .line 186
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load config failure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v0    # "br":Ljava/io/BufferedInputStream;
    .restart local v1    # "br":Ljava/io/BufferedInputStream;
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedInputStream;
    .restart local v0    # "br":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 186
    .end local v0    # "br":Ljava/io/BufferedInputStream;
    .restart local v1    # "br":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedInputStream;
    .restart local v0    # "br":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private save()V
    .locals 7

    .prologue
    .line 200
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    if-eqz v5, :cond_0

    .line 201
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 202
    .local v1, "ctx":Landroid/content/Context;
    const-string v5, "XMCloudCfg"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 203
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v0, "bw":Ljava/io/BufferedOutputStream;
    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v4

    .line 205
    .local v4, "out":Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    iget-object v5, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    invoke-virtual {v5, v4}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 206
    invoke-virtual {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    .line 207
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0    # "bw":Ljava/io/BufferedOutputStream;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save config failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaomi/push/service/ServiceConfig$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/push/service/ServiceConfig$Listener;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clear()V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfig()Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceConfig;->checkLoad()V

    .line 89
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    return-object v0
.end method

.method getConfigVersion()I
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceConfig;->checkLoad()V

    .line 81
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceConfig;->mConfig:Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getConfigVersion()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handle(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)V
    .locals 5
    .param p1, "config"    # Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasCloudVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getCloudVersion()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/push/service/ServiceConfig;->getConfigVersion()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceConfig;->fetchConfig()V

    .line 97
    :cond_0
    const/4 v2, 0x0

    .line 98
    .local v2, "listeners":[Lcom/xiaomi/push/service/ServiceConfig$Listener;
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/ServiceConfig;->mListener:Ljava/util/List;

    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceConfig;->mListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/xiaomi/push/service/ServiceConfig$Listener;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lcom/xiaomi/push/service/ServiceConfig$Listener;

    move-object v2, v0

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 103
    .local v1, "listener":Lcom/xiaomi/push/service/ServiceConfig$Listener;
    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/ServiceConfig$Listener;->onConfigMsgReceive(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "listener":Lcom/xiaomi/push/service/ServiceConfig$Listener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 105
    :cond_1
    return-void
.end method
