.class public Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;
.super Ljava/lang/Object;
.source "MiTinyDataClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiTinyDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiTinyDataClientImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPushServiceAcceptTinyData:Ljava/lang/Boolean;

.field private mSmoothSender:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;-><init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mSmoothSender:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addToPendingList(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    :cond_0
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkSupportTinyData(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 162
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->shouldUseMIUIPush()Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 168
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.xiaomi.xmsf"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 170
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_2

    move v3, v4

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x6c

    if-ge v5, v6, :cond_0

    move v3, v4

    .line 174
    goto :goto_0

    .line 176
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v3, v4

    .line 177
    goto :goto_0
.end method

.method public static getInstance()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->sInstance:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    if-nez v0, :cond_1

    .line 103
    const-class v1, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->sInstance:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->sInstance:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->sInstance:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private missingAppId(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->checkSupportTinyData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upload(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-static {p1, v0}, Lcom/xiaomi/push/service/TinyDataHelper;->verify(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :goto_0
    return v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPushServiceAcceptTinyData:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient Send item by PushServiceClient.sendTinyData(ClientUploadDataItem)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendTinyData(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 258
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mSmoothSender:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->add(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    goto :goto_1
.end method


# virtual methods
.method public alreadyInit()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string v0, "context is null, MiTinyDataClientImp.init() failed."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->checkSupportTinyData(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPushServiceAcceptTinyData:Ljava/lang/Boolean;

    .line 125
    const-string v0, "com.xiaomi.xmpushsdk.tinydataPending.init"

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->processPendingList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processPendingList(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiTinyDataClient.processPendingList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 146
    .local v0, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->processUploadRequest(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z

    goto :goto_0

    .line 144
    .end local v0    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 148
    :cond_0
    return-void
.end method

.method public declared-synchronized processUploadRequest(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    .locals 8
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    monitor-enter p0

    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 191
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, v5}, Lcom/xiaomi/push/service/TinyDataHelper;->verify(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mChannel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v4

    .line 196
    .local v1, "missChannel":Z
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->alreadyInit()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v4

    .line 197
    .local v2, "needInit":Z
    :goto_2
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->missingAppId(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    move v0, v4

    .line 198
    .local v0, "missAppId":Z
    :goto_3
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_a

    .line 199
    :cond_3
    if-eqz v1, :cond_8

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiTinyDataClient Pending "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "com.xiaomi.xmpushsdk.tinydataPending.channel"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 207
    :cond_4
    :goto_4
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->addToPendingList(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    move v3, v4

    .line 208
    goto :goto_0

    .end local v0    # "missAppId":Z
    .end local v1    # "missChannel":Z
    .end local v2    # "needInit":Z
    :cond_5
    move v1, v3

    .line 195
    goto :goto_1

    .restart local v1    # "missChannel":Z
    :cond_6
    move v2, v3

    .line 196
    goto :goto_2

    .restart local v2    # "needInit":Z
    :cond_7
    move v0, v3

    .line 197
    goto :goto_3

    .line 201
    .restart local v0    # "missAppId":Z
    :cond_8
    if-eqz v2, :cond_9

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiTinyDataClient Pending "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "com.xiaomi.xmpushsdk.tinydataPending.init"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 187
    .end local v0    # "missAppId":Z
    .end local v1    # "missChannel":Z
    .end local v2    # "needInit":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 203
    .restart local v0    # "missAppId":Z
    .restart local v1    # "missChannel":Z
    .restart local v2    # "needInit":Z
    :cond_9
    if-eqz v0, :cond_4

    .line 204
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiTinyDataClient Pending "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "com.xiaomi.xmpushsdk.tinydataPending.appId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_4

    .line 210
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiTinyDataClient Send item immediately."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 213
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 215
    :cond_b
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 216
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mChannel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 218
    :cond_c
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 219
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 221
    :cond_d
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_e

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setTimestamp(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 224
    :cond_e
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->upload(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto/16 :goto_0
.end method
