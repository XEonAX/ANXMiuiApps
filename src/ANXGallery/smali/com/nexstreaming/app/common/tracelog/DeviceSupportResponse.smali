.class public Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;
.super Ljava/lang/Object;
.source "DeviceSupportResponse.java"

# interfaces
.implements Lcom/nexstreaming/app/common/tracelog/TLP$BaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$ExportResInfo;,
        Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$DeviceInfo;,
        Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$MatchInfo;
    }
.end annotation


# instance fields
.field public device_info:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$DeviceInfo;

.field public match_info:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$MatchInfo;

.field public next:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v1, "DeviceSupportResponse:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "  result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "  next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->next:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->match_info:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$MatchInfo;

    if-nez v1, :cond_0

    .line 28
    const-string v1, "  match_info: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->device_info:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$DeviceInfo;

    if-nez v1, :cond_1

    .line 35
    const-string v1, "  device_info: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    const-string v1, "  match_info:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->match_info:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$MatchInfo;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$MatchInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?m)^"

    const-string v3, "    "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "  device_info:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;->device_info:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$DeviceInfo;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?m)^"

    const-string v3, "    "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
