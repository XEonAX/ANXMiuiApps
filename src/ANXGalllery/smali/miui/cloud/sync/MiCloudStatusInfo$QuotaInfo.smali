.class public Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/MiCloudStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuotaInfo"
.end annotation


# instance fields
.field private mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:J

.field private mUsed:J

.field private mWarn:Ljava/lang/String;

.field private mYearlyPackageCreateTime:J

.field private mYearlyPackageExpireTime:J

.field private mYearlyPackageSize:J

.field private mYearlyPackageType:Ljava/lang/String;

.field final synthetic this$0:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V
    .locals 2
    .param p1, "this$0"    # Lmiui/cloud/sync/MiCloudStatusInfo;
    .param p2, "total"    # J
    .param p4, "used"    # J
    .param p6, "warn"    # Ljava/lang/String;
    .param p7, "yearlyPackageType"    # Ljava/lang/String;
    .param p8, "yearlyPackageSize"    # J
    .param p10, "yearlyPackageCreateTime"    # J
    .param p12, "yearlyPackageExpireTime"    # J

    .prologue
    .line 190
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-wide p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    .line 192
    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    .line 193
    iput-object p6, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    .line 194
    iput-object p7, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    .line 195
    iput-wide p8, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    .line 196
    iput-wide p10, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    .line 197
    iput-wide p12, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    .line 199
    return-void
.end method


# virtual methods
.method public addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .prologue
    .line 202
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    return-wide v0
.end method

.method public getWarn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    return-object v0
.end method

.method public isSpaceFull()Z
    .locals 2

    .prologue
    .line 238
    const-string v0, "full"

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpaceLowPercent()Z
    .locals 2

    .prologue
    .line 245
    const-string v0, "low_percent"

    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuotaInfo{mTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWarn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYearlyPackageType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYearlyPackageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYearlyPackageCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYearlyPackageExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
