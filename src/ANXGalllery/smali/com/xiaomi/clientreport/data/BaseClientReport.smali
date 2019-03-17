.class public Lcom/xiaomi/clientreport/data/BaseClientReport;
.super Ljava/lang/Object;
.source "BaseClientReport.java"


# instance fields
.field public clientInterfaceId:Ljava/lang/String;

.field private miuiVersion:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field public production:I

.field public reportType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getOs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->os:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getMIUIType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->miuiVersion:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->pkgName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "production"

    iget v3, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->production:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "reportType"

    iget v3, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->reportType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v2, "clientInterfaceId"

    iget-object v3, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->clientInterfaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "os"

    iget-object v3, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->os:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "miuiVersion"

    iget-object v3, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->miuiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "pkgName"

    iget-object v3, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/data/BaseClientReport;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
