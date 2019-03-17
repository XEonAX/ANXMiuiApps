.class public Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "AssistantScenarioStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;,
        Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    }
.end annotation


# instance fields
.field private mCloudTimeScenarioRules:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cloudTimeScenarioRules"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultMaxImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultMaxImageCount"
    .end annotation
.end field

.field private mDefaultMaxSelectedImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultMaxSelectedImageCount"
    .end annotation
.end field

.field private mDefaultMinImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultMinImageCount"
    .end annotation
.end field

.field private mDefaultMinSelectedImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultMinSelectedImageCount"
    .end annotation
.end field

.field private mDuplicateRemovalInterval:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duplicateRemovalInterval"
    .end annotation
.end field

.field private mFreeScenarioTriggerInterval:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "freeScenarioTriggerInterval"
    .end annotation
.end field

.field private mLocalScenarioRules:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localScenarioRules"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public getCloudTimeScenarioRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mCloudTimeScenarioRules:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultMaxImageCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMaxImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMaxImageCount:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public getDefaultMaxSelectedImageCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMaxSelectedImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMaxSelectedImageCount:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method public getDefaultMinImageCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMinImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMinImageCount:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public getDefaultMinSelectedImageCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMinSelectedImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDefaultMinSelectedImageCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getDuplicateRemovalInterval()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDuplicateRemovalInterval:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mDuplicateRemovalInterval:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb4

    goto :goto_0
.end method

.method public getFreeScenarioTriggerInterval()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mFreeScenarioTriggerInterval:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mFreeScenarioTriggerInterval:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getLocalScenarioRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->mLocalScenarioRules:Ljava/util/List;

    return-object v0
.end method
