.class public Lcom/miui/gallery/card/scenario/Record;
.super Lcom/miui/gallery/dao/base/Entity;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field private mLocation:Ljava/lang/String;

.field private mMediaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleId:Ljava/lang/String;

.field private mPrimaryKey:Ljava/lang/String;

.field private mScenarioId:I

.field private mSecondaryKey:Ljava/lang/String;

.field private mStartTime:J

.field private mState:I

.field private mTargetTime:J

.field private mTertiaryKey:Ljava/lang/String;

.field private mTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/card/scenario/Scenario;Ljava/util/List;)V
    .locals 4
    .param p1, "scenario"    # Lcom/miui/gallery/card/scenario/Scenario;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Scenario;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 68
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTime:J

    .line 69
    iput-object p2, p0, Lcom/miui/gallery/card/scenario/Record;->mMediaIds:Ljava/util/List;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/card/scenario/Record;->mState:I

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/Record;->mScenarioId:I

    .line 73
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    .line 74
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mEndTime:J

    .line 75
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getTargetTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    :goto_0
    iput-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    .line 76
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getPeopleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPeopleId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mLocation:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getPrimaryKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPrimaryKey:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getSecondary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mSecondaryKey:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getTertiaryKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTertiaryKey:Ljava/lang/String;

    .line 83
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Scenario;->getTargetTime()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mEndTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaIds()Ljava/util/List;
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
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mMediaIds:Ljava/util/List;

    return-object v0
.end method

.method public getPeopleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPeopleId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPrimaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/miui/gallery/card/scenario/Record;->mScenarioId:I

    return v0
.end method

.method public getSecondaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mSecondaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/miui/gallery/card/scenario/Record;->mState:I

    return v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "scenarioId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "scenarioStartTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "scenarioEndTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "scenarioPeopleId"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "scenarioLocation"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "scenarioPrimaryKey"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "scenarioSecondaryKey"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "scenarioTertiaryKey"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "time"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "state"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "medias"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "scenarioTargetTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Record;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v0
.end method

.method public getTargetTime()J
    .locals 4

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTime:J

    return-wide v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "scenarioId"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    .locals 13

    .prologue
    .line 246
    new-instance v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getScenarioId()I

    move-result v1

    .line 247
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getStartTime()J

    move-result-wide v2

    .line 248
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getEndTime()J

    move-result-wide v4

    .line 249
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getTargetTime()J

    move-result-wide v6

    .line 250
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getPeopleId()Ljava/lang/String;

    move-result-object v8

    .line 251
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getLocation()Ljava/lang/String;

    move-result-object v9

    .line 252
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getPrimaryKey()Ljava/lang/String;

    move-result-object v10

    .line 253
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getSecondaryKey()Ljava/lang/String;

    move-result-object v11

    .line 254
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/Record;->getPrimaryKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;-><init>(IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 224
    const-string v0, "scenarioId"

    iget v1, p0, Lcom/miui/gallery/card/scenario/Record;->mScenarioId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v0, "scenarioStartTime"

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v0, "scenarioEndTime"

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v1, "scenarioPeopleId"

    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPeopleId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "scenarioLocation"

    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "scenarioPrimaryKey"

    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPrimaryKey:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "scenarioSecondaryKey"

    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mSecondaryKey:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "scenarioTertiaryKey"

    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTertiaryKey:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string/jumbo v0, "state"

    iget v1, p0, Lcom/miui/gallery/card/scenario/Record;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v0, "medias"

    iget-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mMediaIds:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "scenarioTargetTime"

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPeopleId:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mLocation:Ljava/lang/String;

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mPrimaryKey:Ljava/lang/String;

    goto :goto_2

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mSecondaryKey:Ljava/lang/String;

    goto :goto_3

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record;->mTertiaryKey:Ljava/lang/String;

    goto :goto_4
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 202
    const-string v1, "scenarioId"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/scenario/Record;->mScenarioId:I

    .line 203
    const-string v1, "scenarioStartTime"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    .line 204
    const-string v1, "scenarioEndTime"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mEndTime:J

    .line 205
    const-string v1, "scenarioPeopleId"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mPeopleId:Ljava/lang/String;

    .line 206
    const-string v1, "scenarioLocation"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mLocation:Ljava/lang/String;

    .line 207
    const-string v1, "scenarioPrimaryKey"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mPrimaryKey:Ljava/lang/String;

    .line 208
    const-string v1, "scenarioSecondaryKey"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mSecondaryKey:Ljava/lang/String;

    .line 209
    const-string v1, "scenarioTertiaryKey"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mTertiaryKey:Ljava/lang/String;

    .line 210
    const-string/jumbo v1, "time"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTime:J

    .line 211
    const-string/jumbo v1, "state"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/scenario/Record;->mState:I

    .line 214
    :try_start_0
    const-string v1, "medias"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/scenario/Record;->mMediaIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    const-string v1, "scenarioTargetTime"

    invoke-static {p1, v1}, Lcom/miui/gallery/card/scenario/Record;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    .line 219
    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mStartTime:J

    :goto_1
    iput-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    .line 220
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Record"

    const-string v2, "Get media array of scenario %d from cursor error"

    iget v3, p0, Lcom/miui/gallery/card/scenario/Record;->mScenarioId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record;->mTargetTime:J

    goto :goto_1
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/miui/gallery/card/scenario/Record;->mState:I

    .line 163
    return-void
.end method
