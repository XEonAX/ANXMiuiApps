.class public Lcom/miui/gallery/cloudcontrol/FeatureProfile;
.super Ljava/lang/Object;
.source "FeatureProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;,
        Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    }
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field protected mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field protected mStrategy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "strategy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .line 100
    .local v0, "other":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStrategy:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStatus:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 82
    const/16 v0, 0x11

    .line 83
    .local v0, "result":I
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStatus:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStatus:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStrategy:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStrategy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 92
    :cond_2
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStatus:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStrategy:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureProfile{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStrategy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->mStrategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
