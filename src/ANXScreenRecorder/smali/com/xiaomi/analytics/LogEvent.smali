.class public Lcom/xiaomi/analytics/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/LogEvent$IdType;,
        Lcom/xiaomi/analytics/LogEvent$LogType;
    }
.end annotation


# static fields
.field private static final JSON_VERSION:I = 0x2

.field private static final KEY_APPID:Ljava/lang/String; = "appId"

.field private static final KEY_CONFIG_KEY:Ljava/lang/String; = "configKey"

.field private static final KEY_EVENT_TIME:Ljava/lang/String; = "eventTime"

.field private static final KEY_ID_TYPE:Ljava/lang/String; = "idType"

.field private static final KEY_JSON_VER:Ljava/lang/String; = "v"

.field private static final KEY_LOG_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_LOG_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_LOG_TYPE:Ljava/lang/String; = "logType"

.field private static final KEY_SESSIONID:Ljava/lang/String; = "sessionId"

.field private static final TAG:Ljava/lang/String; = "LogEvent"


# instance fields
.field private mEventTime:J

.field private mExtra:Lorg/json/JSONObject;

.field private mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

.field private mLogContent:Lorg/json/JSONObject;

.field private mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 26
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2
    .param p1, "idType"    # Lcom/xiaomi/analytics/LogEvent$IdType;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 26
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V
    .locals 2
    .param p1, "type"    # Lcom/xiaomi/analytics/LogEvent$LogType;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 26
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 75
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2
    .param p1, "type"    # Lcom/xiaomi/analytics/LogEvent$LogType;
    .param p2, "idType"    # Lcom/xiaomi/analytics/LogEvent$IdType;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 26
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 89
    :cond_0
    if-eqz p2, :cond_1

    .line 90
    iput-object p2, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    .line 92
    :cond_1
    return-void
.end method

.method public static create()Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LogEvent;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1
    .param p0, "idType"    # Lcom/xiaomi/analytics/LogEvent$IdType;

    .prologue
    .line 131
    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1
    .param p0, "type"    # Lcom/xiaomi/analytics/LogEvent$LogType;

    .prologue
    .line 135
    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1
    .param p0, "type"    # Lcom/xiaomi/analytics/LogEvent$LogType;
    .param p1, "idType"    # Lcom/xiaomi/analytics/LogEvent$IdType;

    .prologue
    .line 139
    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-object v0
.end method


# virtual methods
.method public pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "configKey"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "v"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v2, "appId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "sessionId"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "configKey"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v2, "content"

    iget-object v3, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v2, "eventTime"

    iget-wide v4, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string v2, "logType"

    iget-object v3, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v3}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v2, "extra"

    iget-object v3, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v2, "idType"

    iget-object v3, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-virtual {v3}, Lcom/xiaomi/analytics/LogEvent$IdType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LogEvent"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pack e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0
    .param p1, "extra"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 98
    :cond_0
    return-object p0
.end method

.method setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    .line 105
    :cond_0
    return-object p0
.end method
