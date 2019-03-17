.class public abstract Lcom/miui/gallery/card/scenario/time/annual/AnnualScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "AnnualScenario.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 17
    const/16 v0, 0x8

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 19
    return-void
.end method


# virtual methods
.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
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
    const-wide/32 v6, 0x5265c00

    .line 23
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 25
    .local v2, "now":J
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getEndDayOfYearTime(J)J

    move-result-wide v0

    .line 27
    .local v0, "lastDayOfYearTime":J
    const-wide/32 v4, 0xa4cb800

    sub-long v4, v0, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-long v4, v0, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 28
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getFirstDayOfYearTime(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/annual/AnnualScenario;->setStartTime(J)V

    .line 30
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getEndDayOfYearTime(J)J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/annual/AnnualScenario;->setEndTime(J)V

    .line 31
    const/4 v4, 0x1

    .line 33
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
