.class public Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;
.super Lcom/miui/gallery/card/preprocess/ScenarioTask;
.source "ScenarioAlbumTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/preprocess/ScenarioTask;-><init>(I)V

    .line 48
    return-void
.end method

.method private statScenarioCreateFailed()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "reason"

    const-string v2, "No enough image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "assistant"

    const-string v2, "assistant_card_create_failed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method private updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V
    .locals 1
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .param p2, "created"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/gallery/card/scenario/Record;->setState(I)V

    .line 86
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 88
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public generateCard(Lorg/json/JSONObject;Lcom/miui/gallery/card/scenario/Record;Z)Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;
    .locals 31
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .param p3, "processImages"    # Z

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->INPUT_ERROR:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    .line 233
    :goto_0
    return-object v4

    .line 108
    :cond_0
    new-instance v4, Lcom/miui/gallery/card/scenario/ScenarioTrigger;

    invoke-direct {v4}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/card/scenario/Record;->getScenarioId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->getScenarioById(I)Lcom/miui/gallery/card/scenario/Scenario;

    move-result-object v28

    .line 109
    .local v28, "scenario":Lcom/miui/gallery/card/scenario/Scenario;
    if-nez v28, :cond_1

    .line 110
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V

    .line 111
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->INPUT_ERROR:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto :goto_0

    .line 114
    :cond_1
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "ScenarioAlbumTask %d begin!"

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/card/scenario/Record;->getMediaIds()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->queryMediaItemByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    .line 118
    .local v25, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "no media item found"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->statScenarioCreateFailed()V

    .line 122
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->INPUT_ERROR:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto :goto_0

    .line 124
    :cond_2
    const-string v4, "ScenarioAlbumTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "media count:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/card/CardUtil;->getUnProcessedMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    .line 130
    .local v30, "unProcessedMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static/range {v30 .. v30}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_3

    .line 131
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->HAVE_UNPROCESSED_IMAGES:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto :goto_0

    .line 135
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->processImages(Lorg/json/JSONObject;Ljava/util/List;ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "process %d images success"

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 146
    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->getSelectedImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    .line 148
    .local v29, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/card/scenario/Scenario;->getMinSelectedImageCount()I

    move-result v26

    .line 149
    .local v26, "minSelectedImageCount":I
    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/card/scenario/Scenario;->getMaxSelectedImageCount()I

    move-result v24

    .line 150
    .local v24, "maxSelectedImageCount":I
    if-eqz v29, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v4, v0, :cond_6

    .line 151
    :cond_4
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "no enough selected Images from row images"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->statScenarioCreateFailed()V

    .line 154
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->NO_ENOUGH_IMAGE:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto/16 :goto_0

    .line 139
    .end local v24    # "maxSelectedImageCount":I
    .end local v26    # "minSelectedImageCount":I
    .end local v29    # "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_5
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "process images failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->IMAGE_PROCESS_FAIL:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto/16 :goto_0

    .line 155
    .restart local v24    # "maxSelectedImageCount":I
    .restart local v26    # "minSelectedImageCount":I
    .restart local v29    # "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_6
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_7

    .line 157
    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 158
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_7

    .line 159
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_7
    const-string v4, "album"

    invoke-static {v4}, Lcom/miui/gallery/card/CardUtil;->getAlbumUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 165
    .local v20, "detailUrl":Landroid/net/Uri;
    new-instance v4, Lcom/miui/gallery/card/Card$Builder;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/gallery/card/Card$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Scenario;->generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 167
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/scenario/Scenario;->generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 168
    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/card/scenario/Scenario;->isDeletable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setDeletable(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 169
    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setType(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 170
    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setImageUri(Landroid/net/Uri;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v5

    if-nez v20, :cond_9

    const/4 v4, 0x0

    .line 171
    :goto_2
    invoke-virtual {v5, v4}, Lcom/miui/gallery/card/Card$Builder;->setDetailUrl(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/card/scenario/Record;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setUniqueKey(Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 173
    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/card/CardUtil;->getSha1sFromImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setAllMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 174
    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/card/CardUtil;->getSha1sFromImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setSelectedMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 175
    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/card/CardUtil;->getCardCovers(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setCoverMediaFeatureItems(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/card/scenario/Record;->getScenarioId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setScenarioId(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 177
    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/Card$Builder;->setCreateBy(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    .line 178
    invoke-virtual {v4, v8, v9}, Lcom/miui/gallery/card/Card$Builder;->setValidStartTime(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    const-wide v8, 0x7fffffffffffffffL

    .line 179
    invoke-virtual {v4, v8, v9}, Lcom/miui/gallery/card/Card$Builder;->setValidEndTime(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Lcom/miui/gallery/card/Card$Builder;->build()Lcom/miui/gallery/card/Card;

    move-result-object v15

    .line 183
    .local v15, "card":Lcom/miui/gallery/card/Card;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignored = 0 AND scenarioId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/card/scenario/Record;->getScenarioId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "createTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v4

    const-class v5, Lcom/miui/gallery/card/Card;

    const/4 v7, 0x0

    const-string v8, "createTime desc"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 187
    .local v21, "existCardList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/gallery/card/Card;

    .line 189
    .local v19, "cardLocal":Lcom/miui/gallery/card/Card;
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/miui/gallery/card/CardUtil;->isDuplicated(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/card/Card;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 190
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V

    .line 191
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->DUPLICATED:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto/16 :goto_0

    .line 171
    .end local v6    # "selection":Ljava/lang/String;
    .end local v15    # "card":Lcom/miui/gallery/card/Card;
    .end local v19    # "cardLocal":Lcom/miui/gallery/card/Card;
    .end local v21    # "existCardList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 197
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v15    # "card":Lcom/miui/gallery/card/Card;
    .restart local v21    # "existCardList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :cond_a
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v14

    .line 198
    .local v14, "account":Landroid/accounts/Account;
    if-eqz v14, :cond_c

    .line 199
    new-instance v8, Lcom/miui/gallery/cloud/card/SyncCardFromServer;

    invoke-direct {v8, v14}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;-><init>(Landroid/accounts/Account;)V

    .line 200
    invoke-static {v14}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getCardSyncTag(Landroid/accounts/Account;)J

    move-result-wide v9

    .line 201
    invoke-static {v14}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getCardSyncInfo(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0xa

    .line 200
    invoke-virtual/range {v8 .. v13}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->getCardInfoList(JLjava/lang/String;J)Lcom/miui/gallery/cloud/card/model/CardInfoList;

    move-result-object v17

    .line 202
    .local v17, "cardInfoList":Lcom/miui/gallery/cloud/card/model/CardInfoList;
    if-eqz v17, :cond_c

    .line 203
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/cloud/card/model/CardInfoList;->getGalleryCards()Ljava/util/ArrayList;

    move-result-object v18

    .line 204
    .local v18, "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 205
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/gallery/cloud/card/model/CardInfo;

    .line 206
    .local v16, "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v5

    if-nez v5, :cond_b

    .line 207
    invoke-static/range {v15 .. v16}, Lcom/miui/gallery/card/CardUtil;->isDuplicated(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 208
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "Create a local card duplicated with server"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V

    .line 210
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 211
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->DUPLICATED:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto/16 :goto_0

    .line 218
    .end local v16    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    .end local v17    # "cardInfoList":Lcom/miui/gallery/cloud/card/model/CardInfoList;
    .end local v18    # "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    :cond_c
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v15, v5}, Lcom/miui/gallery/card/CardManager;->add(Lcom/miui/gallery/card/Card;Z)V

    .line 219
    const-string v4, "ScenarioAlbumTask"

    const-string v5, "Card generated"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v27, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "scenario_id"

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/card/scenario/Scenario;->getScenarioId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/miui/gallery/card/CardUtil;->getLastCardCreateTime()J

    move-result-wide v22

    .line 224
    .local v22, "lastCardCreateTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-lez v4, :cond_d

    .line 225
    const-string v4, "date_interval_with_last_card"

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v8, v9}, Lcom/miui/gallery/util/GalleryDateUtils;->daysBetween(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 225
    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_d
    const-string v4, "assistant"

    const-string v5, "assistant_card_created_success"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->updateRecord(Lcom/miui/gallery/card/scenario/Record;Z)V

    .line 233
    sget-object v4, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->CREATED:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto/16 :goto_0
.end method

.method public onGetImageDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method public onProcess(Lorg/json/JSONObject;J)Z
    .locals 10
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "recordId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 58
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v3, Lcom/miui/gallery/card/scenario/Record;

    invoke-virtual {v0, v3, p2, p3}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;J)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/scenario/Record;

    .line 59
    .local v1, "record":Lcom/miui/gallery/card/scenario/Record;
    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v8

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const-string v3, "ScenarioAlbumTask"

    const-string/jumbo v4, "task is cancelled"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    :cond_3
    const-string v3, "ScenarioAlbumTask"

    const-string v4, "power meet requirements\uff0cstart generate card"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->generateCard(Lorg/json/JSONObject;Lcom/miui/gallery/card/scenario/Record;Z)Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto :goto_0

    .line 69
    :cond_4
    const-string v3, "ScenarioAlbumTask"

    const-string v4, "power do not meet requirements\uff0ctry generate card without processing images"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1, v1, v8}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;->generateCard(Lorg/json/JSONObject;Lcom/miui/gallery/card/scenario/Record;Z)Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    move-result-object v2

    .line 72
    .local v2, "result":Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;
    sget-object v3, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;->HAVE_UNPROCESSED_IMAGES:Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    if-ne v2, v3, :cond_0

    .line 73
    const-string v3, "ScenarioAlbumTask"

    const-string v4, "generate card without processing images failed , schedule charging task"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v3, 0xa

    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/Record;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/Record;->getId()J

    move-result-wide v6

    .line 74
    invoke-static {v3, v4, v6, v7}, Lcom/miui/gallery/card/preprocess/ScenarioTask;->post(ILjava/lang/String;J)V

    goto :goto_0
.end method
