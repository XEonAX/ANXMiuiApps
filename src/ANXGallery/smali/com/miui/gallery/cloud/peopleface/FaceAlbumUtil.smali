.class public Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;
.super Ljava/lang/Object;
.source "FaceAlbumUtil.java"


# direct methods
.method public static getContentValuesForPeopleFace(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 67
    if-nez p0, :cond_1

    .line 68
    const/4 v3, 0x0

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 70
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    const-string v4, "serverId"

    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_2
    const-string/jumbo v4, "status"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 75
    const-string v4, "serverStatus"

    const-string/jumbo v5, "status"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    const-string/jumbo v4, "type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "type"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_4
    const-string v4, "eTag"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 82
    const-string v4, "eTag"

    const-string v5, "eTag"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_5
    const-string v4, "parentId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    const-string v4, "groupId"

    const-string v5, "parentId"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_6
    const-string v4, "peopleContent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const-string v4, "peopleContent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    .local v1, "peopleContent":Lorg/json/JSONObject;
    const-string v4, "isSetPeopleName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 91
    const-string v4, "peopleName"

    const-string v5, "peopleName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v4, "visibilityType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    :cond_7
    const-string v4, "contact"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    const-string v4, "contact"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "contactInfo":Ljava/lang/String;
    const-string v4, "peopleContactJsonInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo;->fromJson(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v2

    .line 103
    .local v2, "peopleInfo":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz v2, :cond_8

    .line 104
    const-string v4, "relationType"

    iget-object v5, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 106
    invoke-static {v5}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v5

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 104
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    iget-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 108
    const-string v4, "relationText"

    iget-object v5, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v0    # "contactInfo":Ljava/lang/String;
    .end local v2    # "peopleInfo":Lcom/miui/gallery/model/PeopleContactInfo;
    :cond_8
    const-string v4, "isVisible"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 114
    const-string/jumbo v4, "visibilityType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    :cond_9
    const-string v4, "peopleInfo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 118
    const-string v4, "peopleInfo"

    .line 119
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 120
    .local v2, "peopleInfo":Lorg/json/JSONObject;
    const-string v4, "peopleType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY:Ljava/lang/String;

    const-string v5, "peopleType"

    .line 122
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 123
    const-string v4, "gender"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 124
    sget-object v4, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_MALE:Ljava/lang/String;

    const-string v5, "gender"

    .line 126
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 127
    const-string v4, "peopleType"

    .line 128
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 127
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 130
    :cond_a
    const-string v4, "peopleType"

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 130
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 134
    :cond_b
    const-string v4, "peopleType"

    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 134
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 138
    :cond_c
    invoke-static {v3}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->putPeopleTypeNoDefine(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "peopleInfo":Lorg/json/JSONObject;
    :cond_d
    invoke-static {v3}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->putPeopleTypeNoDefine(Landroid/content/ContentValues;)V

    goto/16 :goto_0
.end method

.method public static getPeopleName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0, "record"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v1, "peopleContent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "peopleContent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    .local v0, "peopleContent":Lorg/json/JSONObject;
    const-string v1, "isSetPeopleName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "peopleName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .end local v0    # "peopleContent":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static putPeopleTypeNoDefine(Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 149
    const-string v0, "peopleType"

    const/4 v1, 0x0

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    return-void
.end method
