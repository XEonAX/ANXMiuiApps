.class public Lcom/miui/gallery/util/face/CheckoutRecommendPeople;
.super Ljava/lang/Object;
.source "CheckoutRecommendPeople.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p2, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mListener:Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/face/CheckoutRecommendPeople;Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/face/CheckoutRecommendPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->doGetRecommendPeopleFromNet(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/face/CheckoutRecommendPeople;)Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mListener:Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;

    return-object v0
.end method

.method private doGetRecommendPeopleFromNet(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "token"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "peopleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static/range {p4 .. p4}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getPeopleRecommendUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v11

    .line 95
    .local v11, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "syncface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doGetRecommendPeopleFromNet peopleId is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  json is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v11, :cond_1

    const-string v2, "error"

    .line 97
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v11}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v10

    .line 99
    .local v10, "err":I
    if-eqz v10, :cond_2

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 97
    .end local v10    # "err":I
    :cond_1
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 102
    .restart local v10    # "err":I
    :cond_2
    const-string v2, "data"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 104
    .local v9, "data":Lorg/json/JSONObject;
    const-string v2, "recommendPeoples"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "recommendPeoples"

    .line 108
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 109
    .local v12, "peoples":Lorg/json/JSONArray;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v13, "values":Landroid/content/ContentValues;
    const-string v2, "peopleServerId"

    move-object/from16 v0, p4

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "recommendPeoplesJson"

    .line 113
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v14, "peopleServerId = ?"

    .line 115
    .local v14, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v7, v2

    .line 116
    .local v7, "args":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14, v7}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeQueryPeopleRecommend([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 118
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 119
    invoke-static {v13, v14, v7}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdatePeopleRecommend(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 123
    :goto_2
    if-eqz v8, :cond_3

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->notifyStatus(I)V

    goto :goto_1

    .line 121
    :cond_4
    invoke-static {v13}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeInsertPeopleRecommend(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method private notifyStatus(I)V
    .locals 2
    .param p1, "peopleNumber"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mListener:Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$2;-><init>(Lcom/miui/gallery/util/face/CheckoutRecommendPeople;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mListener:Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;->onFinishCheckoutPeopleFace(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->mListener:Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;

    .line 52
    return-void
.end method

.method public getRecommendPeopleFromNet(Ljava/lang/String;)V
    .locals 2
    .param p1, "peopleId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople$1;-><init>(Lcom/miui/gallery/util/face/CheckoutRecommendPeople;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 86
    return-void
.end method
