.class public Lcom/miui/gallery/card/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;,
        Lcom/miui/gallery/card/CardManager$CardObserver;,
        Lcom/miui/gallery/card/CardManager$CardObserverHolder;,
        Lcom/miui/gallery/card/CardManager$CardCache;
    }
.end annotation


# static fields
.field public static final CONVERT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/miui/gallery/card/CardManager;


# instance fields
.field private mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

.field private final mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/card/CardManager;->CONVERT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;-><init>(Lcom/miui/gallery/card/CardManager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardObserverHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/card/CardManager;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->getImageFeatureMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/card/CardManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/CardManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->triggerGuaranteeScenariosInternal(Z)V

    return-void
.end method

.method private declared-synchronized addInternal(Lcom/miui/gallery/card/Card;)V
    .locals 6
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 119
    monitor-enter p0

    if-nez p1, :cond_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v1

    .line 125
    .local v1, "existCard":Lcom/miui/gallery/card/Card;
    if-eqz v1, :cond_1

    .line 126
    const-string v3, "CardManager"

    const-string v4, "Card %s exist in db, do not insert again!"

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v1    # "existCard":Lcom/miui/gallery/card/Card;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 130
    .restart local v1    # "existCard":Lcom/miui/gallery/card/Card;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 131
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/dao/base/EntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v2

    .line 132
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 133
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/card/CardManager$1;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/card/CardManager$1;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_2
    const-string v3, "CardManager"

    const-string v4, "add result %s"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private createNewCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;
    .locals 22
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 624
    const/4 v6, 0x0

    .line 714
    :goto_0
    return-object v6

    .line 626
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v18

    const/16 v19, 0x2af8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v10, 0x1

    .line 627
    .local v10, "isOperationStoryCard":Z
    :goto_1
    new-instance v18, Lcom/miui/gallery/card/Card$Builder;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const/16 v19, 0x1

    .line 630
    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setDeletable(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setScenarioId(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setServerId(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/Card$Builder;->setServerTag(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v19

    .line 634
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/Card$Builder;->setCreateBy(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getSortTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/Card$Builder;->setCreateTime(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/Card$Builder;->setUpdateTime(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 637
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getValidStartDate()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/Card$Builder;->setValidStartTime(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getValidEndDate()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/Card$Builder;->setValidEndTime(J)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isTop()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setTop(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v7

    .line 641
    .local v7, "cardBuilder":Lcom/miui/gallery/card/Card$Builder;
    if-nez v10, :cond_b

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v18

    const-class v19, Lcom/miui/gallery/card/Card$CardExtraInfo;

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/card/Card$CardExtraInfo;

    .line 643
    .local v8, "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    const/16 v17, 0x0

    .line 644
    .local v17, "uniqueKey":Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    const/4 v9, 0x0

    .line 645
    .local v9, "isIgnored":Z
    if-eqz v8, :cond_1

    .line 646
    iget-object v0, v8, Lcom/miui/gallery/card/Card$CardExtraInfo;->uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-object/from16 v17, v0

    .line 647
    iget-boolean v9, v8, Lcom/miui/gallery/card/Card$CardExtraInfo;->isIgnored:Z

    .line 650
    :cond_1
    if-nez v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v18

    if-nez v18, :cond_5

    .line 651
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAssistantScenarioStrategy()Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;

    move-result-object v5

    .line 652
    .local v5, "assistantScenarioStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
    if-eqz v5, :cond_5

    .line 653
    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;->getLocalScenarioRules()Ljava/util/List;

    move-result-object v11

    .line 654
    .local v11, "localRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;>;"
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 655
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;

    .line 656
    .local v15, "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    invoke-virtual {v15}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getScenarioId()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 658
    const/4 v9, 0x1

    goto :goto_3

    .line 626
    .end local v5    # "assistantScenarioStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;
    .end local v7    # "cardBuilder":Lcom/miui/gallery/card/Card$Builder;
    .end local v8    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .end local v9    # "isIgnored":Z
    .end local v10    # "isOperationStoryCard":Z
    .end local v11    # "localRules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;>;"
    .end local v15    # "rule":Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;
    .end local v17    # "uniqueKey":Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 634
    .restart local v10    # "isOperationStoryCard":Z
    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 664
    .restart local v7    # "cardBuilder":Lcom/miui/gallery/card/Card$Builder;
    .restart local v8    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .restart local v9    # "isIgnored":Z
    .restart local v17    # "uniqueKey":Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v18

    if-nez v18, :cond_6

    .line 665
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 668
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v13

    .line 669
    .local v13, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v4

    .line 670
    .local v4, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v4, :cond_7

    .line 671
    move-object v4, v13

    .line 673
    :cond_7
    invoke-static {v13}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 674
    .local v16, "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 675
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 677
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getCoverMediaList()Ljava/util/List;

    move-result-object v12

    .line 679
    .local v12, "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/miui/gallery/card/Card$Builder;->setType(I)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const/16 v19, 0x0

    .line 680
    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setImageUri(Landroid/net/Uri;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const-string v19, "album"

    .line 681
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/card/CardUtil;->getAlbumUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setDetailUrl(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 682
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/Card$Builder;->setUniqueKey(Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 683
    invoke-static {v4}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setAllMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 684
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/Card$Builder;->setSelectedMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 685
    invoke-static {v12}, Lcom/miui/gallery/card/CardUtil;->getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setCoverMediaFeatureItems(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const/16 v19, 0x1

    .line 686
    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setSyncable(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    .line 687
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/miui/gallery/card/Card$Builder;->setIsIgnored(Z)Lcom/miui/gallery/card/Card$Builder;

    .line 696
    .end local v4    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .end local v9    # "isIgnored":Z
    .end local v12    # "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "uniqueKey":Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    :goto_4
    invoke-virtual {v7}, Lcom/miui/gallery/card/Card$Builder;->build()Lcom/miui/gallery/card/Card;

    move-result-object v6

    .line 697
    .local v6, "card":Lcom/miui/gallery/card/Card;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/gallery/card/CardManager;->updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V

    .line 698
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 699
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 701
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/miui/gallery/card/CardManager;->add(Lcom/miui/gallery/card/Card;Z)V

    .line 702
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    move-result-object v18

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v19

    invoke-static {v6}, Lcom/miui/gallery/card/CardUtil;->getMovieTemplateFromCard(Lcom/miui/gallery/card/Card;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->downloadTemplate(Landroid/content/Context;I)V

    .line 704
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v14, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 706
    const-string v18, "server_id"

    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_a
    const-string v18, "scenario_id"

    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v18, "assistant"

    const-string v19, "assistant_card_server_card_created"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 690
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getOperationInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/miui/gallery/card/Card$Builder;->setOperationInfo(Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const-string v19, "operation"

    .line 691
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/card/CardUtil;->getAlbumUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setDetailUrl(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const/16 v19, 0x0

    .line 692
    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setSyncable(Z)Lcom/miui/gallery/card/Card$Builder;

    move-result-object v18

    const/16 v19, 0x2

    .line 693
    invoke-virtual/range {v18 .. v19}, Lcom/miui/gallery/card/Card$Builder;->setType(I)Lcom/miui/gallery/card/Card$Builder;

    goto/16 :goto_4
.end method

.method private declared-synchronized deleteInternal(Lcom/miui/gallery/card/Card;Z)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "deleteInDb"    # Z

    .prologue
    .line 172
    monitor-enter p0

    if-nez p1, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    if-eqz p2, :cond_2

    .line 177
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v0

    .line 182
    .local v0, "result":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/CardManager$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/card/CardManager$2;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_1
    const-string v1, "CardManager"

    const-string v2, "delete result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 179
    :cond_2
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 180
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method private getDuplicatedCard(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;
    .locals 14
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 603
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 605
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignored = 0 AND scenarioId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "createTime"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "localFlag"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "selection":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s,%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v1, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, "limit":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 611
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 613
    .local v6, "card":Lcom/miui/gallery/card/Card;
    invoke-static {v6, p1}, Lcom/miui/gallery/card/CardUtil;->isDuplicated(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :goto_0
    return-object v6

    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method private getImageFeatureMap(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "imageSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 396
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v8, "imageFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    if-eqz p1, :cond_0

    .line 398
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const-string/jumbo v2, "sha1 IN (\'%s\') "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "\',\'"

    .line 400
    invoke-static {v9, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 399
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "score desc"

    move-object v5, v3

    .line 398
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 402
    .local v7, "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 404
    .local v6, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 408
    .end local v6    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v7    # "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    :cond_0
    return-object v8
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/card/CardManager;
    .locals 2

    .prologue
    .line 79
    const-class v1, Lcom/miui/gallery/card/CardManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/card/CardManager;->sInstance:Lcom/miui/gallery/card/CardManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/miui/gallery/card/CardManager;

    invoke-direct {v0}, Lcom/miui/gallery/card/CardManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/card/CardManager;->sInstance:Lcom/miui/gallery/card/CardManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/miui/gallery/card/CardManager;->sInstance:Lcom/miui/gallery/card/CardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private mergeCardFromServer(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 564
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 565
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v2, v3

    .line 566
    .local v2, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v0, v3

    .line 567
    .local v0, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    if-nez v0, :cond_0

    .line 568
    move-object v0, v2

    .line 570
    :cond_0
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/miui/gallery/card/Card$CardExtraInfo;

    invoke-static {v3, v5}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/Card$CardExtraInfo;

    .line 572
    .local v1, "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getSortTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/miui/gallery/card/Card;->setCreateTime(J)V

    .line 573
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 574
    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setCardExtraInfo(Lcom/miui/gallery/card/Card$CardExtraInfo;)V

    .line 576
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/card/CardManager;->mergeSha1s(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setAllMediaSha1s(Ljava/util/List;)V

    .line 577
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/card/CardManager;->mergeSha1s(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v5, "mergeFromServerDupCard"

    invoke-virtual {p1, v3, v5}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setScenarioId(I)V

    .line 581
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 583
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setCreateBy(I)V

    .line 584
    invoke-virtual {p0, p1, v4}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    .line 586
    .end local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .end local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-void

    .line 565
    :cond_2
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 566
    .restart local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 583
    .restart local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    :cond_4
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private mergeSha1s(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "sourceSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "mergedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    .local v0, "sha1":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    .end local v0    # "sha1":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private declared-synchronized triggerGuaranteeScenariosInternal(Z)V
    .locals 12
    .param p1, "recordTriggerTime"    # Z

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    const-string v2, "ignored = 0"

    .line 501
    .local v2, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/card/Card;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 502
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 501
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 503
    .local v7, "guaranteeCards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    const-string v0, "CardManager"

    const-string v1, "Card exists,no need trigger guarantee card!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 508
    :cond_1
    :try_start_1
    new-instance v0, Lcom/miui/gallery/card/scenario/ScenarioTrigger;

    invoke-direct {v0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;-><init>()V

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->triggerGuaranteeScenario()V

    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setLastGuaranteeTriggerTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v6

    .line 513
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CardManager"

    const-string/jumbo v1, "trigger scenario occur error.\n"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 500
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "guaranteeCards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V
    .locals 9
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    const/4 v8, 0x1

    .line 336
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isCoversNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v7

    .line 338
    .local v7, "cardSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "remove_duplicate_items"

    .line 342
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 345
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(localGroupId!=-1000) AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%s IN (\'%s\')"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "sha1"

    aput-object v6, v4, v5

    const-string v5, "\',\'"

    .line 346
    invoke-static {v5, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->MEDIA_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "alias_create_time DESC"

    new-instance v6, Lcom/miui/gallery/card/CardManager$5;

    invoke-direct {v6, p0, v7, p1}, Lcom/miui/gallery/card/CardManager$5;-><init>(Lcom/miui/gallery/card/CardManager;Ljava/util/List;Lcom/miui/gallery/card/Card;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 393
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "cardSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->isCoverMediaPathEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->downloadCoverThumb(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateCardFromServerInternal(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v3, 0x0

    .line 718
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerTag()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v2, v3

    .line 722
    .local v2, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v0, v3

    .line 723
    .local v0, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_2
    if-nez v0, :cond_2

    .line 724
    move-object v0, v2

    .line 726
    :cond_2
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v1, v3

    .line 728
    .local v1, "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setTitle(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setDescription(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setScenarioId(I)V

    .line 731
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 733
    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setAllMediaSha1s(Ljava/util/List;)V

    .line 734
    invoke-static {v2}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "updateCardFromServer"

    invoke-virtual {p1, v3, v4}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;Ljava/lang/String;)V

    .line 735
    invoke-static {v1}, Lcom/miui/gallery/card/CardUtil;->getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery/card/Card;->setCoverMediaFeatureItems(Ljava/util/List;)V

    .line 736
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 737
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_0

    .line 721
    .end local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 722
    .restart local v2    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 726
    .restart local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getCoverMediaList()Ljava/util/List;

    move-result-object v1

    goto :goto_3
.end method

.method private declared-synchronized updateInternal(Lcom/miui/gallery/card/Card;)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 260
    monitor-enter p0

    if-nez p1, :cond_0

    .line 285
    :goto_0
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v0

    .line 264
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 265
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/CardManager$4;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/card/CardManager$4;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_1
    const-string v1, "CardManager"

    const-string/jumbo v2, "update result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/gallery/card/Card;Z)V
    .locals 5
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "byLocal"    # Z

    .prologue
    const/4 v4, 0x3

    .line 95
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_1
    if-eqz p2, :cond_4

    .line 99
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 100
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 101
    .local v0, "now":J
    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setCreateTime(J)V

    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 110
    .end local v0    # "now":J
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->addInternal(Lcom/miui/gallery/card/Card;)V

    .line 111
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setHasCardEver()V

    .line 112
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 113
    :cond_3
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 104
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isIgnored()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    goto :goto_1

    .line 106
    :cond_5
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 107
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public createOperationCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;
    .locals 3
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    .line 552
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 553
    .local v0, "existCard":Lcom/miui/gallery/card/Card;
    if-nez v0, :cond_0

    .line 554
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->createNewCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 556
    .end local v0    # "existCard":Lcom/miui/gallery/card/Card;
    :cond_0
    return-object v0
.end method

.method public declared-synchronized delete(Lcom/miui/gallery/card/Card;Z)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "byLocal"    # Z

    .prologue
    .line 151
    monitor-enter p0

    if-nez p1, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_0
    const-string v0, "CardManager"

    const-string v1, "delete card %s"

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    if-eqz p2, :cond_3

    .line 156
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isSyncable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/card/CardManager;->deleteInternal(Lcom/miui/gallery/card/Card;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 162
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->updateInternal(Lcom/miui/gallery/card/Card;)V

    .line 163
    new-instance v0, Lcom/miui/gallery/cloud/card/SyncCardToServer;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncDeleteCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 166
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/card/CardManager;->deleteInternal(Lcom/miui/gallery/card/Card;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCardByCardId(J)Lcom/miui/gallery/card/Card;
    .locals 1
    .param p1, "cardId"    # J

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/card/CardManager$CardCache;->getCard(J)Lcom/miui/gallery/card/Card;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "containIgnored"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 743
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v1, "serverId = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "selection":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND ignored = 0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    :cond_0
    const-class v1, Lcom/miui/gallery/card/Card;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 749
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/Card;

    .line 753
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public getCardInfoFromCard(Lcom/miui/gallery/card/Card;)Lcom/miui/gallery/card/CardSyncInfo;
    .locals 6
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 768
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/CardManager;->getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 769
    .local v2, "selectedServerIdSha1Pairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/CardManager;->getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 771
    .local v0, "allServerIdSha1Pairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v1

    .line 773
    .local v1, "covers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/card/CardSyncInfo;->newBuilder()Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 774
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setName(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 775
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setScenarioId(I)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    const-string v4, "normal"

    .line 776
    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setStatus(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 777
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->generateDuplicateKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setDuplicateKey(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 778
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 779
    invoke-static {v2}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->getServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 780
    invoke-static {v0}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->getServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setAllMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 781
    invoke-static {v2, v1}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->getServerIdsOfCover(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setCoverMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 782
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCardExtraInfo()Lcom/miui/gallery/card/Card$CardExtraInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setExtraInfo(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 783
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->setSortTime(J)Lcom/miui/gallery/card/CardSyncInfo$Builder;

    move-result-object v3

    .line 784
    invoke-virtual {v3}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->build()Lcom/miui/gallery/card/CardSyncInfo;

    move-result-object v3

    return-object v3
.end method

.method public getLoadedCard()Ljava/util/List;
    .locals 1
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
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    return-object v0
.end method

.method public getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cardSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 819
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "remove_duplicate_items"

    .line 822
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 820
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 824
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "%s IN (\'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "sha1"

    aput-object v4, v2, v7

    const-string v4, "\',\'"

    .line 826
    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 824
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "%s DESC"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "alias_create_time"

    aput-object v4, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "IMAGE_ORDER":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/card/CardManager;->CONVERT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Lcom/miui/gallery/card/CardManager$8;

    invoke-direct {v6, p0}, Lcom/miui/gallery/card/CardManager$8;-><init>(Lcom/miui/gallery/card/CardManager;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUnsynchronizedCards(I)Ljava/util/List;
    .locals 7
    .param p1, "queryLimitOnce"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 758
    if-gtz p1, :cond_0

    .line 759
    const/16 p1, 0xa

    .line 761
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 763
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v1, Lcom/miui/gallery/card/Card;

    sget-object v2, Lcom/miui/gallery/card/Card;->BASE_UNSYNC_CARD_SELECTION:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized loadMoreCard()Ljava/util/List;
    .locals 9
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
    .line 311
    monitor-enter p0

    const/4 v7, 0x0

    .line 312
    .local v7, "start":I
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v1}, Lcom/miui/gallery/card/CardManager$CardCache;->size()I

    move-result v7

    .line 315
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x1

    const/16 v8, 0x14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 317
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v1, Lcom/miui/gallery/card/Card;

    sget-object v2, Lcom/miui/gallery/card/Card;->BASE_UI_CARD_SELECTION:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "createTime desc"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 318
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-nez v1, :cond_1

    .line 319
    new-instance v1, Lcom/miui/gallery/card/CardManager$CardCache;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/card/CardManager$CardCache;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/CardManager$1;)V

    iput-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    .line 321
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v1, v6}, Lcom/miui/gallery/card/CardManager$CardCache;->addCards(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_2
    monitor-exit p0

    return-object v6

    .line 311
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAccountDelete()V
    .locals 6

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    const-string v3, "CardManager"

    const-string v4, "onAccountDelete"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v3}, Lcom/miui/gallery/card/CardManager$CardCache;->clear()V

    .line 419
    :cond_0
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/card/Card;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 420
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/card/scenario/Record;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 421
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 422
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/card/SyncTag;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->deleteAll(Ljava/lang/Class;)Z

    .line 424
    iget-object v3, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->onCardDeleted(ILcom/miui/gallery/card/Card;)V

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v2, "taskTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 431
    .local v1, "taskType":Ljava/lang/Integer;
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->cancelAll(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v1    # "taskType":Ljava/lang/Integer;
    .end local v2    # "taskTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CardManager"

    const-string v4, "onAccountDelete occur error.\n"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onDeleteImages(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "imageSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 856
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 858
    .local v8, "oldCardTime":J
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager;->mCardCache:Lcom/miui/gallery/card/CardManager$CardCache;

    invoke-virtual {v1}, Lcom/miui/gallery/card/CardManager$CardCache;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 860
    .local v6, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v6, p1}, Lcom/miui/gallery/card/Card;->removeImages(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 861
    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    const-string v4, "ImageDeleteOutside"

    invoke-virtual {p0, v4}, Lcom/miui/gallery/card/CardManager;->recordCardImageEmptyReason(Ljava/lang/String;)V

    .line 864
    :cond_0
    invoke-virtual {p0, v6, v10}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    .line 866
    :cond_1
    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v8

    .line 867
    goto :goto_0

    .line 870
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    :cond_2
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 871
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignored = 0 AND localFlag NOT IN (1,-2,-1,4) AND createTime<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "selection":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/Card;

    const-string v4, "createTime desc"

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 873
    .local v7, "cardsInDb":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 874
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/Card;

    .line 875
    .restart local v6    # "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v6, p1}, Lcom/miui/gallery/card/Card;->removeImages(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 876
    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 877
    const-string v3, "ImageDeleteOutside"

    invoke-virtual {p0, v3}, Lcom/miui/gallery/card/CardManager;->recordCardImageEmptyReason(Ljava/lang/String;)V

    .line 879
    :cond_4
    invoke-virtual {p0, v6, v10}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    goto :goto_1

    .line 884
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "card":Lcom/miui/gallery/card/Card;
    .end local v7    # "cardsInDb":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    .end local v8    # "oldCardTime":J
    :cond_5
    return-void
.end method

.method public recordCardDeleteReason(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 895
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 896
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string v1, "assistant"

    const-string v2, "assistant_card_delete_card_reason"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 899
    const-string v1, "CardManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 900
    return-void
.end method

.method public recordCardImageEmptyReason(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 887
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 888
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "from"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string v1, "assistant"

    const-string v2, "assistant_card_remove_all_image"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 891
    const-string v1, "CardManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public registerObserver(Lcom/miui/gallery/card/CardManager$CardObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/card/CardManager$CardObserver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public triggerGuaranteeScenarios(Z)V
    .locals 6
    .param p1, "recordTriggerTime"    # Z

    .prologue
    .line 473
    const-string v2, "CardManager"

    const-string v3, "Try trigger Guarantee Scenario"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    const-string v2, "CardManager"

    const-string v3, "Card funtion disable"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->getLastGuaranteeTriggerTime()J

    move-result-wide v0

    .line 483
    .local v0, "lastTriggerTime":J
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 484
    const-string v2, "CardManager"

    const-string/jumbo v3, "triggerScenarios too often"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/card/CardManager$6;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/card/CardManager$6;-><init>(Lcom/miui/gallery/card/CardManager;Z)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public declared-synchronized triggerScenarios()V
    .locals 10

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const-string v1, "CardManager"

    const-string v6, "Card funtion disable"

    invoke-static {v1, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    monitor-exit p0

    return-void

    .line 448
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->getLastTriggerTime()J

    move-result-wide v4

    .line 449
    .local v4, "lastRequestTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 452
    .local v2, "jobExecInterval":J
    const-wide/32 v6, 0x1b7740

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 453
    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    .line 454
    :cond_1
    const-string v1, "CardManager"

    const-string/jumbo v6, "triggerScenarios too often"

    invoke-static {v1, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
    .end local v2    # "jobExecInterval":J
    .end local v4    # "lastRequestTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 459
    .restart local v2    # "jobExecInterval":J
    .restart local v4    # "lastRequestTime":J
    :cond_2
    :try_start_2
    new-instance v1, Lcom/miui/gallery/card/scenario/ScenarioTrigger;

    invoke-direct {v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;-><init>()V

    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/ScenarioTrigger;->trigger()V

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setLastTriggerTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "CardManager"

    const-string/jumbo v6, "trigger scenario occur error.\n"

    invoke-static {v1, v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/miui/gallery/card/CardManager$CardObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/card/CardManager$CardObserver;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager;->mObserverHolder:Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public declared-synchronized update(Lcom/miui/gallery/card/Card;Z)V
    .locals 6
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "byLocal"    # Z

    .prologue
    .line 217
    monitor-enter p0

    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :cond_1
    :try_start_0
    const-string v1, "CardManager"

    const-string v2, "Update card id: %s,By local: %b"

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    .line 224
    const-string/jumbo v1, "updateCardEmpty"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/card/CardManager;->recordCardDeleteReason(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 228
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 229
    const-string v1, "CardManager"

    const-string v2, "Update a card with no card Id!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    if-eqz p2, :cond_5

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 236
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V

    .line 250
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->updateCardCoversIfNecessary(Lcom/miui/gallery/card/Card;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->updateInternal(Lcom/miui/gallery/card/Card;)V

    .line 253
    if-eqz p2, :cond_0

    .line 254
    new-instance v1, Lcom/miui/gallery/cloud/card/SyncCardToServer;

    invoke-direct {v1}, Lcom/miui/gallery/cloud/card/SyncCardToServer;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncModifyCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 243
    .local v0, "existCard":Lcom/miui/gallery/card/Card;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/card/CardManager;->deleteInternal(Lcom/miui/gallery/card/Card;Z)V

    .line 245
    const-string v1, "localExistSameCard"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/card/CardManager;->recordCardDeleteReason(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_6
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setLocalFlag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateCard(Lcom/miui/gallery/card/Card;)V
    .locals 2
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/CardManager$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/card/CardManager$3;-><init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 210
    :cond_0
    return-void
.end method

.method public updateCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 5
    .param p1, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    const/4 v4, 0x0

    .line 519
    if-nez p1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v1

    .line 524
    .local v1, "existCard":Lcom/miui/gallery/card/Card;
    if-nez v1, :cond_4

    .line 525
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->getDuplicatedCard(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 526
    .local v0, "dupCard":Lcom/miui/gallery/card/Card;
    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    invoke-virtual {p0, v0, v4}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    .line 529
    const-string v2, "serverDeleteDupCard"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/card/CardManager;->recordCardDeleteReason(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/card/CardManager;->mergeCardFromServer(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V

    goto :goto_0

    .line 534
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardManager;->createNewCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;

    goto :goto_0

    .line 537
    .end local v0    # "dupCard":Lcom/miui/gallery/card/Card;
    :cond_4
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    invoke-virtual {p0, v1, v4}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    .line 540
    const-string v2, "serverDeleteExistCard"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/card/CardManager;->recordCardDeleteReason(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_5
    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->isLocalDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/card/CardManager;->updateCardFromServerInternal(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V

    goto :goto_0
.end method
