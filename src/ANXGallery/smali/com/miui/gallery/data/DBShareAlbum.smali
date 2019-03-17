.class public Lcom/miui/gallery/data/DBShareAlbum;
.super Ljava/lang/Object;
.source "DBShareAlbum.java"

# interfaces
.implements Lcom/miui/gallery/data/DBItem;


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumStatus:Ljava/lang/String;

.field private babyInfoJson:Ljava/lang/String;

.field private canModified:I

.field private creatorId:Ljava/lang/String;

.field private dateModified:J

.field private datetaken:J

.field private description:Ljava/lang/String;

.field private editedColumns:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private groupId:J

.field private id:Ljava/lang/String;

.field private isPublic:Z

.field private localFlag:I

.field private peopleId:Ljava/lang/String;

.field private publicUrl:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverStatus:Ljava/lang/String;

.field private serverTag:J

.field private serverType:I

.field private shareUrl:Ljava/lang/String;

.field private shareUrlLong:Ljava/lang/String;

.field private sharerInfo:Ljava/lang/String;

.field private sortBy:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->id:Ljava/lang/String;

    .line 47
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->groupId:J

    .line 48
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->dateModified:J

    .line 49
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->description:Ljava/lang/String;

    .line 50
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->fileName:Ljava/lang/String;

    .line 51
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->datetaken:J

    .line 52
    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->serverId:Ljava/lang/String;

    .line 53
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->serverType:I

    .line 54
    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->serverStatus:Ljava/lang/String;

    .line 56
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->serverTag:J

    .line 57
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->localFlag:I

    .line 58
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->sortBy:I

    .line 59
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->canModified:I

    .line 60
    const/16 v2, 0xd

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->albumId:Ljava/lang/String;

    .line 61
    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->creatorId:Ljava/lang/String;

    .line 62
    const/16 v2, 0xf

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/DBShareAlbum;->shareUrl:Ljava/lang/String;

    .line 63
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->isPublic:Z

    .line 64
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->publicUrl:Ljava/lang/String;

    .line 65
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->peopleId:Ljava/lang/String;

    .line 66
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->babyInfoJson:Ljava/lang/String;

    .line 67
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->editedColumns:Ljava/lang/String;

    .line 68
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->sharerInfo:Ljava/lang/String;

    .line 69
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->albumStatus:Ljava/lang/String;

    .line 70
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->shareUrlLong:Ljava/lang/String;

    .line 71
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public static getContentValue(Lorg/json/JSONObject;Lcom/miui/gallery/data/DBShareAlbum;)Landroid/content/ContentValues;
    .locals 14
    .param p0, "entryJson"    # Lorg/json/JSONObject;
    .param p1, "old"    # Lcom/miui/gallery/data/DBShareAlbum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "albumId"

    const-string/jumbo v11, "sharedId"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v10, "status"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 78
    const-string v10, "albumStatus"

    const-string/jumbo v11, "status"

    .line 79
    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    const-string v10, "albumTag"

    const-string/jumbo v11, "tag"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v10, "creatorId"

    const-string v11, "creatorId"

    .line 83
    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 82
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v10, "content"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 85
    .local v3, "contentJson":Lorg/json/JSONObject;
    const-string v10, "serverId"

    const-string v11, "id"

    invoke-static {v3, v11}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v10, "serverStatus"

    const-string/jumbo v11, "status"

    .line 87
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 86
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v10, "serverTag"

    const-string/jumbo v11, "tag"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v10, "serverType"

    const-string/jumbo v11, "type"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v10, "fileName"

    const-string v11, "fileName"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v10, "dateModified"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 92
    const-string v10, "dateModified"

    const-string v11, "dateModified"

    .line 93
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    const-string v10, "isPublic"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 97
    const-string v10, "isPublic"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 98
    .local v5, "isPublic":Z
    if-eqz v5, :cond_6

    .line 100
    const-string v10, "isPublic"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v10, "publicUrl"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 102
    const-string v10, "publicUrl"

    const-string v11, "publicUrl"

    .line 103
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 102
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v5    # "isPublic":Z
    :cond_2
    :goto_0
    const-string v10, "renderInfos"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 112
    const-string v10, "renderInfos"

    .line 113
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 114
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    .line 115
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 116
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 117
    .local v6, "obj":Lorg/json/JSONObject;
    const-string/jumbo v10, "type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "type"

    .line 118
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY:Ljava/lang/String;

    .line 119
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 120
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "babyInfoJson":Ljava/lang/String;
    const/4 v8, 0x0

    .line 122
    .local v8, "peopleId":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 123
    invoke-static {v2}, Lcom/miui/gallery/cloud/baby/BabyInfo;->fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    .line 124
    .local v1, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    iget-object v10, p1, Lcom/miui/gallery/data/DBShareAlbum;->babyInfoJson:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/gallery/cloud/baby/BabyInfo;->fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v7

    .line 125
    .local v7, "oldBabyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    if-eqz v1, :cond_3

    if-eqz v7, :cond_3

    .line 126
    iget-object v8, p1, Lcom/miui/gallery/data/DBShareAlbum;->peopleId:Ljava/lang/String;

    .line 127
    iget-object v10, p1, Lcom/miui/gallery/data/DBShareAlbum;->peopleId:Ljava/lang/String;

    iput-object v10, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 128
    iget-boolean v10, v7, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    iput-boolean v10, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    .line 129
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/baby/BabyInfo;->toJSON()Ljava/lang/String;

    move-result-object v2

    .line 132
    .end local v1    # "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    .end local v7    # "oldBabyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    :cond_3
    const-string v10, "babyInfoJson"

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v10, "peopleId"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "babyInfoJson":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "peopleId":Ljava/lang/String;
    :cond_4
    const-string v10, "dateTaken"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 142
    const-string v10, "babyInfoJson"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 143
    const-string v10, "dateTaken"

    const-wide/16 v12, -0x3e4

    .line 144
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 143
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    :cond_5
    :goto_2
    return-object v9

    .line 107
    .restart local v5    # "isPublic":Z
    :cond_6
    const-string v10, "isPublic"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v10, "publicUrl"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v5    # "isPublic":Z
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v6    # "obj":Lorg/json/JSONObject;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "obj":Lorg/json/JSONObject;
    :cond_8
    const-string v10, "dateTaken"

    const-string v11, "dateTaken"

    .line 147
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isNormalStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "serverStatus"    # Ljava/lang/String;
    .param p1, "albumStatus"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "custom"

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->albumStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getBabyInfoJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->babyInfoJson:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getEditedColumns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->editedColumns:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPublic()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->isPublic:Z

    return v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->localFlag:I

    return v0
.end method

.method public getPeopleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->peopleId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->publicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTag()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->serverTag:J

    return-wide v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrlLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->shareUrlLong:Ljava/lang/String;

    return-object v0
.end method

.method public getSharerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareAlbum;->sharerInfo:Ljava/lang/String;

    return-object v0
.end method
