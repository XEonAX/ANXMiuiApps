.class public Lcom/miui/gallery/stat/BaseSamplingStatHelper;
.super Ljava/lang/Object;
.source "BaseSamplingStatHelper.java"


# direct methods
.method private static formatErrorCategoryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "error_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "sample_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatValueStage(F[I)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # F
    .param p1, "stages"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-static {p0, p1}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->generatorValueStage(F[I)I

    move-result v0

    .line 155
    .local v0, "stage":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "<=%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, ">%d"

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static generatorCommonParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v1, "version"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v0
.end method

.method public static generatorValueStage(F[I)I
    .locals 4
    .param p0, "value"    # F
    .param p1, "stages"    # [I

    .prologue
    .line 135
    const/4 v2, -0x1

    .line 136
    .local v2, "stage":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    aget v3, p1, v1

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_1

    .line 138
    aget v2, p1, v1

    .line 142
    :cond_0
    return v2

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isEnabled()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/miui/gallery/stat/StatSampling;->FILTERED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static recordErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatErrorCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatErrorCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method public static recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 87
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/util/GalleryStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    :cond_0
    return-void
.end method

.method public static recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p1}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GalleryStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GalleryStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->formatSampledCategoryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/GalleryStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method
