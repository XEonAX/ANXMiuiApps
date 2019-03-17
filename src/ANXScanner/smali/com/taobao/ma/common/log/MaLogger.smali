.class public Lcom/taobao/ma/common/log/MaLogger;
.super Ljava/lang/Object;
.source "MaLogger.java"


# static fields
.field private static final MA_LOG_TAG:Ljava/lang/String; = "Ma"

.field private static final NO_MESSAGE:Ljava/lang/String; = ""

.field private static mLogLevel:Lcom/taobao/ma/common/log/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    sput-object v0, Lcom/taobao/ma/common/log/MaLogger;->mLogLevel:Lcom/taobao/ma/common/log/LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->DEBUG:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->DEBUG:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->ERROR:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->INFO:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->INFO:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method protected static isLevelEnabled(Lcom/taobao/ma/common/log/LogLevel;)Z
    .locals 2
    .param p0, "logLevel"    # Lcom/taobao/ma/common/log/LogLevel;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/taobao/ma/common/log/LogLevel;->getAndroidLogLevel()I

    move-result v0

    sget-object v1, Lcom/taobao/ma/common/log/MaLogger;->mLogLevel:Lcom/taobao/ma/common/log/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/ma/common/log/LogLevel;->getAndroidLogLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "logLevel"    # Lcom/taobao/ma/common/log/LogLevel;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/taobao/ma/common/log/MaLogger;->isLevelEnabled(Lcom/taobao/ma/common/log/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/taobao/ma/common/log/LogLevel;->getAndroidLogLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-static {p1, p2}, Lcom/taobao/ma/common/log/MaLogger;->logAndroidVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-static {p1, p2}, Lcom/taobao/ma/common/log/MaLogger;->logAndroidDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-static {p1, p2}, Lcom/taobao/ma/common/log/MaLogger;->logAndroidInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-static {p1, p2}, Lcom/taobao/ma/common/log/MaLogger;->logAndroidWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-static {p1, p2}, Lcom/taobao/ma/common/log/MaLogger;->logAndroidError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static logAndroidDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "Ma"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "Ma"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logAndroidError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string v0, "Ma"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v0, "Ma"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logAndroidInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v0, "Ma"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "Ma"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logAndroidVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v0, "Ma"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "Ma"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logAndroidWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string v0, "Ma"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, "Ma"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setLogLevel(Lcom/taobao/ma/common/log/LogLevel;)V
    .locals 0
    .param p0, "logLevel"    # Lcom/taobao/ma/common/log/LogLevel;

    .prologue
    .line 12
    sput-object p0, Lcom/taobao/ma/common/log/MaLogger;->mLogLevel:Lcom/taobao/ma/common/log/LogLevel;

    .line 13
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->WARN:Lcom/taobao/ma/common/log/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->TRACE:Lcom/taobao/ma/common/log/LogLevel;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->WARN:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0, p1, p2}, Lcom/taobao/ma/common/log/MaLogger;->log(Lcom/taobao/ma/common/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
