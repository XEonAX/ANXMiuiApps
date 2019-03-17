.class public Lcom/miui/gallery/card/scenario/ScenarioTrigger;
.super Ljava/lang/Object;
.source "ScenarioTrigger.java"


# instance fields
.field private mFreeScenarioTriggerInterval:I

.field private final mFreeScenarios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuaranteeScenarios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            ">;"
        }
    .end annotation
.end field

.field private final mNormalScenarios:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mNormalScenarios:Ljava/util/TreeSet;

    .line 35
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarios:Ljava/util/List;

    .line 36
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mGuaranteeScenarios:Ljava/util/List;

    .line 38
    const/4 v6, 0x6

    iput v6, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarioTriggerInterval:I

    .line 41
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAssistantScenarioStrategy()Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;

    move-result-object v0

    .line 42
    .local v0, "assistantScenarioStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getDuplicateRemovalInterval()I

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/card/scenario/Scenario;->setDuplicateRemovalInterval(I)V

    .line 44
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getDefaultMinImageCount()I

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/card/scenario/Scenario;->setDefaultMinImageCount(I)V

    .line 45
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getDefaultMaxImageCount()I

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/card/scenario/Scenario;->setDefaultMaxImageCount(I)V

    .line 46
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getDefaultMinSelectedImageCount()I

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/card/scenario/Scenario;->setDefaultSelectedMinImageCount(I)V

    .line 47
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getDefaultMaxSelectedImageCount()I

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/card/scenario/Scenario;->setDefaultSelectedMaxImageCount(I)V

    .line 48
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getFreeScenarioTriggerInterval()I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarioTriggerInterval:I

    .line 50
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getLocalScenarioRules()Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "localRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;

    .line 53
    .local v4, "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    invoke-static {v4}, Lcom/miui/gallery/card/scenario/ScenarioFactory;->createLocalScenario(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)Lcom/miui/gallery/card/scenario/Scenario;

    move-result-object v3

    .line 54
    .local v3, "localScenario":Lcom/miui/gallery/card/scenario/Scenario;
    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getFlag()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 56
    iget-object v7, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarios:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getFlag()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2

    .line 58
    iget-object v7, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mGuaranteeScenarios:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mNormalScenarios:Ljava/util/TreeSet;

    invoke-virtual {v7, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v3    # "localScenario":Lcom/miui/gallery/card/scenario/Scenario;
    .end local v4    # "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    :cond_3
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getCloudTimeScenarioRules()Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "cloudTimeScenarioRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    .line 69
    .local v4, "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;
    invoke-static {v4}, Lcom/miui/gallery/card/scenario/ScenarioFactory;->createCloudTimeScenario(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;)Lcom/miui/gallery/card/scenario/Scenario;

    move-result-object v5

    .line 70
    .local v5, "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    if-eqz v5, :cond_4

    .line 71
    iget-object v7, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mNormalScenarios:Ljava/util/TreeSet;

    invoke-virtual {v7, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v1    # "cloudTimeScenarioRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;>;"
    .end local v2    # "localRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;>;"
    .end local v4    # "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;
    .end local v5    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    :cond_5
    return-void
.end method

.method private static addFailedRecord(Lcom/miui/gallery/card/scenario/Record;Lcom/miui/gallery/card/scenario/Scenario;)Z
    .locals 1
    .param p0, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .param p1, "scenario"    # Lcom/miui/gallery/card/scenario/Scenario;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/scenario/Record;->setState(I)V

    .line 189
    invoke-static {p0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->addRecord(Lcom/miui/gallery/card/scenario/Record;)Z

    move-result v0

    return v0
.end method

.method private static addRecord(Lcom/miui/gallery/card/scenario/Record;)Z
    .locals 2
    .param p0, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 183
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 184
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/dao/base/EntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v1

    return v1
.end method

.method private isCardGeneratedRecently(J)Z
    .locals 13
    .param p1, "period"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 193
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 194
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "limit":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v2, "ignored = 0"

    const/4 v3, 0x0

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 196
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 198
    .local v6, "card":Lcom/miui/gallery/card/Card;
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v10

    cmp-long v1, v2, v10

    if-gez v1, :cond_0

    move v1, v8

    .line 200
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    :goto_0
    return v1

    .restart local v6    # "card":Lcom/miui/gallery/card/Card;
    :cond_0
    move v1, v9

    .line 198
    goto :goto_0

    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    :cond_1
    move v1, v9

    .line 200
    goto :goto_0
.end method

.method private randomSort(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "scenarios":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Scenario;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Lcom/miui/gallery/card/scenario/Scenario;

    .line 164
    .local v7, "scenarioArray":[Lcom/miui/gallery/card/scenario/Scenario;
    invoke-interface {p1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "scenarioArray":[Lcom/miui/gallery/card/scenario/Scenario;
    check-cast v7, [Lcom/miui/gallery/card/scenario/Scenario;

    .line 165
    .restart local v7    # "scenarioArray":[Lcom/miui/gallery/card/scenario/Scenario;
    array-length v1, v7

    .line 166
    .local v1, "index":I
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .local v4, "random":Ljava/util/Random;
    move v2, v1

    .line 167
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-lez v2, :cond_0

    .line 168
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 169
    .local v6, "random_index":I
    aget-object v5, v7, v6

    .line 170
    .local v5, "randomOne":Lcom/miui/gallery/card/scenario/Scenario;
    aget-object v8, v7, v1

    aput-object v8, v7, v6

    .line 171
    aput-object v5, v7, v1

    move v2, v1

    .line 172
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 174
    .end local v5    # "randomOne":Lcom/miui/gallery/card/scenario/Scenario;
    .end local v6    # "random_index":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 175
    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/miui/gallery/card/scenario/Scenario;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 176
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 177
    aget-object v8, v7, v3

    invoke-interface {v0, v8}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/miui/gallery/card/scenario/Scenario;>;"
    .end local v2    # "index":I
    .end local v3    # "j":I
    .end local v4    # "random":Ljava/util/Random;
    .end local v7    # "scenarioArray":[Lcom/miui/gallery/card/scenario/Scenario;
    :cond_1
    return-void
.end method

.method private statScenarioTriggerFailed()V
    .locals 3

    .prologue
    .line 149
    const-string v1, "ScenarioTrigger"

    const-string v2, "Scenario Trigger Failed."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "reason"

    const-string v2, "No triggered scenario"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "assistant"

    const-string v2, "assistant_card_create_failed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method private triggerInternal(Ljava/util/Collection;I)I
    .locals 12
    .param p2, "flagDisableMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "scenarios":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/card/scenario/Scenario;>;"
    const/4 v11, 0x2

    const/4 v5, 0x0

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/card/scenario/Scenario;

    .line 106
    .local v3, "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    const-string v4, "ScenarioTrigger"

    const-string v7, "%s,scenario: %s %s start..."

    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getFlag()I

    move-result v4

    invoke-static {p2, v4}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->findRecords()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->findCards()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/miui/gallery/card/scenario/Scenario;->prepare(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    :cond_1
    const-string v4, "ScenarioTrigger"

    const-string v7, "prepare failed"

    invoke-static {v4, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->loadMediaItem()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lcom/miui/gallery/card/scenario/Record;

    invoke-direct {v1, v3, v0}, Lcom/miui/gallery/card/scenario/Record;-><init>(Lcom/miui/gallery/card/scenario/Scenario;Ljava/util/List;)V

    .line 118
    .local v1, "record":Lcom/miui/gallery/card/scenario/Record;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getMinImageCount()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 119
    :cond_3
    const-string v7, "ScenarioTrigger"

    const-string v8, "media items is too few %s"

    if-nez v0, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v8, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    invoke-static {v1, v3}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->addFailedRecord(Lcom/miui/gallery/card/scenario/Record;Lcom/miui/gallery/card/scenario/Scenario;)Z

    goto :goto_0

    .line 119
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 124
    :cond_5
    invoke-static {v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->addRecord(Lcom/miui/gallery/card/scenario/Record;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 125
    const-string v4, "ScenarioTrigger"

    const-string v7, "add record error"

    invoke-static {v4, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_6
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getFlagDisableMask()I

    move-result v4

    or-int/2addr p2, v4

    .line 130
    const-string v4, "ScenarioTrigger"

    const-string v7, "Scenario %s trigger successfully. Try generate card!"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v7, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;

    invoke-direct {v7, v11}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;-><init>(I)V

    const/4 v8, 0x0

    .line 135
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/Scenario;->getFlag()I

    move-result v4

    const/16 v9, 0x10

    if-ne v4, v9, :cond_7

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v7, v8, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->generateCard(Lorg/json/JSONObject;Lcom/miui/gallery/card/scenario/Record;Z)Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    move-result-object v2

    .line 136
    .local v2, "result":Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->HAVE_UNPROCESSED_IMAGES:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    if-ne v2, v4, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/Record;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/Record;->getId()J

    move-result-wide v8

    .line 137
    invoke-static {v11, v4, v8, v9}, Lcom/miui/gallery/card/preprocess/ScenarioTask;->post(ILjava/lang/String;J)V

    goto/16 :goto_0

    .end local v2    # "result":Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;
    :cond_7
    move v4, v5

    .line 135
    goto :goto_2

    .line 142
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "record":Lcom/miui/gallery/card/scenario/Record;
    .end local v3    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    :cond_8
    return p2
.end method


# virtual methods
.method public getScenarioById(I)Lcom/miui/gallery/card/scenario/Scenario;
    .locals 3
    .param p1, "scenarioId"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mNormalScenarios:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/scenario/Scenario;

    .line 205
    .local v0, "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 219
    .end local v0    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    :goto_0
    return-object v0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/scenario/Scenario;

    .line 210
    .restart local v0    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v2

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 214
    .end local v0    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mGuaranteeScenarios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/scenario/Scenario;

    .line 215
    .restart local v0    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v2

    if-ne v2, p1, :cond_4

    goto :goto_0

    .line 219
    .end local v0    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized trigger()V
    .locals 6

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    .line 83
    .local v0, "flagDisableMask":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mNormalScenarios:Ljava/util/TreeSet;

    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->triggerInternal(Ljava/util/Collection;I)I

    move-result v0

    .line 85
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarios:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x5265c00

    iget v4, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarioTriggerInterval:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 86
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->isCardGeneratedRecently(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mFreeScenarios:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v1, "freeScenario":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Scenario;>;"
    invoke-direct {p0, v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->randomSort(Ljava/util/List;)V

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->triggerInternal(Ljava/util/Collection;I)I

    move-result v0

    .line 91
    .end local v1    # "freeScenario":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Scenario;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->statScenarioTriggerFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public triggerGuaranteeScenario()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "ScenarioTrigger"

    const-string v1, "Trigger guarantee scenarios"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->mGuaranteeScenarios:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->triggerInternal(Ljava/util/Collection;I)I

    .line 102
    return-void
.end method
