.class public Lcom/xiaomi/analytics/Tracker;
.super Lcom/xiaomi/analytics/BaseLogger;
.source "Tracker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/BaseLogger;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic endSession()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcom/xiaomi/analytics/BaseLogger;->endSession()V

    return-void
.end method

.method public bridge synthetic startSession()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcom/xiaomi/analytics/BaseLogger;->startSession()V

    return-void
.end method

.method public track(Lcom/xiaomi/analytics/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/xiaomi/analytics/Action;

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    instance-of v0, p1, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/LogEvent;->create()Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2
    .param p1, "action"    # Lcom/xiaomi/analytics/Action;
    .param p2, "idType"    # Lcom/xiaomi/analytics/LogEvent$IdType;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    instance-of v0, p1, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p2}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/xiaomi/analytics/Action;

    .prologue
    .line 42
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    instance-of v0, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/LogEvent;->create()Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 49
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 50
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/xiaomi/analytics/Action;
    .param p3, "idType"    # Lcom/xiaomi/analytics/LogEvent$IdType;

    .prologue
    .line 56
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    instance-of v0, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p3}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {p3}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 64
    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method
