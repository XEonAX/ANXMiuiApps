.class public Lmiui/yellowpage/YellowPagePhone;
.super Ljava/lang/Object;
.source "YellowPagePhone.java"


# static fields
.field public static final INVALIDE_YID:I = -0x1

.field private static final MASK_SUSPECT:I = 0xf0

.field private static final MASK_T9_SEARCHABLE:I = 0xf

.field public static final TYPE_ANTISPAM:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_YELLOW_PAGE:I = 0x1


# instance fields
.field private mAntispamProviderId:I

.field private mCid:I

.field private mCreditImg:Ljava/lang/String;

.field private mFlag:I

.field private mHasCallMenu:Z

.field private mMarkCount:I

.field private mNormalizedNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberType:I

.field private mProviderId:I

.field private mRawSlogan:Ljava/lang/String;

.field private mSlogan:Ljava/lang/String;

.field private mT9Rank:J

.field private mTag:Ljava/lang/String;

.field private mTagPinyin:Ljava/lang/String;

.field private mType:I

.field private mVisible:Z

.field private mWordAd:Ljava/lang/String;

.field private mYpId:J

.field private mYpName:Ljava/lang/String;

.field private mYpNamePinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;

    .line 83
    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;
    .param p13, "cid"    # I

    .line 91
    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 93
    move/from16 v1, p13

    iput v1, v0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    .line 94
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;
    .param p13, "hasCallMenu"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    .line 44
    iput-object p3, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    .line 47
    iput p7, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    .line 48
    iput-boolean p10, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    .line 49
    iput p9, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    .line 50
    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    .line 51
    iput p8, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    .line 52
    iput-object p11, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    .line 53
    iput-object p12, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    .line 55
    iput-boolean p13, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    .line 56
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;
    .param p13, "suspect"    # Z
    .param p14, "hasCallMenu"    # Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    .line 62
    iput-object p3, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    .line 65
    iput p7, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    .line 66
    iput-boolean p10, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    .line 67
    iput p9, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    .line 68
    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    .line 69
    iput p8, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    .line 70
    iput-object p11, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    .line 71
    iput-object p12, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    .line 73
    iput-boolean p14, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    .line 74
    if-eqz p13, :cond_0

    .line 75
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    or-int/lit16 v0, v0, 0xf0

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public getAntispamProviderId()I
    .locals 1

    .line 279
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mAntispamProviderId:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .line 187
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    return v0
.end method

.method public getCreditImg()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCreditImg:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 222
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    return v0
.end method

.method public getMarkedCount()I
    .locals 1

    .line 271
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    return v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberType()I
    .locals 1

    .line 296
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .line 183
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .line 259
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 255
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSlogan()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getT9Rank()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lmiui/yellowpage/YellowPagePhone;->mT9Rank:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPinyin()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getWordAd()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mWordAd:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPageId()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    return-wide v0
.end method

.method public getYellowPageName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPagePinyin()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallMenu()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    return v0
.end method

.method public isAntispam()Z
    .locals 1

    .line 160
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMarkedSuspect()Z
    .locals 1

    .line 314
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProviderMiui()Z
    .locals 1

    .line 263
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuspect(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 310
    invoke-virtual {p0}, Lmiui/yellowpage/YellowPagePhone;->isMarkedSuspect()Z

    move-result v0

    return v0
.end method

.method public isT9Searchable()Z
    .locals 1

    .line 229
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 207
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserMarked()Z
    .locals 2

    .line 175
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    return v0
.end method

.method public isYellowPage()Z
    .locals 2

    .line 179
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "id"    # I

    .line 283
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mAntispamProviderId:I

    .line 284
    return-object p0
.end method

.method public setCid(I)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "cid"    # I

    .line 129
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    .line 130
    return-object p0
.end method

.method public setCreditImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "creditImg"    # Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lmiui/yellowpage/YellowPagePhone;->mCreditImg:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setFlag(I)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "flag"    # I

    .line 236
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    .line 237
    return-object p0
.end method

.method public setNumberType(I)V
    .locals 0
    .param p1, "numberType"    # I

    .line 300
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    .line 301
    return-void
.end method

.method public setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 3
    .param p1, "slogan"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mWordAd:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    .line 118
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "t9Rank"    # J

    .line 100
    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mT9Rank:J

    .line 101
    return-object p0
.end method
