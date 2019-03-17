.class public Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;
.super Ljava/lang/Object;
.source "PeopleRecommendMediaSet.java"


# static fields
.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mGroupIdOfFaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleRecommondHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendSourcePeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V
    .locals 1
    .param p1, "recommendSourcePeople"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mGroupIdOfFaceMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mRecommendSourcePeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 30
    return-void
.end method

.method public static addSelectItemsToRecommendedMediaSet(Ljava/util/ArrayList;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V
    .locals 4
    .param p1, "peopleBeRecommended"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "faceServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    invoke-direct {v1, p1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    .line 92
    .local v1, "set":Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;
    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendInfo()V

    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "faceServerId":Ljava/lang/String;
    iget-object v2, v1, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mGroupIdOfFaceMap:Ljava/util/HashMap;

    .line 95
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    invoke-virtual {p1, v2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeAnAlbumToThis(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0    # "faceServerId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static feedbackIgnoredPeople2Server(Ljava/util/ArrayList;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V
    .locals 5
    .param p1, "peopleBeRecommended"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "faceServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    invoke-direct {v2, p1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    .line 103
    .local v2, "set":Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;
    invoke-virtual {v2}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendInfo()V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "igonredPeoples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "faceServerId":Ljava/lang/String;
    iget-object v4, v2, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mGroupIdOfFaceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "faceServerId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v3, v1}, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server;->startFeedbackIgnoredPeople2Server(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method private fillMapGroupIdOfFace(Ljava/lang/String;)V
    .locals 12
    .param p1, "recommendPeoplesJsonStr"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v10, "data"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "recommendPeoples"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 193
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Lcom/miui/gallery/provider/FaceManager;->queryAllPeopleAlbumServerIds()Ljava/util/ArrayList;

    move-result-object v8

    .line 195
    .local v8, "peopleServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 196
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "coreFace"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    .local v1, "coreFace":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 199
    .local v4, "iterator":Ljava/util/Iterator;
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 200
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 201
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "peopleId"

    .line 202
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "peopleId":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 204
    .local v9, "value":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 205
    iget-object v10, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mGroupIdOfFaceMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "peopleId":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "coreFace":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "peopleServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method

.method private fillMapPeopleRecommondHistory(Ljava/lang/String;)V
    .locals 7
    .param p1, "historyJsonStr"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 70
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 73
    .local v4, "value":Z
    iget-object v5, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "value":Z
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private getNeedRecommendPeopleFaceId()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "needRecommendPeopleId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mGroupIdOfFaceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 153
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private static hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .param p0, "map"    # Ljava/util/HashMap;

    .prologue
    .line 121
    const-string/jumbo v2, "{"

    .line 122
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .local v0, "e":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\':"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_0
    const/4 v3, 0x0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    return-object v2
.end method

.method private queryTableOfPeopleRecommendInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " * "

    aput-object v3, v1, v2

    const-string v2, "peopleServerId = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->queryPeopleRecommondTableToCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->fillMapGroupIdOfFace(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {p0, v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->fillMapPeopleRecommondHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static refreshRecommendHistoryToTrue(Ljava/util/ArrayList;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;
    .locals 1
    .param p1, "peopleBeRecommended"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ")",
            "Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "faceServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    invoke-direct {v0, p1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    .line 83
    .local v0, "set":Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;
    invoke-virtual {v0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendInfo()V

    .line 84
    invoke-virtual {v0, p0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendHistoryToTrue(Ljava/util/ArrayList;)V

    .line 85
    return-object v0
.end method

.method private saveHistoryToDB()V
    .locals 5

    .prologue
    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "recommendHistoryJson"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    .line 144
    invoke-static {v4}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "peopleServerId = ?"

    .line 146
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mRecommendSourcePeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 147
    .local v0, "args":[Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdatePeopleRecommend(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 148
    return-void
.end method


# virtual methods
.method public getActualNeedRecommendPeopleFacePhotoNumber()I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->getServerIdsIn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/provider/FaceManager;->queryCountOfPhotosOfOneRecommendAlbum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getServerIdsIn()Ljava/lang/String;
    .locals 6

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->getNeedRecommendPeopleFaceId()Ljava/util/ArrayList;

    move-result-object v2

    .line 219
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 220
    const-string v3, ""

    .line 228
    :goto_0
    return-object v3

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 224
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public refreshRecommendHistoryToTrue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "faceServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "faceServerId":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mPeopleRecommondHistoryMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    .end local v0    # "faceServerId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->saveHistoryToDB()V

    .line 138
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    return-void
.end method

.method public refreshRecommendInfo()V
    .locals 2

    .prologue
    .line 33
    sget-object v1, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->mRecommendSourcePeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 35
    invoke-virtual {v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->queryTableOfPeopleRecommendInfo(Ljava/lang/String;)V

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
