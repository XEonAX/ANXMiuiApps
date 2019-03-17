.class public Lcom/xiaomi/clientreport/data/EventClientReport;
.super Lcom/xiaomi/clientreport/data/BaseClientReport;
.source "EventClientReport.java"


# instance fields
.field public eventContent:Ljava/lang/String;

.field public eventId:Ljava/lang/String;

.field public eventTime:J

.field public eventType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/clientreport/data/BaseClientReport;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "jo":Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/xiaomi/clientreport/data/BaseClientReport;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-object v2

    .line 34
    :cond_0
    const-string v3, "eventId"

    iget-object v4, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v3, "eventType"

    iget v4, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventType:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    const-string v3, "eventTime"

    iget-wide v4, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventTime:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    const-string v3, "eventContent"

    iget-object v4, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventContent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 42
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/xiaomi/clientreport/data/BaseClientReport;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
