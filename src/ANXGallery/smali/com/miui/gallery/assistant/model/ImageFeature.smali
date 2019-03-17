.class public Lcom/miui/gallery/assistant/model/ImageFeature;
.super Lcom/miui/gallery/dao/base/Entity;
.source "ImageFeature.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/dao/base/Entity;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/assistant/model/ImageFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_FEATURE_PROCESSED_SELECTION:Ljava/lang/String;

.field public static final ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

.field public static final ALL_PROCESSED_SELECTION:Ljava/lang/String;

.field public static final SCENE_TAG_SELECTION:Ljava/lang/String;


# instance fields
.field private mClusterFeature:[F

.field private mClusterGroupId:J

.field private mCreateTime:J

.field private mImageDateTime:J

.field private mImageId:J

.field private mImageType:I

.field private mIqaBala:D

.field private mIqaBlur:D

.field private mIqaBlurType:I

.field private mIqaComp:D

.field private mIqaExpo:D

.field private mIqaHaze:D

.field private mIqaNima:D

.field private mIqaNois:D

.field private mIqaSatu:D

.field private mResultFlag:I

.field private mSceneScore:F

.field private mSceneTag:I

.field private mSceneTagA:I

.field private mSceneTagB:I

.field private mSceneTagC:I

.field private mScore:D

.field private mSha1:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND resultFlag & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clusterGroupId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    .line 49
    invoke-static {v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->getFlagsMatchSql([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_FEATURE_PROCESSED_SELECTION:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    .line 52
    invoke-static {v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->getFlagsMatchSql([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clusterGroupId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_PROCESSED_SELECTION:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageId>0 AND version = 2 AND (imageType = 0 OR imageType = 1) AND resultFlag & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imageDatetime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imageDatetime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sceneTagA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sceneTagB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sceneTagC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/model/ImageFeature;->SCENE_TAG_SELECTION:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 133
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mVersion:I

    .line 134
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "sha1"    # Ljava/lang/String;
    .param p4, "mixedDataTime"    # J

    .prologue
    const/4 v1, -0x1

    .line 136
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 137
    iput-wide p1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageId:J

    .line 138
    iput-object p3, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSha1:Ljava/lang/String;

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mVersion:I

    .line 140
    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTag:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneScore:F

    .line 142
    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlurType:I

    .line 143
    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    .line 144
    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    .line 145
    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageType:I

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mCreateTime:J

    .line 148
    iput-wide p4, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageDateTime:J

    .line 149
    return-void
.end method

.method private static getFlagsMatchSql([I)Ljava/lang/String;
    .locals 4
    .param p0, "flagAllArray"    # [I

    .prologue
    .line 425
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 426
    :cond_0
    const-string v2, ""

    .line 439
    :goto_0
    return-object v2

    .line 429
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 431
    const-string v2, "resultFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & "

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    .line 433
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > 0"

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 436
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/assistant/model/ImageFeature;)I
    .locals 4
    .param p1, "o"    # Lcom/miui/gallery/assistant/model/ImageFeature;

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    iget-wide v2, p1, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/model/ImageFeature;->compareTo(Lcom/miui/gallery/assistant/model/ImageFeature;)I

    move-result v0

    return v0
.end method

.method public getClusterFeature()[F
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterFeature:[F

    return-object v0
.end method

.method public getClusterGroupId()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterGroupId:J

    return-wide v0
.end method

.method public getFeatureFlag()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    return v0
.end method

.method public getImageDateTime()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageDateTime:J

    return-wide v0
.end method

.method public getImageId()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageId:J

    return-wide v0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    return-wide v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 4
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
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "imageId"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    const-string/jumbo v1, "sha1"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v1, "version"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "score"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "sceneTag"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "sceneScore"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "iqaExpo"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "iqaSatu"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "iqaBala"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "iqaHaze"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "iqaNois"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "iqaBlur"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "iqaComP"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "iqaNima"

    const-string v2, "REAL"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "iqaBlueType"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "clusterFeature"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "sceneTagA"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "sceneTagB"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "sceneTagC"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "resultFlag"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "clusterGroupId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "imageType"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "createTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "imageDatetime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-object v0
.end method

.method public hasClusterFeature()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterFeature:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterFeature:[F

    array-length v0, v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentImage()Z
    .locals 4

    .prologue
    .line 410
    sget-object v1, Lcom/miui/gallery/assistant/AssistantConstants;->TAGS_DOCUMENTS:[I

    .line 411
    .local v1, "tag":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 412
    iget v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    aget v3, v1, v0

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    aget v3, v1, v0

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    aget v3, v1, v0

    if-ne v2, v3, :cond_1

    .line 413
    :cond_0
    const/4 v2, 0x1

    .line 416
    :goto_1
    return v2

    .line 411
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isFeatureDone(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 164
    iget v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPoorImage()Z
    .locals 4

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlur:D

    const-wide v2, 0x4054800000000000L    # 82.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlurType:I

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNois:D

    const-wide v2, 0x4053d9999999999aL    # 79.4

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaExpo:D

    const-wide v2, 0x404f266666666666L    # 62.3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionFeatureDone()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->isFeatureDone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterGroupId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 348
    const-string v0, "imageId"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string/jumbo v0, "sha1"

    iget-object v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSha1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "version"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v0, "score"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 352
    const-string v0, "sceneTag"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v0, "sceneScore"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 354
    const-string v0, "iqaExpo"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaExpo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 355
    const-string v0, "iqaSatu"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaSatu:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 356
    const-string v0, "iqaBala"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBala:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 357
    const-string v0, "iqaHaze"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaHaze:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 358
    const-string v0, "iqaNois"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNois:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 359
    const-string v0, "iqaBlur"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlur:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 360
    const-string v0, "iqaBlueType"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlurType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v0, "iqaComP"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaComp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 362
    const-string v0, "iqaNima"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNima:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 364
    const-string v0, "sceneTagA"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v0, "sceneTagB"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v0, "sceneTagC"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v0, "clusterFeature"

    iget-object v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterFeature:[F

    invoke-static {v1}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "resultFlag"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v0, "clusterGroupId"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterGroupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v0, "imageType"

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v0, "createTime"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mCreateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string v0, "imageDatetime"

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageDateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    return-void
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    .line 317
    const-string v1, "imageId"

    invoke-static {p1, v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageId:J

    .line 318
    const-string/jumbo v1, "sha1"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getStringDefault(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSha1:Ljava/lang/String;

    .line 319
    const-string/jumbo v1, "version"

    invoke-static {p1, v1, v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mVersion:I

    .line 320
    const-string v1, "score"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    .line 321
    const-string v1, "sceneTag"

    invoke-static {p1, v1, v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTag:I

    .line 322
    const-string v1, "sceneScore"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getFloatDefault(Landroid/database/Cursor;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneScore:F

    .line 323
    const-string v1, "iqaExpo"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaExpo:D

    .line 324
    const-string v1, "iqaSatu"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaSatu:D

    .line 325
    const-string v1, "iqaBala"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBala:D

    .line 326
    const-string v1, "iqaHaze"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaHaze:D

    .line 327
    const-string v1, "iqaNois"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNois:D

    .line 328
    const-string v1, "iqaBlur"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlur:D

    .line 329
    const-string v1, "iqaBlueType"

    invoke-static {p1, v1, v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlurType:I

    .line 330
    const-string v1, "iqaComP"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaComp:D

    .line 331
    const-string v1, "iqaNima"

    invoke-static {p1, v1, v4, v5}, Lcom/miui/gallery/assistant/model/ImageFeature;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNima:D

    .line 332
    const-string v1, "clusterFeature"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getStringDefault(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "clusterFeature":Ljava/lang/String;
    const-class v1, [F

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterFeature:[F

    .line 335
    const-string v1, "sceneTagA"

    invoke-static {p1, v1, v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    .line 336
    const-string v1, "sceneTagB"

    invoke-static {p1, v1, v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    .line 337
    const-string v1, "sceneTagC"

    invoke-static {p1, v1, v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    .line 338
    const-string v1, "resultFlag"

    invoke-static {p1, v1, v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    .line 339
    const-string v1, "clusterGroupId"

    invoke-static {p1, v1, v8, v9}, Lcom/miui/gallery/assistant/model/ImageFeature;->getLongDefault(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterGroupId:J

    .line 340
    const-string v1, "imageType"

    invoke-static {p1, v1, v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageType:I

    .line 341
    const-string v1, "createTime"

    invoke-static {p1, v1, v8, v9}, Lcom/miui/gallery/assistant/model/ImageFeature;->getLongDefault(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mCreateTime:J

    .line 342
    const-string v1, "imageDatetime"

    invoke-static {p1, v1, v8, v9}, Lcom/miui/gallery/assistant/model/ImageFeature;->getLongDefault(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageDateTime:J

    .line 344
    return-void
.end method

.method public setClusterFeature([F)V
    .locals 1
    .param p1, "clusterFeature"    # [F

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterFeature:[F

    .line 270
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->setFeatureFlag(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public setFeatureFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    .line 153
    return-void
.end method

.method public setImageType(I)V
    .locals 0
    .param p1, "imageType"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageType:I

    .line 276
    return-void
.end method

.method public setQualityScore(Lcom/miui/gallery/assistant/jni/score/QualityScore;)V
    .locals 2
    .param p1, "qualityScore"    # Lcom/miui/gallery/assistant/jni/score/QualityScore;

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaExpo()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaExpo:D

    .line 254
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaSatu()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaSatu:D

    .line 255
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaBala()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBala:D

    .line 256
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaHaze()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaHaze:D

    .line 257
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaNois()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNois:D

    .line 258
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaBlur()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlur:D

    .line 259
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaComp()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaComp:D

    .line 260
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaNima()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNima:D

    .line 261
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/score/QualityScore;->getIqaBlurType()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlurType:I

    .line 262
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNima:D

    iput-wide v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->setFeatureFlag(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public setSceneResult(Lcom/miui/gallery/assistant/jni/filter/ISceneResult;)V
    .locals 5
    .param p1, "sceneResult"    # Lcom/miui/gallery/assistant/jni/filter/ISceneResult;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 229
    if-eqz p1, :cond_3

    .line 230
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/miui/gallery/assistant/jni/filter/ISceneResult;->getTags(I)Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "validTop3Tag":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    .line 232
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    .local v0, "tagCount":I
    if-lez v0, :cond_0

    .line 234
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    .line 236
    :cond_0
    if-le v0, v3, :cond_1

    .line 237
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    .line 239
    :cond_1
    if-le v0, v4, :cond_2

    .line 240
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    .line 243
    .end local v0    # "tagCount":I
    :cond_2
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->setFeatureFlag(I)V

    .line 249
    .end local v1    # "validTop3Tag":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 245
    :cond_3
    iput v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    .line 246
    iput v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    .line 247
    iput v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    goto :goto_0
.end method

.method public setSceneResult(Lcom/miui/gallery/assistant/jni/filter/SceneResult;)V
    .locals 1
    .param p1, "sceneResult"    # Lcom/miui/gallery/assistant/jni/filter/SceneResult;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/filter/SceneResult;->getTag()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTag:I

    .line 216
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/jni/filter/SceneResult;->getScore()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneScore:F

    .line 217
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->setFeatureFlag(I)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTag:I

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneScore:F

    goto :goto_0
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mVersion:I

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageFeature{mImageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mScore:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaExpo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaExpo:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaSatu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaSatu:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaBala="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBala:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaHaze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaHaze:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaNois="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNois:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlur:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaBlurType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaBlurType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaComp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaComp:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIqaNima="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mIqaNima:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneTagA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneTagB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSceneTagC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mSceneTagC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mResultFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClusterGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mClusterGroupId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mImageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/assistant/model/ImageFeature;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
