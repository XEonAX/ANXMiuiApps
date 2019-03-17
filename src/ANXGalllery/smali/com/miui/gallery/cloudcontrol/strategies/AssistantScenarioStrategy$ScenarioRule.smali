.class public Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
.super Ljava/lang/Object;
.source "AssistantScenarioStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScenarioRule"
.end annotation


# instance fields
.field protected mMaxImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxImageCount"
    .end annotation
.end field

.field protected mMaxSelectedImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxSelectedImageCount"
    .end annotation
.end field

.field protected mMinImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minImageCount"
    .end annotation
.end field

.field protected mMinSelectedImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minSelectedImageCount"
    .end annotation
.end field

.field protected mPriority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field protected mScenarioId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scenarioId"
    .end annotation
.end field

.field protected mTriggerInterval:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "triggerInterval"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxImageCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mMaxImageCount:I

    return v0
.end method

.method public getMaxSelectedImageCount()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mMaxSelectedImageCount:I

    return v0
.end method

.method public getMinImageCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mMinImageCount:I

    return v0
.end method

.method public getMinSelectedImageCount()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mMinSelectedImageCount:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mPriority:I

    return v0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mScenarioId:I

    return v0
.end method

.method public getTriggerInterval()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->mTriggerInterval:I

    return v0
.end method
