.class public Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;
.super Ljava/lang/Object;
.source "MiTinyDataClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmoothSender"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field public final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final repeatTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->this$0:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mList:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender$2;-><init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->repeatTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->awake()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->doSend()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private awake()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 280
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->repeatTask:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 287
    :cond_0
    return-void
.end method

.method private doSend()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 304
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 305
    .local v1, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->this$0:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->access$300(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->this$0:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->access$300(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "appId":Ljava/lang/String;
    new-array v5, v9, [Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    aput-object v1, v5, v6

    .line 308
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x7800

    .line 307
    invoke-static {v5, v4, v0, v6}, Lcom/xiaomi/push/service/TinyDataHelper;->pack(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 309
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 310
    .local v3, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 311
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->this$0:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->access$300(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v9, v8}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0

    .line 313
    .end local v3    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender$1;-><init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp$SmoothSender;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method
