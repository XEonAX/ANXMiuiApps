.class public Lcom/xiaomi/metoknlp/MetokApplication;
.super Landroid/content/ContextWrapper;
.source "MetokApplication.java"


# static fields
.field private static sApp:Lcom/xiaomi/metoknlp/MetokApplication;


# instance fields
.field mDataListeners:Ljava/util/List;

.field private mFetchDeviceWay:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInited:Z

.field private mListener:Lcom/xiaomi/metoknlp/b/a;

.field private mReady:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mInited:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mDataListeners:Ljava/util/List;

    .line 34
    iput v1, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mFetchDeviceWay:I

    .line 36
    new-instance v0, Lcom/xiaomi/metoknlp/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/h;-><init>(Lcom/xiaomi/metoknlp/MetokApplication;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mListener:Lcom/xiaomi/metoknlp/b/a;

    .line 63
    iput-boolean v1, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mReady:Z

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "metoknlp_app"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/xiaomi/metoknlp/g;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/g;-><init>(Lcom/xiaomi/metoknlp/MetokApplication;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-static {p1}, Lcom/xiaomi/metoknlp/a/d;->f(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/metoknlp/MetokApplication;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/MetokApplication;->updateConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/metoknlp/MetokApplication;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/MetokApplication;->run()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/xiaomi/metoknlp/MetokApplication;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/xiaomi/metoknlp/MetokApplication;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/MetokApplication;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    .line 58
    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    return-object v0
.end method

.method public static get()Lcom/xiaomi/metoknlp/MetokApplication;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    goto :goto_0
.end method

.method private run()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mReady:Z

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mReady:Z

    .line 141
    :cond_0
    invoke-static {}, Lcom/xiaomi/metoknlp/c;->G()Lcom/xiaomi/metoknlp/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/metoknlp/c;->a(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method private updateConfig()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    return-void
.end method


# virtual methods
.method public fecthDeviceImmediately()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/xiaomi/metoknlp/c;->G()Lcom/xiaomi/metoknlp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c;->fecthDeviceImmediately()V

    .line 105
    return-void
.end method

.method public getAppHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getFetchDeviceWay()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mFetchDeviceWay:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/a;->init(Landroid/content/Context;)V

    .line 125
    sget-object v0, Lcom/xiaomi/metoknlp/MetokApplication;->sApp:Lcom/xiaomi/metoknlp/MetokApplication;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/b/c;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/xiaomi/metoknlp/b/c;->M()Lcom/xiaomi/metoknlp/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mListener:Lcom/xiaomi/metoknlp/b/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/b/c;->a(Lcom/xiaomi/metoknlp/b/a;)V

    .line 128
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mReady:Z

    return v0
.end method

.method public notifyDataChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/metoknlp/devicediscover/DataListener;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/xiaomi/metoknlp/devicediscover/DataListener;->onDataCollect(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public registerDataListener(Lcom/xiaomi/metoknlp/devicediscover/DataListener;I)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/metoknlp/devicediscover/DataListener;

    .line 85
    if-ne v0, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    iput p2, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mFetchDeviceWay:I

    .line 90
    iget-object v0, p0, Lcom/xiaomi/metoknlp/MetokApplication;->mDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
