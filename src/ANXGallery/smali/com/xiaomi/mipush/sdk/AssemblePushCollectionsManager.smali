.class public Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;
.super Ljava/lang/Object;
.source "AssemblePushCollectionsManager.java"

# interfaces
.implements Lcom/xiaomi/mipush/sdk/AbstractPushManager;


# static fields
.field private static volatile sInstance:Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;


# instance fields
.field private mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

.field private mContext:Landroid/content/Context;

.field private mManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/mipush/sdk/AssemblePush;",
            "Lcom/xiaomi/mipush/sdk/AbstractPushManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->sInstance:Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->sInstance:Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->sInstance:Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->sInstance:Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initAssemblePushManager()V
    .locals 5

    .prologue
    .line 128
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    if-eqz v2, :cond_7

    .line 130
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenHmsPush()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " HW user switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenHmsPush()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, " HW online switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, " HW isSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v2, Lcom/xiaomi/mipush/sdk/PhoneBrand;->HUAWEI:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->getPhoneBrand(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PhoneBrand;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSEMBLE_PUSH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 140
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenHmsPush()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    .line 141
    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/xiaomi/mipush/sdk/PhoneBrand;->HUAWEI:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->getPhoneBrand(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PhoneBrand;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 143
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->contain(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/PushManagerFactory;->getManager(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->addManager(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AbstractPushManager;)V

    .line 146
    :cond_1
    const-string v2, "hw manager add to list"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 157
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenFCMPush()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const-string v2, " FCM user switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenFCMPush()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, " FCM online switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    const-string v2, " FCM isSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSEMBLE_PUSH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 171
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenFCMPush()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    .line 172
    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isGoogleServiceSatisfied(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 174
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->contain(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 175
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/PushManagerFactory;->getManager(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->addManager(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AbstractPushManager;)V

    .line 177
    :cond_4
    const-string v2, "fcm manager add to list"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 188
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenCOSPush()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const-string v2, " COS user switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenCOSPush()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, " COS online switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, " COS isSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isColorOSPushSupport(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSEMBLE_PUSH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 201
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenCOSPush()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    .line 202
    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->isColorOSPushSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 204
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/PushManagerFactory;->getManager(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->addManager(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AbstractPushManager;)V

    .line 215
    :cond_7
    :goto_2
    return-void

    .line 148
    :cond_8
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->contain(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v0

    .line 150
    .local v0, "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_2

    .line 151
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->removeManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 152
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->unregister()V

    goto/16 :goto_0

    .line 179
    .end local v0    # "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    :cond_9
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->contain(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v0

    .line 181
    .restart local v0    # "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_5

    .line 182
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->removeManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 183
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->unregister()V

    goto/16 :goto_1

    .line 206
    .end local v0    # "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    :cond_a
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->contain(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 207
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v0

    .line 208
    .restart local v0    # "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_7

    .line 209
    sget-object v2, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->removeManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 210
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->unregister()V

    goto :goto_2
.end method


# virtual methods
.method public addManager(Lcom/xiaomi/mipush/sdk/AssemblePush;Lcom/xiaomi/mipush/sdk/AbstractPushManager;)V
    .locals 1
    .param p1, "key"    # Lcom/xiaomi/mipush/sdk/AssemblePush;
    .param p2, "manager"    # Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    .prologue
    .line 55
    if-eqz p2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    return-void
.end method

.method public contain(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z
    .locals 1
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    .locals 1
    .param p1, "managerType"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    return-object v0
.end method

.method public getUserSwitch(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z
    .locals 3
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "result":Z
    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager$1;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 227
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenHmsPush()Z

    move-result v0

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenFCMPush()Z

    move-result v0

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getOpenCOSPush()Z

    move-result v0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public register()V
    .locals 3

    .prologue
    .line 96
    const-string v1, "ASSEMBLE_PUSH : assemble push register"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->initAssemblePushManager()V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    .line 103
    .local v0, "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->register()V

    goto :goto_0

    .line 108
    .end local v0    # "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->checkAssemblePushStatus(Landroid/content/Context;)V

    .line 110
    :cond_3
    return-void
.end method

.method public removeManager(Lcom/xiaomi/mipush/sdk/AssemblePush;)V
    .locals 1
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public setConfiguration(Lcom/xiaomi/mipush/sdk/PushConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/xiaomi/mipush/sdk/PushConfiguration;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mConfiguration:Lcom/xiaomi/mipush/sdk/PushConfiguration;

    .line 47
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 114
    const-string v1, "ASSEMBLE_PUSH : assemble push unregister"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    .line 116
    .local v0, "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->unregister()V

    goto :goto_0

    .line 121
    .end local v0    # "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->mManagers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 122
    return-void
.end method
