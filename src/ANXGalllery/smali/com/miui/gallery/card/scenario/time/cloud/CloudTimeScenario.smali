.class public Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "CloudTimeScenario.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mEndTime:J

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 39
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 40
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onFillScenarioRule(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)V
    .locals 2
    .param p1, "rule"    # Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->onFillScenarioRule(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)V

    .line 45
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mTitle:Ljava/lang/String;

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mDescription:Ljava/lang/String;

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mStartTime:J

    .line 49
    check-cast p1, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    .end local p1    # "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mEndTime:J

    .line 51
    :cond_0
    return-void
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Record;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const/4 v0, 0x0

    .line 55
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mEndTime:J

    iget-wide v4, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mStartTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mTitle:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mStartTime:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->setStartTime(J)V

    .line 62
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->mEndTime:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->setEndTime(J)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
