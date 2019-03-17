.class public Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;
.super Ljava/lang/Object;
.source "BackupPolicisStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyWrapper"
.end annotation


# instance fields
.field private mEnable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable"
    .end annotation
.end field

.field private mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policy"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isDisallowMetered()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->isDisallowMetered()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mEnable:Z

    return v0
.end method

.method public isExpedited()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->isExpedited()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnoreBattery()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->isIgnoreBattery()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManual()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->isManual()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequireCharging()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;->isRequireCharging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyWrapper{mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->mPolicy:Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
