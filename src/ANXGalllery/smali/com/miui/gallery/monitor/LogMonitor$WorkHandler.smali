.class Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;
.super Landroid/os/Handler;
.source "LogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/monitor/LogMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkHandler"
.end annotation


# instance fields
.field private final mFileLog:Lcom/miui/gallery/monitor/FileLog;

.field private final mMonitorLooper:Landroid/os/Looper;

.field private mStackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "monitorLooper"    # Landroid/os/Looper;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    iput-object p2, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mMonitorLooper:Landroid/os/Looper;

    .line 63
    new-instance v0, Lcom/miui/gallery/monitor/FileLog;

    invoke-direct {v0}, Lcom/miui/gallery/monitor/FileLog;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mFileLog:Lcom/miui/gallery/monitor/FileLog;

    .line 64
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mStackTrace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "LOOPER_MONITOR"

    iget-object v2, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mStackTrace:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    const-string v1, "LOOPER_MONITOR"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n------------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "ss":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mFileLog:Lcom/miui/gallery/monitor/FileLog;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/monitor/FileLog;->log(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private traceStack()V
    .locals 7

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mMonitorLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 69
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 70
    .local v0, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->mStackTrace:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    return-void

    .line 90
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->traceStack()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
