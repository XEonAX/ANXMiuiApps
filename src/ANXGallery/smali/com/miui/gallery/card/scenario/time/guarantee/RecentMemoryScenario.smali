.class public Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "RecentMemoryScenario.java"


# instance fields
.field private mRecentImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 39
    const/16 v0, 0x1f5

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->mRecentImages:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 9
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
    .line 84
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const-wide v6, 0x7fffffffffffffffL

    .line 85
    .local v6, "startTime":J
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "endTime":J
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 89
    .local v4, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v2

    .line 90
    .local v2, "imageTime":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    .line 91
    move-wide v6, v2

    .line 93
    :cond_1
    cmp-long v8, v0, v2

    if-gez v8, :cond_0

    .line 94
    move-wide v0, v2

    goto :goto_0

    .line 98
    .end local v2    # "imageTime":J
    .end local v4    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_2
    invoke-static {v6, v7, v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getDatePeriodGraceful(JJ)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
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
    .line 79
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 1
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
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->mRecentImages:Ljava/util/List;

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 13
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
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->mRecentImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v11

    .line 69
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 51
    .local v8, "currentTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->CAMERA_BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mixedDateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "TIME_SELECTION":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/16 v2, 0x1e

    .line 55
    invoke-static {v1, v2}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v12, [Ljava/lang/Object;

    .line 56
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "mixedDateTime DESC"

    new-instance v6, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;)V

    .line 54
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 65
    .local v10, "recentImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v11

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->mRecentImages:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v12

    .line 69
    goto :goto_0
.end method
