.class public Lcom/uploader/portal/UploaderLogImpl;
.super Ljava/lang/Object;
.source "UploaderLogImpl.java"

# interfaces
.implements Lcom/uploader/export/IUploaderLog;


# static fields
.field private static levelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile enableTLog:Z

.field private volatile priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    .line 24
    sget-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    const-string v1, "V"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    const-string v1, "D"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    const-string v1, "I"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    const-string v1, "W"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    const-string v1, "E"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    const-string v1, "L"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1f

    iput v0, p0, Lcom/uploader/portal/UploaderLogImpl;->priority:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    return-void
.end method

.method private isTLogLevelEnable(I)Z
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 114
    sget-object v1, Lcom/uploader/portal/UploaderLogImpl;->levelMap:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 115
    .local v0, "tlogLevel":I
    iget v1, p0, Lcom/uploader/portal/UploaderLogImpl;->priority:I

    if-eq v0, v1, :cond_0

    .line 116
    iput v0, p0, Lcom/uploader/portal/UploaderLogImpl;->priority:I

    .line 118
    :cond_0
    iget v1, p0, Lcom/uploader/portal/UploaderLogImpl;->priority:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public enable(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/uploader/portal/UploaderLogImpl;->priority:I

    .line 34
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/uploader/portal/UploaderLogImpl;->isTLogLevelEnable(I)Z

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uploader/portal/UploaderLogImpl;->priority:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 78
    :goto_0
    return v0

    .line 48
    :sswitch_0
    iget-boolean v1, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 54
    :sswitch_1
    iget-boolean v1, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    if-eqz v1, :cond_1

    .line 55
    invoke-static {p2, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 60
    :sswitch_2
    iget-boolean v1, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    if-eqz v1, :cond_2

    .line 61
    invoke-static {p2, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_3
    iget-boolean v1, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    if-eqz v1, :cond_3

    .line 67
    invoke-static {p2, p3, p4}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_4
    iget-boolean v1, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    if-eqz v1, :cond_4

    .line 73
    invoke-static {p2, p3, p4}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public setEnableTLog(Z)V
    .locals 0
    .param p1, "enableTLog"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/uploader/portal/UploaderLogImpl;->enableTLog:Z

    .line 83
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/uploader/portal/UploaderLogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
