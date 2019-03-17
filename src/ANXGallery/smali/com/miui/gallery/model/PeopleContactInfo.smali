.class public Lcom/miui/gallery/model/PeopleContactInfo;
.super Ljava/lang/Object;
.source "PeopleContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;,
        Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    }
.end annotation


# static fields
.field private static JSON_TAG_PHONE_NUMBER:Ljava/lang/String;

.field private static JSON_TAG_RELATION:Ljava/lang/String;

.field private static JSON_TAG_RELATIONSHIP:Ljava/lang/String;

.field private static JSON_TAG_RELATIONTEXT:Ljava/lang/String;

.field public static sRelationItemsValue:[Ljava/lang/String;


# instance fields
.field public coverPath:Ljava/lang/String;

.field public isRepeatName:Z

.field public localGroupId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public relationWithMe:Ljava/lang/String;

.field public relationWithMeText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "phoneNumbers"

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_PHONE_NUMBER:Ljava/lang/String;

    .line 19
    const-string v0, "relationship"

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONSHIP:Ljava/lang/String;

    .line 20
    const-string v0, "relation"

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATION:Ljava/lang/String;

    .line 21
    const-string v0, "relationText"

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONTEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->initRelationItemsValue()V

    .line 36
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo;
    .locals 7
    .param p0, "infoJson"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v5

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 52
    .local v1, "info":Lcom/miui/gallery/model/PeopleContactInfo;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, "infoObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 54
    new-instance v2, Lcom/miui/gallery/model/PeopleContactInfo;

    invoke-direct {v2}, Lcom/miui/gallery/model/PeopleContactInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .local v2, "info":Lcom/miui/gallery/model/PeopleContactInfo;
    :try_start_1
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_PHONE_NUMBER:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->phone:Ljava/lang/String;

    .line 59
    :cond_2
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONSHIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONSHIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    sget-object v6, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATION:Ljava/lang/String;

    .line 61
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 62
    iget-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/miui/gallery/model/PeopleContactInfo;->isUserDefineRelation(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONSHIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    sget-object v6, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONTEXT:Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    move-object v1, v2

    .end local v2    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .restart local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    goto :goto_0

    .line 66
    .end local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .restart local v2    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    :cond_3
    iget-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    iput-object v4, v2, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v1, v2

    .end local v2    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .restart local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    goto :goto_0

    .line 70
    .end local v3    # "infoObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    move-object v1, v5

    .line 71
    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .restart local v2    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .restart local v3    # "infoObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .restart local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    goto :goto_1
.end method

.method public static getDefaultNameForMyself(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelation(I)Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    .locals 1
    .param p0, "relationType"    # I

    .prologue
    .line 196
    invoke-static {p0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->fromRelationType(I)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getRelationName(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;
    .locals 5
    .param p0, "relation"    # Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .prologue
    .line 248
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->initRelationItemsValue()V

    .line 249
    invoke-static {p0}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "relationValue":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    .line 251
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "sRelationItemsName":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 253
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    aget-object v3, v2, v0

    .line 257
    :goto_1
    return-object v3

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getRelationOrderSql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE relationType WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 154
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 155
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->family:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 156
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->collegue:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 157
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->classmate:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 158
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->friend:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 159
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 160
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 161
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN 7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE 8 END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelationShow(I)Ljava/lang/String;
    .locals 5
    .param p0, "relationType"    # I

    .prologue
    .line 213
    if-gez p0, :cond_0

    .line 214
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v3}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result p0

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelation(I)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v1

    .line 218
    .local v1, "relation":Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "relationItems":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->initRelationItemsValue()V

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 222
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    aget-object v3, v2, v0

    .line 226
    :goto_1
    return-object v3

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public static getRelationType(Ljava/lang/String;)I
    .locals 5
    .param p0, "relationValue"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 187
    :cond_0
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->values()[Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 188
    .local v0, "relation":Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    invoke-static {p0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->valueOf(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    goto :goto_0

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "relation":Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    :cond_2
    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    goto :goto_0
.end method

.method public static getRelationTypesCount()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->values()[Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;
    .locals 6
    .param p0, "relation"    # Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p0, :cond_1

    move-object v0, v1

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->initRelationItemsValue()V

    .line 204
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 205
    .local v0, "relationValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->valueOf(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v5

    if-eq p0, v5, :cond_0

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "relationValue":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .line 209
    goto :goto_0
.end method

.method public static getSystemRelationNameItems()Ljava/util/ArrayList;
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
    .line 234
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->initRelationItemsValue()V

    .line 235
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0007

    .line 236
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "sRelationItemsName":[Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v4}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "unknownRelation":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 240
    sget-object v4, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return-object v1
.end method

.method public static getSystemRelationValueItems()Ljava/util/ArrayList;
    .locals 4
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
    .line 261
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->initRelationItemsValue()V

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v3}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "unknownRelation":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 265
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    sget-object v3, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    return-object v1
.end method

.method public static getUserDefineRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDefineRelationIndex()I
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v0

    return v0
.end method

.method public static getUserDefineRelationOrderSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "(CASE WHEN relationType = 7 THEN relationText ELSE NULL END) COLLATE LOCALIZED "

    return-object v0
.end method

.method private static initRelationItemsValue()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0017

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo;->sRelationItemsValue:[Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method

.method public static isBabyRelation(I)Z
    .locals 1
    .param p0, "relationType"    # I

    .prologue
    .line 285
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnKnownRelation(I)Z
    .locals 1
    .param p0, "relationType"    # I

    .prologue
    .line 273
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserDefineRelation(I)Z
    .locals 1
    .param p0, "relationType"    # I

    .prologue
    .line 281
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatContactJson()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 81
    iget-object v7, p0, Lcom/miui/gallery/model/PeopleContactInfo;->phone:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v0, v5

    .line 82
    .local v0, "hasPhone":Z
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    move v1, v5

    .line 83
    .local v1, "hasRelation":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 84
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v4, "root":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 88
    .local v2, "phones":Lorg/json/JSONArray;
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/model/PeopleContactInfo;->phone:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    sget-object v5, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .end local v2    # "phones":Lorg/json/JSONArray;
    :cond_1
    if-eqz v1, :cond_2

    .line 93
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v3, "relationship":Lorg/json/JSONObject;
    sget-object v5, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATION:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    sget-object v5, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONTEXT:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    sget-object v5, Lcom/miui/gallery/model/PeopleContactInfo;->JSON_TAG_RELATIONSHIP:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .end local v3    # "relationship":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 102
    .end local v4    # "root":Lorg/json/JSONObject;
    :goto_2
    return-object v5

    .end local v0    # "hasPhone":Z
    .end local v1    # "hasRelation":Z
    :cond_3
    move v0, v6

    .line 81
    goto :goto_0

    .restart local v0    # "hasPhone":Z
    :cond_4
    move v1, v6

    .line 82
    goto :goto_1

    .line 99
    .restart local v1    # "hasRelation":Z
    .restart local v4    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 102
    .end local v4    # "root":Lorg/json/JSONObject;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getRelationType()I
    .locals 5

    .prologue
    .line 172
    iget-object v1, p0, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->values()[Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 176
    .local v0, "relation":Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    iget-object v4, p0, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->valueOf(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 177
    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    goto :goto_0

    .line 175
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "relation":Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    :cond_2
    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    goto :goto_0
.end method
