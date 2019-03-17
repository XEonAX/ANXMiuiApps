.class public abstract Lcom/miui/gallery/card/scenario/Scenario;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/card/scenario/Scenario;",
        ">;"
    }
.end annotation


# static fields
.field protected static final PROJECTION:[Ljava/lang/String;

.field protected static sDefaultMaxImageCount:I

.field protected static sDefaultMinImageCount:I

.field protected static sDefaultSelectedMaxImageCount:I

.field protected static sDefaultSelectedMinImageCount:I

.field protected static sDuplicateRemovalInterval:I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mFlag:I

.field private final mFlagDisableMask:I

.field protected mMaxImageCount:I

.field protected mMaxSelectedImageCount:I

.field protected mMinImageCount:I

.field protected mMinSelectedImageCount:I

.field protected mPriority:I

.field private final mScenarioId:I

.field protected mTriggerInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0xb4

    sput v0, Lcom/miui/gallery/card/scenario/Scenario;->sDuplicateRemovalInterval:I

    .line 33
    const/16 v0, 0x14

    sput v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultMinImageCount:I

    .line 34
    const/16 v0, 0x1f4

    sput v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultMaxImageCount:I

    .line 35
    const/4 v0, 0x6

    sput v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultSelectedMinImageCount:I

    .line 36
    const/16 v0, 0x50

    sput v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultSelectedMaxImageCount:I

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cloud._id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/card/scenario/Scenario;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "flag"    # I
    .param p3, "flagDisableMask"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->TAG:Ljava/lang/String;

    .line 54
    iput p1, p0, Lcom/miui/gallery/card/scenario/Scenario;->mScenarioId:I

    .line 55
    iput p2, p0, Lcom/miui/gallery/card/scenario/Scenario;->mFlag:I

    .line 56
    iput p3, p0, Lcom/miui/gallery/card/scenario/Scenario;->mFlagDisableMask:I

    .line 57
    return-void
.end method

.method public static setDefaultMaxImageCount(I)V
    .locals 0
    .param p0, "defaultMaxImageCount"    # I

    .prologue
    .line 245
    sput p0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultMaxImageCount:I

    .line 246
    return-void
.end method

.method public static setDefaultMinImageCount(I)V
    .locals 0
    .param p0, "defaultMinImageCount"    # I

    .prologue
    .line 241
    sput p0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultMinImageCount:I

    .line 242
    return-void
.end method

.method public static setDefaultSelectedMaxImageCount(I)V
    .locals 0
    .param p0, "defaultSelectedMaxImageCount"    # I

    .prologue
    .line 253
    sput p0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultSelectedMaxImageCount:I

    .line 254
    return-void
.end method

.method public static setDefaultSelectedMinImageCount(I)V
    .locals 0
    .param p0, "defaultSelectedMinImageCount"    # I

    .prologue
    .line 249
    sput p0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultSelectedMinImageCount:I

    .line 250
    return-void
.end method

.method public static setDuplicateRemovalInterval(I)V
    .locals 0
    .param p0, "duplicateRemovalInterval"    # I

    .prologue
    .line 237
    sput p0, Lcom/miui/gallery/card/scenario/Scenario;->sDuplicateRemovalInterval:I

    .line 238
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/card/scenario/Scenario;)I
    .locals 3
    .param p1, "o"    # Lcom/miui/gallery/card/scenario/Scenario;

    .prologue
    .line 258
    iget v1, p1, Lcom/miui/gallery/card/scenario/Scenario;->mPriority:I

    iget v2, p0, Lcom/miui/gallery/card/scenario/Scenario;->mPriority:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 259
    .local v0, "result":I
    if-nez v0, :cond_0

    iget v1, p1, Lcom/miui/gallery/card/scenario/Scenario;->mScenarioId:I

    iget v2, p0, Lcom/miui/gallery/card/scenario/Scenario;->mScenarioId:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/miui/gallery/card/scenario/Scenario;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/Scenario;->compareTo(Lcom/miui/gallery/card/scenario/Scenario;)I

    move-result v0

    return v0
.end method

.method protected cursorToImageIdList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :cond_1
    return-object v0
.end method

.method public findCards()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 154
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignored = 0 AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%s = %s AND %s > %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "scenarioId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "createTime"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 156
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x39ef8b000L

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 154
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "selection":Ljava/lang/String;
    const-string v4, "createTime ASC"

    .line 158
    .local v4, "order":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public findRecords()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Record;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 140
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v1, "%s = %s AND %s > %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "scenarioId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 141
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 142
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x39ef8b000L

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 140
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "selection":Ljava/lang/String;
    const-string/jumbo v4, "time ASC"

    .line 144
    .local v4, "order":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/scenario/Record;

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public abstract generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
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
.end method

