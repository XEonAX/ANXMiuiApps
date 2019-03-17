.class public Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;
.super Lcom/miui/gallery/card/scenario/time/annual/AnnualScenario;
.source "AnnualEventsScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x77

    invoke-direct {p0, v0}, Lcom/miui/gallery/card/scenario/time/annual/AnnualScenario;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 2
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
    .line 39
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c058c

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 7
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
    .line 32
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 33
    .local v0, "startTime":J
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0592

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 34
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearLocale(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_PARTY:[Ljava/lang/Integer;

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_ACTIVITY:[Ljava/lang/Integer;

    sget-object v2, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_SPORTS:[Ljava/lang/Integer;

    .line 26
    invoke-static {v1, v2}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 27
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/annual/AnnualEventsScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
