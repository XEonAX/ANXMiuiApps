.class public Lcom/xiaomi/mipush/sdk/OperatePushHelper;
.super Ljava/lang/Object;
.source "OperatePushHelper.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/mipush/sdk/OperatePushHelper;


# instance fields
.field private appContext:Landroid/content/Context;

.field private operateMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mipush/sdk/MessageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->sInstance:Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->appContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->appContext:Landroid/content/Context;

    .line 31
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->sInstance:Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->sInstance:Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->sInstance:Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->sInstance:Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRetryCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    monitor-enter v3

    .line 93
    :try_start_0
    new-instance v1, Lcom/xiaomi/mipush/sdk/MessageBean;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/MessageBean;-><init>()V

    .line 94
    .local v1, "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    iput-object p1, v1, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MessageBean;

    .line 97
    .local v0, "mb":Lcom/xiaomi/mipush/sdk/MessageBean;
    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MessageBean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget v2, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->count:I

    monitor-exit v3

    .line 102
    .end local v0    # "mb":Lcom/xiaomi/mipush/sdk/MessageBean;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 103
    .end local v1    # "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/RetryType;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->appContext:Landroid/content/Context;

    const-string v3, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/RetryType;->name()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "synKey":Ljava/lang/String;
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 133
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "synKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public increaseRetryCount(Ljava/lang/String;)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    monitor-enter v4

    .line 68
    :try_start_0
    new-instance v2, Lcom/xiaomi/mipush/sdk/MessageBean;

    invoke-direct {v2}, Lcom/xiaomi/mipush/sdk/MessageBean;-><init>()V

    .line 69
    .local v2, "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    iput-object p1, v2, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mipush/sdk/MessageBean;

    .line 72
    .local v1, "mb":Lcom/xiaomi/mipush/sdk/MessageBean;
    invoke-virtual {v2, v1}, Lcom/xiaomi/mipush/sdk/MessageBean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    move-object v2, v1

    .line 78
    .end local v1    # "mb":Lcom/xiaomi/mipush/sdk/MessageBean;
    :cond_1
    iget v3, v2, Lcom/xiaomi/mipush/sdk/MessageBean;->count:I

    add-int/lit8 v0, v3, 0x1

    .line 79
    .local v0, "count":I
    iput v0, v2, Lcom/xiaomi/mipush/sdk/MessageBean;->count:I

    .line 80
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v4

    .line 83
    return-void

    .line 82
    .end local v0    # "count":I
    .end local v2    # "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isMessageOperating(Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    monitor-enter v2

    .line 123
    :try_start_0
    new-instance v0, Lcom/xiaomi/mipush/sdk/MessageBean;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MessageBean;-><init>()V

    .line 124
    .local v0, "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    monitor-exit v2

    .line 128
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 129
    .end local v0    # "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/RetryType;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->appContext:Landroid/content/Context;

    const-string v3, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/RetryType;->name()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "synKey":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 139
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "synKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeOperateMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    monitor-enter v2

    .line 113
    :try_start_0
    new-instance v0, Lcom/xiaomi/mipush/sdk/MessageBean;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MessageBean;-><init>()V

    .line 114
    .local v0, "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    monitor-exit v2

    .line 119
    return-void

    .line 118
    .end local v0    # "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetOperateMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    monitor-enter v2

    .line 51
    :try_start_0
    new-instance v0, Lcom/xiaomi/mipush/sdk/MessageBean;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MessageBean;-><init>()V

    .line 52
    .local v0, "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->count:I

    .line 53
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->operateMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v2

    .line 59
    return-void

    .line 58
    .end local v0    # "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
