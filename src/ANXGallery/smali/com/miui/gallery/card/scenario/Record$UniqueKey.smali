.class public Lcom/miui/gallery/card/scenario/Record$UniqueKey;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/scenario/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueKey"
.end annotation


# instance fields
.field private final mEndTime:J

.field private final mLocation:Ljava/lang/String;

.field private final mPeopleId:Ljava/lang/String;

.field private final mPrimaryKey:Ljava/lang/String;

.field private final mScenarioId:I

.field private final mSecondaryKey:Ljava/lang/String;

.field private final mStartTime:J

.field private final mTargetTime:J

.field private final mTertiaryKey:Ljava/lang/String;


# direct methods
.method constructor <init>(IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scenarioId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "targetTime"    # J
    .param p8, "peopleId"    # Ljava/lang/String;
    .param p9, "location"    # Ljava/lang/String;
    .param p10, "primaryKey"    # Ljava/lang/String;
    .param p11, "secondaryKey"    # Ljava/lang/String;
    .param p12, "tertiaryKey"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p1, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mScenarioId:I

    .line 264
    iput-wide p2, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    .line 265
    iput-wide p4, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mEndTime:J

    .line 266
    iput-wide p6, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    .line 267
    iput-object p8, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mPeopleId:Ljava/lang/String;

    .line 268
    iput-object p9, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mLocation:Ljava/lang/String;

    .line 269
    iput-object p10, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mPrimaryKey:Ljava/lang/String;

    .line 270
    iput-object p11, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mSecondaryKey:Ljava/lang/String;

    .line 271
    iput-object p12, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTertiaryKey:Ljava/lang/String;

    .line 272
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    if-ne p0, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 323
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 325
    check-cast v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 327
    .local v0, "uniqueKey":Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    iget v3, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mScenarioId:I

    iget v4, v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mScenarioId:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    iget-wide v6, v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    iget-wide v6, v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mLocation:Ljava/lang/String;

    .line 329
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mLocation:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mLocation:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mLocation:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mPrimaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mScenarioId:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    return-wide v0
.end method

.method public getTargetTime()J
    .locals 4

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 334
    iget v0, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mScenarioId:I

    .line 335
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    iget-wide v4, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mStartTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 336
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    iget-wide v4, p0, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->mTargetTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 337
    return v0
.end method