.method public abstract generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
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
.end method

.method protected abstract getEndTime()J
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mFlag:I

    return v0
.end method

.method public getFlagDisableMask()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mFlagDisableMask:I

    return v0
.end method

.method protected abstract getLocation()Ljava/lang/String;
.end method

.method public getMaxImageCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMaxImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMaxImageCount:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultMaxImageCount:I

    goto :goto_0
.end method

.method public getMaxSelectedImageCount()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMaxSelectedImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMaxSelectedImageCount:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultSelectedMaxImageCount:I

    goto :goto_0
.end method

.method public getMediaIdsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Scenario;->getMaxImageCount()I

    move-result v4

    .line 174
    .local v4, "maxCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_3

    .line 176
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 177
    .local v2, "itemCount":I
    if-gt v2, v4, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/Scenario;->cursorToImageIdList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 194
    .end local v2    # "itemCount":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-object v3

    .line 180
    .restart local v2    # "itemCount":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    int-to-float v6, v2

    int-to-float v7, v4

    div-float v5, v6, v7

    .line 181
    .local v5, "ratio":F
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    float-to-double v8, v5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 183
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v2    # "itemCount":I
    .end local v5    # "ratio":F
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 189
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v4

    .local v0, "distance":I
    move v1, v0

    .line 190
    .end local v0    # "distance":I
    .local v1, "distance":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "distance":I
    .restart local v0    # "distance":I
    if-lez v1, :cond_0

    .line 191
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v0

    .end local v0    # "distance":I
    .restart local v1    # "distance":I
    goto :goto_1
.end method

.method public getMinImageCount()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMinImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMinImageCount:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultMinImageCount:I

    goto :goto_0
.end method

.method public getMinSelectedImageCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMinSelectedImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mMinSelectedImageCount:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/gallery/card/scenario/Scenario;->sDefaultSelectedMinImageCount:I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPeopleId()Ljava/lang/String;
.end method

.method protected abstract getPrimaryKey()Ljava/lang/String;
.end method

.method protected getRecordEndTime(Lcom/miui/gallery/card/scenario/Record;)J
    .locals 2
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getEndTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J
    .locals 2
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getStartTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mScenarioId:I

    return v0
.end method

.method protected abstract getSecondary()Ljava/lang/String;
.end method

.method protected abstract getStartTime()J
.end method

.method protected abstract getTargetTime()J
.end method

.method protected abstract getTertiaryKey()Ljava/lang/String;
.end method

.method public getTriggerInterval()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/miui/gallery/card/scenario/Scenario;->mTriggerInterval:I

    return v0
.end method

.method protected isCardRecentlyCreated(Ljava/util/List;J)Z
    .locals 6
    .param p2, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p1, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const/4 v3, 0x0

    .line 228
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 230
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v0

    .line 231
    .local v0, "lastestCreateTime":J
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 233
    .end local v0    # "lastestCreateTime":J
    :goto_0
    return v2

    .restart local v0    # "lastestCreateTime":J
    :cond_0
    move v2, v3

    .line 231
    goto :goto_0

    .end local v0    # "lastestCreateTime":J
    :cond_1
    move v2, v3

    .line 233
    goto :goto_0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected isRecentlyTriggerd(Ljava/util/List;J)Z
    .locals 8
    .param p2, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Record;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    const/4 v0, 0x0

    .line 217
    .local v0, "lastestRecord":Lcom/miui/gallery/card/scenario/Record;
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/scenario/Record;

    .line 219
    .local v1, "record":Lcom/miui/gallery/card/scenario/Record;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/Record;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Record;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 220
    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 224
    .end local v1    # "record":Lcom/miui/gallery/card/scenario/Record;
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Record;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public abstract loadMediaItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onFillScenarioRule(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)V
.end method

.method public abstract onPrepare(Ljava/util/List;Ljava/util/List;)Z
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
.end method

.method public prepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
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
    const-wide/32 v2, 0x5265c00

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Scenario;->getTriggerInterval()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Scenario;->getTriggerInterval()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/card/scenario/Scenario;->isRecentlyTriggerd(Ljava/util/List;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Scenario;->getTriggerInterval()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/gallery/card/scenario/Scenario;->isCardRecentlyCreated(Ljava/util/List;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/scenario/Scenario;->onPrepare(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method
