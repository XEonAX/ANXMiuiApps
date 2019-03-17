.class public final Lcom/miui/gallery/cloud/baby/BabyInfo;
.super Ljava/lang/Object;
.source "BabyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/cloud/baby/BabyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDaysInMon:[I


# instance fields
.field public mAutoupdate:Z

.field public mBirthday:Ljava/lang/String;

.field public mLocalFlag:I

.field public mNickName:Ljava/lang/String;

.field public mPeopleId:Ljava/lang/String;

.field public mRelation:Ljava/lang/String;

.field public mRelationText:Ljava/lang/String;

.field public mSex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/miui/gallery/cloud/baby/BabyInfo$1;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/baby/BabyInfo$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 239
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->sDaysInMon:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "birthday"    # Ljava/lang/String;
    .param p3, "sex"    # Ljava/lang/String;
    .param p4, "relation"    # Ljava/lang/String;
    .param p5, "relationText"    # Ljava/lang/String;
    .param p6, "peopleId"    # Ljava/lang/String;
    .param p7, "autoupdate"    # Z
    .param p8, "localFlag"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 39
    iput-boolean p7, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    .line 40
    iput p8, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mLocalFlag:I

    .line 41
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 11
    .param p0, "babyInfoJson"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v10, "jo":Lorg/json/JSONObject;
    new-instance v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_ALBUM_NAME:Ljava/lang/String;

    .line 48
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_ALBUM_BIRTHDAY:Ljava/lang/String;

    .line 49
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_GENDER:Ljava/lang/String;

    .line 50
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_RELATION:Ljava/lang/String;

    .line 51
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_RELATION_TEXT:Ljava/lang/String;

    .line 52
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_PEOPLE_ID:Ljava/lang/String;

    .line 53
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_AUTO_UPDATE:Ljava/lang/String;

    .line 54
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "localFlag"

    .line 55
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/cloud/baby/BabyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v10    # "jo":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v9

    .line 58
    .local v9, "e":Lorg/json/JSONException;
    const-string v1, "BabyInfo"

    const-string v2, "failed to parse baby info"

    invoke-static {v1, v2, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAge(JIII)[I
    .locals 10
    .param p0, "toThisDay"    # J
    .param p2, "birthdayYear"    # I
    .param p3, "birthdayMonth"    # I
    .param p4, "birthdayDay"    # I

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/baby/BabyInfo;->getCurrentYearMonthDay(J)[I

    move-result-object v1

    .line 244
    .local v1, "days":[I
    const/4 v7, 0x0

    aget v6, v1, v7

    .line 245
    .local v6, "year":I
    const/4 v7, 0x1

    aget v5, v1, v7

    .line 246
    .local v5, "month":I
    const/4 v7, 0x2

    aget v0, v1, v7

    .line 249
    .local v0, "day":I
    const/4 v4, 0x0

    .local v4, "diffYear":I
    const/4 v3, 0x0

    .local v3, "diffMonth":I
    const/4 v2, 0x0

    .line 251
    .local v2, "diffDay":I
    sub-int v2, v0, p4

    .line 252
    if-gez v2, :cond_0

    .line 253
    add-int/lit8 v3, v3, -0x1

    .line 254
    sget-object v7, Lcom/miui/gallery/cloud/baby/BabyInfo;->sDaysInMon:[I

    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v8, v8, 0xc

    rem-int/lit8 v8, v8, 0xc

    aget v7, v7, v8

    add-int/2addr v7, v0

    sub-int v2, v7, p4

    .line 255
    rem-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_0

    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 256
    add-int/lit8 v2, v2, 0x1

    .line 259
    :cond_0
    sub-int v7, v5, p3

    add-int/2addr v3, v7

    .line 260
    if-gez v3, :cond_1

    .line 261
    add-int/lit8 v4, v4, -0x1

    .line 262
    add-int/lit8 v3, v3, 0xc

    .line 264
    :cond_1
    sub-int v7, v6, p2

    add-int/2addr v4, v7

    .line 266
    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    const/4 v8, 0x2

    aput v2, v7, v8

    return-object v7
.end method

.method private static getCurrentYearMonthDay(J)[I
    .locals 8
    .param p0, "millis"    # J

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 270
    const/4 v5, 0x3

    new-array v3, v5, [I

    .line 272
    .local v3, "result":[I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 273
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 274
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 275
    .local v4, "year":I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 276
    .local v2, "month":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 277
    .local v1, "day":I
    const/4 v5, 0x0

    aput v4, v3, v5

    .line 278
    aput v2, v3, v6

    .line 279
    aput v1, v3, v7

    .line 280
    return-object v3
.end method

.method public static splitBirthDay(Lcom/miui/gallery/cloud/baby/BabyInfo;)[I
    .locals 14
    .param p0, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 215
    if-eqz p0, :cond_0

    iget-object v8, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 216
    iget-object v8, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "days":[Ljava/lang/String;
    if-eqz v6, :cond_1

    array-length v8, v6

    if-ne v8, v13, :cond_1

    .line 218
    aget-object v5, v6, v10

    .line 219
    .local v5, "birthYearStr":Ljava/lang/String;
    aget-object v3, v6, v11

    .line 220
    .local v3, "birthMonStr":Ljava/lang/String;
    aget-object v1, v6, v12

    .line 222
    .local v1, "birthDayStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 223
    .local v4, "birthYear":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    .local v2, "birthMon":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    .local v0, "birthDay":I
    const/4 v8, 0x3

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v2, v8, v9

    const/4 v9, 0x2

    aput v0, v8, v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "birthDay":I
    .end local v1    # "birthDayStr":Ljava/lang/String;
    .end local v2    # "birthMon":I
    .end local v3    # "birthMonStr":Ljava/lang/String;
    .end local v4    # "birthYear":I
    .end local v5    # "birthYearStr":Ljava/lang/String;
    .end local v6    # "days":[Ljava/lang/String;
    :goto_0
    return-object v8

    .line 227
    .restart local v1    # "birthDayStr":Ljava/lang/String;
    .restart local v3    # "birthMonStr":Ljava/lang/String;
    .restart local v5    # "birthYearStr":Ljava/lang/String;
    .restart local v6    # "days":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 228
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 229
    const-string v8, "BabyInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal birthday: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v1    # "birthDayStr":Ljava/lang/String;
    .end local v3    # "birthMonStr":Ljava/lang/String;
    .end local v5    # "birthYearStr":Ljava/lang/String;
    .end local v6    # "days":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 233
    .restart local v6    # "days":[Ljava/lang/String;
    :cond_1
    const-string v8, "BabyInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal birthday: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 79
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 83
    .local v0, "another":Lcom/miui/gallery/cloud/baby/BabyInfo;
    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    .line 84
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    .line 85
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    .line 86
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    .line 87
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 88
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    iget-boolean v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mLocalFlag:I

    iget v4, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mLocalFlag:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "bd":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_ALBUM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_GENDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_RELATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_RELATION_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_ALBUM_BIRTHDAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_PEOPLE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-boolean v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "localFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mLocalFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v1, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mLocalFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
