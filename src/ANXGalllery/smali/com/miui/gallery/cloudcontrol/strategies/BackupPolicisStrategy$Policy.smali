.class public Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;
.super Ljava/lang/Object;
.source "BackupPolicisStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# instance fields
.field private mDisallowMetered:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disallow-metered"
    .end annotation
.end field

.field private mExpedited:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expedited"
    .end annotation
.end field

.field private mIgnoreBattery:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ignore-battery"
    .end annotation
.end field

.field private mManual:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manual"
    .end annotation
.end field

.field private mRequireCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "require-charging"
    .end annotation
.end field


# virtual methods
.method public isDisallowMetered()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mDisallowMetered:Z

    return v0
.end method

.method public isExpedited()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mExpedited:Z

    return v0
.end method

.method public isIgnoreBattery()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mIgnoreBattery:Z

    return v0
.end method

.method public isManual()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mManual:Z

    return v0
.end method

.method public isRequireCharging()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mRequireCharging:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy{mDisallowMetered=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mDisallowMetered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequireCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mRequireCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIgnoreBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mIgnoreBattery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpedited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->mExpedited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
