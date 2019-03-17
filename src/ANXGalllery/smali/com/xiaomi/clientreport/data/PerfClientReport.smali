.class public Lcom/xiaomi/clientreport/data/PerfClientReport;
.super Lcom/xiaomi/clientreport/data/BaseClientReport;
.source "PerfClientReport.java"


# instance fields
.field public code:I

.field public perfCounts:J

.field public perfLatencies:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 21
    invoke-direct {p0}, Lcom/xiaomi/clientreport/data/BaseClientReport;-><init>()V

    .line 17
    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    .line 18
    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    .line 22
    return-void
.end method

.method public static getBlankInstance()Lcom/xiaomi/clientreport/data/PerfClientReport;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/xiaomi/clientreport/data/PerfClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/PerfClientReport;-><init>()V

    return-object v0
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

    .line 41
    :goto_0
    return-object v2

    .line 34
    :cond_0
    const-string v3, "code"

    iget v4, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    const-string v3, "perfCounts"

    iget-wide v4, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    const-string v3, "perfLatencies"

    iget-wide v4, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 41
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/xiaomi/clientreport/data/BaseClientReport;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
