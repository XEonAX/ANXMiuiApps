.class public Lcom/miui/gallery/card/scenario/ScenarioFactory;
.super Ljava/lang/Object;
.source "ScenarioFactory.java"


# static fields
.field private static final sScenarioClass:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    .line 54
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x76

    const-class v2, Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x77

    const-class v2, Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x78

    const-class v2, Lcom/miui/gallery/card/scenario/time/annual/AnnualPetsScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-class v2, Lcom/miui/gallery/card/scenario/time/annual/AnnualFoodsScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x6d

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/YesterdayActivitiesScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/YesterdayPartyScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-class v2, Lcom/miui/gallery/card/scenario/time/recent/YesterdaySportsScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x70

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearActivities;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearParty;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x71

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSports;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-class v2, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x191

    const-class v2, Lcom/miui/gallery/card/scenario/time/free/CatMonthlyScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x192

    const-class v2, Lcom/miui/gallery/card/scenario/time/free/DogMonthlyScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x193

    const-class v2, Lcom/miui/gallery/card/scenario/time/free/FoodMonthlyScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0xc9

    const-class v2, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x194

    const-class v2, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    const/16 v1, 0x1f5

    const-class v2, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static createCloudTimeScenario(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;)Lcom/miui/gallery/card/scenario/Scenario;
    .locals 2
    .param p0, "rule"    # Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 105
    new-instance v0, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;

    invoke-virtual {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$CloudTimeScenarioRule;->getScenarioId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;-><init>(I)V

    .line 106
    .local v0, "cloudTimeScenario":Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;->onFillScenarioRule(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)V

    .line 109
    .end local v0    # "cloudTimeScenario":Lcom/miui/gallery/card/scenario/time/cloud/CloudTimeScenario;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createLocalScenario(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)Lcom/miui/gallery/card/scenario/Scenario;
    .locals 5
    .param p0, "rule"    # Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 85
    sget-object v3, Lcom/miui/gallery/card/scenario/ScenarioFactory;->sScenarioClass:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getScenarioId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 86
    .local v2, "scenarioClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/card/scenario/Scenario;>;"
    if-eqz v2, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/scenario/Scenario;

    .line 89
    .local v1, "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/card/scenario/Scenario;->onFillScenarioRule(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v1    # "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    .end local v2    # "scenarioClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/card/scenario/Scenario;>;"
    :goto_0
    return-object v1

    .line 91
    .restart local v2    # "scenarioClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/card/scenario/Scenario;>;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v3, "ScenarioFactory"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ScenarioFactory"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "scenarioClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/card/scenario/Scenario;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
