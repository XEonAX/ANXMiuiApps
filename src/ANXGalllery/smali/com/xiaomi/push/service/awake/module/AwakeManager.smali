.class public final Lcom/xiaomi/push/service/awake/module/AwakeManager;
.super Ljava/lang/Object;
.source "AwakeManager.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/service/awake/module/AwakeManager;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mModuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaomi/push/service/awake/module/HelpType;",
            "Lcom/xiaomi/push/service/awake/module/IAwakeModule;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLineCmd:I

.field private mPackageName:Ljava/lang/String;

.field private mSendDataIml:Lcom/xiaomi/push/service/awake/module/IProcessData;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_ACTION:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v2, Lcom/xiaomi/push/service/awake/module/ServiceActionAwakeModule;

    invoke-direct {v2}, Lcom/xiaomi/push/service/awake/module/ServiceActionAwakeModule;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_COMPONENT:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v2, Lcom/xiaomi/push/service/awake/module/ServiceComponentAwakeModule;

    invoke-direct {v2}, Lcom/xiaomi/push/service/awake/module/ServiceComponentAwakeModule;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v2, Lcom/xiaomi/push/service/awake/module/ActivityActionAwakeModule;

    invoke-direct {v2}, Lcom/xiaomi/push/service/awake/module/ActivityActionAwakeModule;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v2, Lcom/xiaomi/push/service/awake/module/ProviderAwakeModule;

    invoke-direct {v2}, Lcom/xiaomi/push/service/awake/module/ProviderAwakeModule;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/awake/module/AwakeManager;Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/awake/module/AwakeManager;
    .param p1, "x1"    # Lcom/xiaomi/push/service/awake/module/HelpType;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Lcom/xiaomi/push/service/awake/module/AwakeInfo;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->doAwake(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V

    return-void
.end method

.method private doAwake(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V
    .locals 1
    .param p1, "helpType"    # Lcom/xiaomi/push/service/awake/module/HelpType;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "awakeInfo"    # Lcom/xiaomi/push/service/awake/module/AwakeInfo;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/awake/module/IAwakeModule;

    invoke-interface {v0, p2, p3}, Lcom/xiaomi/push/service/awake/module/IAwakeModule;->doAwake(Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V

    .line 172
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sInstance:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/xiaomi/push/service/awake/module/AwakeManager;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sInstance:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/xiaomi/push/service/awake/module/AwakeManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sInstance:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sInstance:Lcom/xiaomi/push/service/awake/module/AwakeManager;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLineCmd()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mOnLineCmd:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSendDataIml()Lcom/xiaomi/push/service/awake/module/IProcessData;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mSendDataIml:Lcom/xiaomi/push/service/awake/module/IProcessData;

    return-object v0
.end method

.method public sendResult(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p1, "helpType"    # Lcom/xiaomi/push/service/awake/module/HelpType;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/awake/module/IAwakeModule;

    invoke-interface {v0, p2, p3, p4}, Lcom/xiaomi/push/service/awake/module/IAwakeModule;->doSendAwakeResult(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "null"

    const/16 v1, 0x3f0

    const-string v2, "A receive a incorrect message with empty type"

    invoke-static {p2, v0, v1, v2}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mAppId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setOnLineCmd(I)V
    .locals 0
    .param p1, "mOnLineCmd"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mOnLineCmd:I

    .line 92
    return-void
.end method

.method public setPackageInfo(Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/push/service/awake/module/IProcessData;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cmd"    # I
    .param p4, "sendDataIml"    # Lcom/xiaomi/push/service/awake/module/IProcessData;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setAppId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setPackageName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setOnLineCmd(I)V

    .line 53
    invoke-virtual {p0, p4}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setSendDataIml(Lcom/xiaomi/push/service/awake/module/IProcessData;)V

    .line 54
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mPackageName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSendDataIml(Lcom/xiaomi/push/service/awake/module/IProcessData;)V
    .locals 0
    .param p1, "mSendDataIml"    # Lcom/xiaomi/push/service/awake/module/IProcessData;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mSendDataIml:Lcom/xiaomi/push/service/awake/module/IProcessData;

    .line 68
    return-void
.end method

.method public wakeup(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "awakeInfo"    # Ljava/lang/String;
    .param p3, "cmd"    # I
    .param p4, "spackageName"    # Ljava/lang/String;
    .param p5, "appId"    # Ljava/lang/String;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f0

    const-string v2, "A receive a incorrect message"

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setOnLineCmd(I)V

    .line 108
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/awake/module/AwakeManager$1;-><init>(Lcom/xiaomi/push/service/awake/module/AwakeManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
