.class public Lmiui/yellowpage/YellowPage;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPage$Social;,
        Lmiui/yellowpage/YellowPage$Provider;,
        Lmiui/yellowpage/YellowPage$TagSocial;,
        Lmiui/yellowpage/YellowPage$TagCallMenuNIvr;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPage"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mAuthIconName:Ljava/lang/String;

.field private mBrief:Ljava/lang/String;

.field private mCatId:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mCreditImg:Ljava/lang/String;

.field private mExtraData:Ljava/lang/String;

.field private mFirmUrl:Ljava/lang/String;

.field private mGallery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotCatId:Ljava/lang/String;

.field private mHotSort:I

.field private mIsHot:Z

.field private mIsMasterPage:Z

.field private mIsPreset:Z

.field private mLatitude:Ljava/lang/String;

.field private mLocId:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mMiId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoUrl:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;

.field private mProviderId:I

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mSlogan:Ljava/lang/String;

.field private mSocials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceId:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mYid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    .line 101
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 1
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 640
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/YellowPage;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 644
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage;
    .locals 92
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 650
    move-object/from16 v1, p0

    :try_start_0
    const-string v0, "sid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 651
    .local v2, "yid":J
    const-string v0, "sName"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "name":Ljava/lang/String;
    const-string v4, "provider"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v15, v4

    .line 655
    .local v15, "pid":I
    const-string v4, "sName_py"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 656
    .local v12, "pinyin":Ljava/lang/String;
    const-string v4, "aliasName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 657
    .local v11, "alias":Ljava/lang/String;
    const-string v4, "address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 658
    .local v7, "address":Ljava/lang/String;
    const-string v4, "site"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 659
    .local v5, "url":Ljava/lang/String;
    const-string v4, "firmUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 660
    .local v6, "firmUrl":Ljava/lang/String;
    const-string v4, "creditImg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "creditImg":Ljava/lang/String;
    const-string v8, "sourceUrl"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 662
    .local v14, "sourceUrl":Ljava/lang/String;
    const-string v8, "sourceId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    .line 663
    .local v13, "sourceId":Ljava/lang/String;
    const-string v8, "shInfo"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, "brief":Ljava/lang/String;
    const-string v9, "hotCatId"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 665
    .local v10, "hotCatId":Ljava/lang/String;
    const-string v9, "hotSort"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 666
    .local v9, "hotSort":I
    move-object/from16 v18, v4

    const-string v4, "catId"

    .end local v4    # "creditImg":Ljava/lang/String;
    .local v18, "creditImg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "catId":Ljava/lang/String;
    move-object/from16 v19, v4

    const-string v4, "locId"

    .end local v4    # "catId":Ljava/lang/String;
    .local v19, "catId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "locId":Ljava/lang/String;
    move-object/from16 v20, v4

    const-string v4, "longitude"

    .end local v4    # "locId":Ljava/lang/String;
    .local v20, "locId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "longitude":Ljava/lang/String;
    move-object/from16 v21, v4

    const-string v4, "latitude"

    .end local v4    # "longitude":Ljava/lang/String;
    .local v21, "longitude":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "latitude":Ljava/lang/String;
    move-object/from16 v22, v4

    const-string v4, "miid"

    .end local v4    # "latitude":Ljava/lang/String;
    .local v22, "latitude":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "miId":Ljava/lang/String;
    move-object/from16 v23, v4

    const-string v4, "miSubId"

    .end local v4    # "miId":Ljava/lang/String;
    .local v23, "miId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "miSudId":Ljava/lang/String;
    move-object/from16 v24, v4

    const-string v4, "slogan"

    .end local v4    # "miSudId":Ljava/lang/String;
    .local v24, "miSudId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, "slogan":Ljava/lang/String;
    move-object/from16 v25, v4

    const-string v4, "authIcon"

    .end local v4    # "slogan":Ljava/lang/String;
    .local v25, "slogan":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "authIcon":Ljava/lang/String;
    move-object/from16 v26, v4

    const-string v4, "sType"

    .end local v4    # "authIcon":Ljava/lang/String;
    .local v26, "authIcon":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v27, v5

    const/4 v5, 0x2

    .end local v5    # "url":Ljava/lang/String;
    .local v27, "url":Ljava/lang/String;
    const/16 v28, 0x0

    move-object/from16 v29, v11

    const/4 v11, 0x1

    .end local v11    # "alias":Ljava/lang/String;
    .local v29, "alias":Ljava/lang/String;
    if-ne v4, v5, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move/from16 v4, v28

    :goto_0
    move v5, v4

    .line 676
    .local v5, "isMasterPage":Z
    const-string v4, "hot"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v11, :cond_1

    move v4, v11

    goto :goto_1

    :cond_1
    move/from16 v4, v28

    .line 677
    .local v4, "isHotPage":Z
    :goto_1
    const-string v11, "buildIn"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v31, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .end local v12    # "pinyin":Ljava/lang/String;
    .local v31, "pinyin":Ljava/lang/String;
    move v11, v12

    goto :goto_2

    :cond_2
    move/from16 v11, v28

    .line 678
    .local v11, "isPreset":Z
    :goto_2
    const-string v12, "callMenu"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    .line 681
    .local v17, "hasCallMenu":Z
    const-string v12, "phone"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 682
    .local v12, "phoneArray":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .line 683
    .local v16, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    if-eqz v12, :cond_6

    .line 684
    move-object/from16 v30, v16

    move/from16 v16, v28

    .local v16, "i":I
    .local v30, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    :goto_3
    move/from16 v32, v16

    .end local v16    # "i":I
    .local v32, "i":I
    move/from16 v33, v4

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    .end local v4    # "isHotPage":Z
    .local v33, "isHotPage":Z
    move/from16 v34, v11

    move/from16 v11, v32

    if-ge v11, v4, :cond_5

    .line 685
    .end local v32    # "i":I
    .local v11, "i":I
    .local v34, "isPreset":Z
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 686
    .local v4, "phoneJson":Lorg/json/JSONObject;
    move/from16 v35, v5

    const-string v5, "phone"

    .end local v5    # "isMasterPage":Z
    .local v35, "isMasterPage":Z
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v36, v9

    move-object v9, v5

    .line 687
    .local v9, "number":Ljava/lang/String;
    .local v36, "hotSort":I
    const-string v5, "norPhone"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v10

    move-object v10, v5

    .line 688
    .local v10, "normalizedNumber":Ljava/lang/String;
    .local v37, "hotCatId":Ljava/lang/String;
    const-string v5, "contactName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v8

    move-object v8, v5

    .line 689
    .local v8, "tag":Ljava/lang/String;
    .local v38, "brief":Ljava/lang/String;
    const-string v5, "contactName_py"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 690
    .local v16, "tagPinyin":Ljava/lang/String;
    const-string v5, "t9rank"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v39

    move-wide/from16 v41, v39

    .line 691
    .local v41, "t9Rank":J
    const-string v5, "atdCatId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 692
    .local v5, "atdCatId":I
    move/from16 v43, v5

    const-string v5, "count"

    .end local v5    # "atdCatId":I
    .local v43, "atdCatId":I
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v44, v13

    move v13, v5

    .line 693
    .local v13, "count":I
    .local v44, "sourceId":Ljava/lang/String;
    const-string v5, "provider"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 694
    .local v5, "antispamProviderId":I
    move/from16 v45, v5

    const-string v5, "flag"

    .end local v5    # "antispamProviderId":I
    .local v45, "antispamProviderId":I
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 695
    .local v5, "flag":I
    move/from16 v46, v5

    const-string v5, "hide"

    .end local v5    # "flag":I
    .local v46, "flag":I
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    move/from16 v5, v28

    :goto_4
    move-object/from16 v47, v14

    move v14, v5

    .line 696
    .local v14, "visible":Z
    .local v47, "sourceUrl":Ljava/lang/String;
    if-nez v30, :cond_4

    .line 697
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v5

    goto :goto_5

    .line 700
    :cond_4
    move-object/from16 v5, v30

    .end local v30    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .local v5, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    :goto_5
    new-instance v30, Lmiui/yellowpage/YellowPagePhone;

    const/16 v32, 0x1

    move-object/from16 v48, v18

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v23

    move-object/from16 v54, v24

    move-object/from16 v55, v25

    move-object/from16 v56, v26

    move/from16 v57, v33

    move-object/from16 v18, v4

    move-object/from16 v4, v30

    .end local v4    # "phoneJson":Lorg/json/JSONObject;
    .end local v19    # "catId":Ljava/lang/String;
    .end local v20    # "locId":Ljava/lang/String;
    .end local v21    # "longitude":Ljava/lang/String;
    .end local v22    # "latitude":Ljava/lang/String;
    .end local v23    # "miId":Ljava/lang/String;
    .end local v24    # "miSudId":Ljava/lang/String;
    .end local v25    # "slogan":Ljava/lang/String;
    .end local v26    # "authIcon":Ljava/lang/String;
    .end local v33    # "isHotPage":Z
    .local v18, "phoneJson":Lorg/json/JSONObject;
    .local v48, "creditImg":Ljava/lang/String;
    .local v49, "catId":Ljava/lang/String;
    .local v50, "locId":Ljava/lang/String;
    .local v51, "longitude":Ljava/lang/String;
    .local v52, "latitude":Ljava/lang/String;
    .local v53, "miId":Ljava/lang/String;
    .local v54, "miSudId":Ljava/lang/String;
    .local v55, "slogan":Ljava/lang/String;
    .local v56, "authIcon":Ljava/lang/String;
    .local v57, "isHotPage":Z
    move-object/from16 v64, v5

    move-object/from16 v59, v6

    move-object/from16 v58, v27

    move/from16 v60, v35

    move/from16 v61, v43

    move/from16 v62, v45

    move/from16 v63, v46

    move-wide v5, v2

    .end local v5    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v6    # "firmUrl":Ljava/lang/String;
    .end local v27    # "url":Ljava/lang/String;
    .end local v35    # "isMasterPage":Z
    .end local v43    # "atdCatId":I
    .end local v45    # "antispamProviderId":I
    .end local v46    # "flag":I
    .local v58, "url":Ljava/lang/String;
    .local v59, "firmUrl":Ljava/lang/String;
    .local v60, "isMasterPage":Z
    .local v61, "atdCatId":I
    .local v62, "antispamProviderId":I
    .local v63, "flag":I
    .local v64, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    move-object/from16 v65, v7

    move-object v7, v0

    .end local v7    # "address":Ljava/lang/String;
    .local v65, "address":Ljava/lang/String;
    move/from16 v19, v11

    move-object/from16 v66, v29

    move/from16 v67, v34

    const/16 v20, 0x1

    move/from16 v11, v32

    .end local v11    # "i":I
    .end local v29    # "alias":Ljava/lang/String;
    .end local v34    # "isPreset":Z
    .local v19, "i":I
    .local v66, "alias":Ljava/lang/String;
    .local v67, "isPreset":Z
    move-object/from16 v21, v12

    move-object/from16 v68, v31

    move v12, v15

    .end local v12    # "phoneArray":Lorg/json/JSONArray;
    .end local v31    # "pinyin":Ljava/lang/String;
    .local v21, "phoneArray":Lorg/json/JSONArray;
    .local v68, "pinyin":Ljava/lang/String;
    move/from16 v69, v15

    move-object/from16 v15, v68

    .end local v15    # "pid":I
    .local v69, "pid":I
    invoke-direct/range {v4 .. v17}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, v30

    .line 704
    .local v4, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    move-wide/from16 v5, v41

    invoke-virtual {v4, v5, v6}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    .line 705
    .end local v41    # "t9Rank":J
    .local v5, "t9Rank":J
    move-object/from16 v7, v55

    invoke-virtual {v4, v7}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    .line 706
    .end local v55    # "slogan":Ljava/lang/String;
    .local v7, "slogan":Ljava/lang/String;
    move/from16 v11, v61

    invoke-virtual {v4, v11}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    .line 707
    .end local v61    # "atdCatId":I
    .local v11, "atdCatId":I
    move/from16 v12, v63

    invoke-virtual {v4, v12}, Lmiui/yellowpage/YellowPagePhone;->setFlag(I)Lmiui/yellowpage/YellowPagePhone;

    .line 708
    .end local v63    # "flag":I
    .local v12, "flag":I
    move/from16 v15, v62

    invoke-virtual {v4, v15}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    .line 709
    .end local v62    # "antispamProviderId":I
    .local v15, "antispamProviderId":I
    move-wide/from16 v70, v5

    move-object/from16 v5, v48

    invoke-virtual {v4, v5}, Lmiui/yellowpage/YellowPagePhone;->setCreditImg(Ljava/lang/String;)V

    .line 710
    .end local v48    # "creditImg":Ljava/lang/String;
    .local v5, "creditImg":Ljava/lang/String;
    .local v70, "t9Rank":J
    move-object/from16 v6, v64

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    .end local v4    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "normalizedNumber":Ljava/lang/String;
    .end local v11    # "atdCatId":I
    .end local v12    # "flag":I
    .end local v13    # "count":I
    .end local v14    # "visible":Z
    .end local v15    # "antispamProviderId":I
    .end local v16    # "tagPinyin":Ljava/lang/String;
    .end local v18    # "phoneJson":Lorg/json/JSONObject;
    .end local v64    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v70    # "t9Rank":J
    .local v6, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    add-int/lit8 v16, v19, 0x1

    .end local v19    # "i":I
    .local v16, "i":I
    move-object/from16 v18, v5

    move-object/from16 v30, v6

    move-object/from16 v25, v7

    move-object/from16 v12, v21

    move/from16 v9, v36

    move-object/from16 v10, v37

    move-object/from16 v8, v38

    move-object/from16 v13, v44

    move-object/from16 v14, v47

    move-object/from16 v19, v49

    move-object/from16 v20, v50

    move-object/from16 v21, v51

    move-object/from16 v22, v52

    move-object/from16 v23, v53

    move-object/from16 v24, v54

    move-object/from16 v26, v56

    move/from16 v4, v57

    move-object/from16 v27, v58

    move-object/from16 v6, v59

    move/from16 v5, v60

    move-object/from16 v7, v65

    move-object/from16 v29, v66

    move/from16 v11, v67

    move-object/from16 v31, v68

    move/from16 v15, v69

    goto/16 :goto_3

    .line 715
    .end local v16    # "i":I
    .end local v36    # "hotSort":I
    .end local v37    # "hotCatId":Ljava/lang/String;
    .end local v38    # "brief":Ljava/lang/String;
    .end local v44    # "sourceId":Ljava/lang/String;
    .end local v47    # "sourceUrl":Ljava/lang/String;
    .end local v49    # "catId":Ljava/lang/String;
    .end local v50    # "locId":Ljava/lang/String;
    .end local v51    # "longitude":Ljava/lang/String;
    .end local v52    # "latitude":Ljava/lang/String;
    .end local v53    # "miId":Ljava/lang/String;
    .end local v54    # "miSudId":Ljava/lang/String;
    .end local v56    # "authIcon":Ljava/lang/String;
    .end local v57    # "isHotPage":Z
    .end local v58    # "url":Ljava/lang/String;
    .end local v59    # "firmUrl":Ljava/lang/String;
    .end local v60    # "isMasterPage":Z
    .end local v65    # "address":Ljava/lang/String;
    .end local v66    # "alias":Ljava/lang/String;
    .end local v67    # "isPreset":Z
    .end local v68    # "pinyin":Ljava/lang/String;
    .end local v69    # "pid":I
    .local v5, "isMasterPage":Z
    .local v6, "firmUrl":Ljava/lang/String;
    .local v7, "address":Ljava/lang/String;
    .local v8, "brief":Ljava/lang/String;
    .local v9, "hotSort":I
    .local v10, "hotCatId":Ljava/lang/String;
    .local v12, "phoneArray":Lorg/json/JSONArray;
    .local v13, "sourceId":Ljava/lang/String;
    .local v14, "sourceUrl":Ljava/lang/String;
    .local v15, "pid":I
    .local v18, "creditImg":Ljava/lang/String;
    .local v19, "catId":Ljava/lang/String;
    .restart local v20    # "locId":Ljava/lang/String;
    .local v21, "longitude":Ljava/lang/String;
    .restart local v22    # "latitude":Ljava/lang/String;
    .restart local v23    # "miId":Ljava/lang/String;
    .restart local v24    # "miSudId":Ljava/lang/String;
    .restart local v25    # "slogan":Ljava/lang/String;
    .restart local v26    # "authIcon":Ljava/lang/String;
    .restart local v27    # "url":Ljava/lang/String;
    .restart local v29    # "alias":Ljava/lang/String;
    .restart local v30    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .restart local v31    # "pinyin":Ljava/lang/String;
    .restart local v33    # "isHotPage":Z
    .restart local v34    # "isPreset":Z
    :cond_5
    move/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v65, v7

    move-object/from16 v38, v8

    move/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v44, v13

    move-object/from16 v47, v14

    move/from16 v69, v15

    move-object/from16 v5, v18

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v23

    move-object/from16 v54, v24

    move-object/from16 v7, v25

    move-object/from16 v56, v26

    move-object/from16 v58, v27

    move-object/from16 v66, v29

    move-object/from16 v68, v31

    move/from16 v57, v33

    move/from16 v67, v34

    move-object/from16 v21, v12

    move-object/from16 v4, v30

    .end local v6    # "firmUrl":Ljava/lang/String;
    .end local v8    # "brief":Ljava/lang/String;
    .end local v9    # "hotSort":I
    .end local v10    # "hotCatId":Ljava/lang/String;
    .end local v12    # "phoneArray":Lorg/json/JSONArray;
    .end local v13    # "sourceId":Ljava/lang/String;
    .end local v14    # "sourceUrl":Ljava/lang/String;
    .end local v15    # "pid":I
    .end local v18    # "creditImg":Ljava/lang/String;
    .end local v19    # "catId":Ljava/lang/String;
    .end local v20    # "locId":Ljava/lang/String;
    .end local v22    # "latitude":Ljava/lang/String;
    .end local v23    # "miId":Ljava/lang/String;
    .end local v24    # "miSudId":Ljava/lang/String;
    .end local v25    # "slogan":Ljava/lang/String;
    .end local v26    # "authIcon":Ljava/lang/String;
    .end local v27    # "url":Ljava/lang/String;
    .end local v29    # "alias":Ljava/lang/String;
    .end local v31    # "pinyin":Ljava/lang/String;
    .end local v33    # "isHotPage":Z
    .end local v34    # "isPreset":Z
    .local v5, "creditImg":Ljava/lang/String;
    .local v7, "slogan":Ljava/lang/String;
    .local v21, "phoneArray":Lorg/json/JSONArray;
    .restart local v36    # "hotSort":I
    .restart local v37    # "hotCatId":Ljava/lang/String;
    .restart local v38    # "brief":Ljava/lang/String;
    .restart local v44    # "sourceId":Ljava/lang/String;
    .restart local v47    # "sourceUrl":Ljava/lang/String;
    .restart local v49    # "catId":Ljava/lang/String;
    .restart local v50    # "locId":Ljava/lang/String;
    .restart local v51    # "longitude":Ljava/lang/String;
    .restart local v52    # "latitude":Ljava/lang/String;
    .restart local v53    # "miId":Ljava/lang/String;
    .restart local v54    # "miSudId":Ljava/lang/String;
    .restart local v56    # "authIcon":Ljava/lang/String;
    .restart local v57    # "isHotPage":Z
    .restart local v58    # "url":Ljava/lang/String;
    .restart local v59    # "firmUrl":Ljava/lang/String;
    .restart local v60    # "isMasterPage":Z
    .restart local v65    # "address":Ljava/lang/String;
    .restart local v66    # "alias":Ljava/lang/String;
    .restart local v67    # "isPreset":Z
    .restart local v68    # "pinyin":Ljava/lang/String;
    .restart local v69    # "pid":I
    goto :goto_6

    .end local v30    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v36    # "hotSort":I
    .end local v37    # "hotCatId":Ljava/lang/String;
    .end local v38    # "brief":Ljava/lang/String;
    .end local v44    # "sourceId":Ljava/lang/String;
    .end local v47    # "sourceUrl":Ljava/lang/String;
    .end local v49    # "catId":Ljava/lang/String;
    .end local v50    # "locId":Ljava/lang/String;
    .end local v51    # "longitude":Ljava/lang/String;
    .end local v52    # "latitude":Ljava/lang/String;
    .end local v53    # "miId":Ljava/lang/String;
    .end local v54    # "miSudId":Ljava/lang/String;
    .end local v56    # "authIcon":Ljava/lang/String;
    .end local v57    # "isHotPage":Z
    .end local v58    # "url":Ljava/lang/String;
    .end local v59    # "firmUrl":Ljava/lang/String;
    .end local v60    # "isMasterPage":Z
    .end local v65    # "address":Ljava/lang/String;
    .end local v66    # "alias":Ljava/lang/String;
    .end local v67    # "isPreset":Z
    .end local v68    # "pinyin":Ljava/lang/String;
    .end local v69    # "pid":I
    .local v4, "isHotPage":Z
    .local v5, "isMasterPage":Z
    .restart local v6    # "firmUrl":Ljava/lang/String;
    .local v7, "address":Ljava/lang/String;
    .restart local v8    # "brief":Ljava/lang/String;
    .restart local v9    # "hotSort":I
    .restart local v10    # "hotCatId":Ljava/lang/String;
    .local v11, "isPreset":Z
    .restart local v12    # "phoneArray":Lorg/json/JSONArray;
    .restart local v13    # "sourceId":Ljava/lang/String;
    .restart local v14    # "sourceUrl":Ljava/lang/String;
    .restart local v15    # "pid":I
    .local v16, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .restart local v18    # "creditImg":Ljava/lang/String;
    .restart local v19    # "catId":Ljava/lang/String;
    .restart local v20    # "locId":Ljava/lang/String;
    .local v21, "longitude":Ljava/lang/String;
    .restart local v22    # "latitude":Ljava/lang/String;
    .restart local v23    # "miId":Ljava/lang/String;
    .restart local v24    # "miSudId":Ljava/lang/String;
    .restart local v25    # "slogan":Ljava/lang/String;
    .restart local v26    # "authIcon":Ljava/lang/String;
    .restart local v27    # "url":Ljava/lang/String;
    .restart local v29    # "alias":Ljava/lang/String;
    .restart local v31    # "pinyin":Ljava/lang/String;
    :cond_6
    move/from16 v57, v4

    move/from16 v60, v5

    move-object/from16 v59, v6

    move-object/from16 v65, v7

    move-object/from16 v38, v8

    move/from16 v36, v9

    move-object/from16 v37, v10

    move/from16 v67, v11

    move-object/from16 v44, v13

    move-object/from16 v47, v14

    move/from16 v69, v15

    move-object/from16 v5, v18

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v23

    move-object/from16 v54, v24

    move-object/from16 v7, v25

    move-object/from16 v56, v26

    move-object/from16 v58, v27

    move-object/from16 v66, v29

    move-object/from16 v68, v31

    move-object/from16 v21, v12

    move-object/from16 v4, v16

    .end local v6    # "firmUrl":Ljava/lang/String;
    .end local v8    # "brief":Ljava/lang/String;
    .end local v9    # "hotSort":I
    .end local v10    # "hotCatId":Ljava/lang/String;
    .end local v11    # "isPreset":Z
    .end local v12    # "phoneArray":Lorg/json/JSONArray;
    .end local v13    # "sourceId":Ljava/lang/String;
    .end local v14    # "sourceUrl":Ljava/lang/String;
    .end local v15    # "pid":I
    .end local v16    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v18    # "creditImg":Ljava/lang/String;
    .end local v19    # "catId":Ljava/lang/String;
    .end local v20    # "locId":Ljava/lang/String;
    .end local v22    # "latitude":Ljava/lang/String;
    .end local v23    # "miId":Ljava/lang/String;
    .end local v24    # "miSudId":Ljava/lang/String;
    .end local v25    # "slogan":Ljava/lang/String;
    .end local v26    # "authIcon":Ljava/lang/String;
    .end local v27    # "url":Ljava/lang/String;
    .end local v29    # "alias":Ljava/lang/String;
    .end local v31    # "pinyin":Ljava/lang/String;
    .local v4, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .local v5, "creditImg":Ljava/lang/String;
    .local v7, "slogan":Ljava/lang/String;
    .local v21, "phoneArray":Lorg/json/JSONArray;
    .restart local v36    # "hotSort":I
    .restart local v37    # "hotCatId":Ljava/lang/String;
    .restart local v38    # "brief":Ljava/lang/String;
    .restart local v44    # "sourceId":Ljava/lang/String;
    .restart local v47    # "sourceUrl":Ljava/lang/String;
    .restart local v49    # "catId":Ljava/lang/String;
    .restart local v50    # "locId":Ljava/lang/String;
    .restart local v51    # "longitude":Ljava/lang/String;
    .restart local v52    # "latitude":Ljava/lang/String;
    .restart local v53    # "miId":Ljava/lang/String;
    .restart local v54    # "miSudId":Ljava/lang/String;
    .restart local v56    # "authIcon":Ljava/lang/String;
    .restart local v57    # "isHotPage":Z
    .restart local v58    # "url":Ljava/lang/String;
    .restart local v59    # "firmUrl":Ljava/lang/String;
    .restart local v60    # "isMasterPage":Z
    .restart local v65    # "address":Ljava/lang/String;
    .restart local v66    # "alias":Ljava/lang/String;
    .restart local v67    # "isPreset":Z
    .restart local v68    # "pinyin":Ljava/lang/String;
    .restart local v69    # "pid":I
    :goto_6
    const-string v6, "snsInfo"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 716
    .local v6, "socialArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 717
    .local v8, "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 718
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 719
    move/from16 v9, v28

    .local v9, "i":I
    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 720
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 721
    .local v10, "socialJson":Lorg/json/JSONObject;
    const-string v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 722
    .local v11, "ypUrl":Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 723
    .local v12, "ypName":Ljava/lang/String;
    const-string v13, "provider"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 724
    .local v13, "providerId":I
    new-instance v14, Lmiui/yellowpage/YellowPage$Social;

    invoke-direct {v14, v11, v12, v13}, Lmiui/yellowpage/YellowPage$Social;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 725
    .local v14, "social":Lmiui/yellowpage/YellowPage$Social;
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v10    # "socialJson":Lorg/json/JSONObject;
    .end local v11    # "ypUrl":Ljava/lang/String;
    .end local v12    # "ypName":Ljava/lang/String;
    .end local v13    # "providerId":I
    .end local v14    # "social":Lmiui/yellowpage/YellowPage$Social;
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 730
    .end local v9    # "i":I
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v9, "providers":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    const-string v10, "providerList"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 732
    .local v10, "providerArray":Lorg/json/JSONArray;
    if-eqz v10, :cond_9

    .line 733
    nop

    .local v28, "i":I
    :goto_8
    move/from16 v11, v28

    .end local v28    # "i":I
    .local v11, "i":I
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 734
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lmiui/yellowpage/YellowPage$Provider;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v12

    .line 735
    .local v12, "provider":Lmiui/yellowpage/YellowPage$Provider;
    if-eqz v12, :cond_8

    .line 736
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v12    # "provider":Lmiui/yellowpage/YellowPage$Provider;
    :cond_8
    add-int/lit8 v28, v11, 0x1

    .end local v11    # "i":I
    .restart local v28    # "i":I
    goto :goto_8

    .line 741
    .end local v28    # "i":I
    :cond_9
    const-string v11, "photo"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 742
    .local v11, "photoUrl":Ljava/lang/String;
    const-string v12, "thumbnail"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "thumbnailUrl":Ljava/lang/String;
    const-string v13, "extraData"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 746
    .local v13, "extraData":Ljava/lang/String;
    new-instance v14, Lmiui/yellowpage/YellowPage;

    invoke-direct {v14}, Lmiui/yellowpage/YellowPage;-><init>()V

    invoke-virtual {v14, v2, v3}, Lmiui/yellowpage/YellowPage;->setId(J)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 747
    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 748
    move-object/from16 v15, v68

    invoke-virtual {v14, v15}, Lmiui/yellowpage/YellowPage;->setPinyin(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 749
    .end local v68    # "pinyin":Ljava/lang/String;
    .local v15, "pinyin":Ljava/lang/String;
    move-object/from16 v72, v0

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setBrief(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 750
    .end local v38    # "brief":Ljava/lang/String;
    .local v0, "brief":Ljava/lang/String;
    .local v72, "name":Ljava/lang/String;
    move-object/from16 v73, v0

    move-object/from16 v0, v66

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setAlias(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 751
    .end local v66    # "alias":Ljava/lang/String;
    .local v0, "alias":Ljava/lang/String;
    .local v73, "brief":Ljava/lang/String;
    move-object/from16 v74, v0

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setAddress(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 752
    .end local v65    # "address":Ljava/lang/String;
    .local v0, "address":Ljava/lang/String;
    .local v74, "alias":Ljava/lang/String;
    invoke-virtual {v14, v4}, Lmiui/yellowpage/YellowPage;->setPhones(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 753
    invoke-virtual {v14, v8}, Lmiui/yellowpage/YellowPage;->setSocials(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 754
    invoke-virtual {v14, v12}, Lmiui/yellowpage/YellowPage;->setThumbnailName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 755
    invoke-virtual {v14, v11}, Lmiui/yellowpage/YellowPage;->setPhotoName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 756
    move-object/from16 v75, v0

    move/from16 v0, v69

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setProviderId(I)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 757
    .end local v69    # "pid":I
    .local v0, "pid":I
    .local v75, "address":Ljava/lang/String;
    move/from16 v76, v0

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 758
    .end local v58    # "url":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    .local v76, "pid":I
    move-object/from16 v77, v0

    move-object/from16 v0, v59

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setFirmUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 759
    .end local v59    # "firmUrl":Ljava/lang/String;
    .local v0, "firmUrl":Ljava/lang/String;
    .local v77, "url":Ljava/lang/String;
    invoke-virtual {v14, v5}, Lmiui/yellowpage/YellowPage;->setCreditImg(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 760
    move-object/from16 v78, v0

    move-object/from16 v0, v47

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 761
    .end local v47    # "sourceUrl":Ljava/lang/String;
    .local v0, "sourceUrl":Ljava/lang/String;
    .local v78, "firmUrl":Ljava/lang/String;
    move-object/from16 v79, v0

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setSourceId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 762
    .end local v44    # "sourceId":Ljava/lang/String;
    .local v0, "sourceId":Ljava/lang/String;
    .local v79, "sourceUrl":Ljava/lang/String;
    move-object/from16 v80, v0

    move/from16 v0, v60

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setIsMasterPage(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 763
    .end local v60    # "isMasterPage":Z
    .local v0, "isMasterPage":Z
    .local v80, "sourceId":Ljava/lang/String;
    move/from16 v81, v0

    move/from16 v0, v67

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setIsPreset(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 764
    .end local v67    # "isPreset":Z
    .local v0, "isPreset":Z
    .local v81, "isMasterPage":Z
    move/from16 v82, v0

    move/from16 v0, v57

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setIsHot(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 765
    .end local v57    # "isHotPage":Z
    .local v0, "isHotPage":Z
    .local v82, "isPreset":Z
    move/from16 v83, v0

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setHotCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 766
    .end local v37    # "hotCatId":Ljava/lang/String;
    .local v0, "hotCatId":Ljava/lang/String;
    .local v83, "isHotPage":Z
    move-object/from16 v84, v0

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setHotSort(I)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 767
    .end local v36    # "hotSort":I
    .local v0, "hotSort":I
    .local v84, "hotCatId":Ljava/lang/String;
    move/from16 v85, v0

    move-object/from16 v0, v49

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 768
    .end local v49    # "catId":Ljava/lang/String;
    .local v0, "catId":Ljava/lang/String;
    .local v85, "hotSort":I
    move-object/from16 v86, v0

    move-object/from16 v0, v50

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setLocId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 769
    .end local v50    # "locId":Ljava/lang/String;
    .local v0, "locId":Ljava/lang/String;
    .local v86, "catId":Ljava/lang/String;
    move-object/from16 v87, v0

    move-object/from16 v0, v51

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setLongitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 770
    .end local v51    # "longitude":Ljava/lang/String;
    .local v0, "longitude":Ljava/lang/String;
    .local v87, "locId":Ljava/lang/String;
    move-object/from16 v88, v0

    move-object/from16 v0, v52

    invoke-virtual {v14, v0}, Lmiui/yellowpage/YellowPage;->setLatitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v14

    .line 771
    .end local v52    # "latitude":Ljava/lang/String;
    .local v0, "latitude":Ljava/lang/String;
    .local v88, "longitude":Ljava/lang/String;
    move-object/from16 v89, v0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "latitude":Ljava/lang/String;
    .local v89, "latitude":Ljava/lang/String;
    invoke-direct {v14, v0}, Lmiui/yellowpage/YellowPage;->setContent(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 772
    invoke-virtual {v0, v7}, Lmiui/yellowpage/YellowPage;->setSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 773
    invoke-virtual {v0, v9}, Lmiui/yellowpage/YellowPage;->setProviderList(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 774
    move-object/from16 v14, v54

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    .end local v54    # "miSudId":Ljava/lang/String;
    .local v14, "miSudId":Ljava/lang/String;
    if-eqz v16, :cond_a

    move-wide/from16 v90, v2

    move-object/from16 v1, v53

    move-object v2, v1

    goto :goto_9

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v90, v2

    move-object/from16 v2, v53

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v53    # "miId":Ljava/lang/String;
    .local v2, "miId":Ljava/lang/String;
    .local v90, "yid":J
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Lmiui/yellowpage/YellowPage;->setMiId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 775
    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lmiui/yellowpage/YellowPage;->setAuthIconName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 776
    .end local v56    # "authIcon":Ljava/lang/String;
    .local v1, "authIcon":Ljava/lang/String;
    invoke-virtual {v0, v13}, Lmiui/yellowpage/YellowPage;->setExtraData(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    return-object v0

    .line 777
    .end local v1    # "authIcon":Ljava/lang/String;
    .end local v2    # "miId":Ljava/lang/String;
    .end local v4    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v5    # "creditImg":Ljava/lang/String;
    .end local v6    # "socialArray":Lorg/json/JSONArray;
    .end local v7    # "slogan":Ljava/lang/String;
    .end local v8    # "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    .end local v9    # "providers":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    .end local v10    # "providerArray":Lorg/json/JSONArray;
    .end local v11    # "photoUrl":Ljava/lang/String;
    .end local v12    # "thumbnailUrl":Ljava/lang/String;
    .end local v13    # "extraData":Ljava/lang/String;
    .end local v14    # "miSudId":Ljava/lang/String;
    .end local v15    # "pinyin":Ljava/lang/String;
    .end local v17    # "hasCallMenu":Z
    .end local v21    # "phoneArray":Lorg/json/JSONArray;
    .end local v72    # "name":Ljava/lang/String;
    .end local v73    # "brief":Ljava/lang/String;
    .end local v74    # "alias":Ljava/lang/String;
    .end local v75    # "address":Ljava/lang/String;
    .end local v76    # "pid":I
    .end local v77    # "url":Ljava/lang/String;
    .end local v78    # "firmUrl":Ljava/lang/String;
    .end local v79    # "sourceUrl":Ljava/lang/String;
    .end local v80    # "sourceId":Ljava/lang/String;
    .end local v81    # "isMasterPage":Z
    .end local v82    # "isPreset":Z
    .end local v83    # "isHotPage":Z
    .end local v84    # "hotCatId":Ljava/lang/String;
    .end local v85    # "hotSort":I
    .end local v86    # "catId":Ljava/lang/String;
    .end local v87    # "locId":Ljava/lang/String;
    .end local v88    # "longitude":Ljava/lang/String;
    .end local v89    # "latitude":Ljava/lang/String;
    .end local v90    # "yid":J
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 780
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private setContent(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 481
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mContent:Ljava/lang/String;

    .line 482
    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthIconName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAuthIconName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mCatId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditImg()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mCreditImg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmUrl()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mFirmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mGallery:Ljava/util/List;

    return-object v0
.end method

.method public getHotCatId()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getHotSort()I
    .locals 1

    .line 541
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mHotSort:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lmiui/yellowpage/YellowPage;->mYid:J

    return-wide v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocId()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLocId:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMiId()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mMiId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 608
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 609
    return-object v1

    .line 611
    :cond_0
    invoke-static {p1, p2}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "normalizedNumber":Ljava/lang/String;
    iget-object v2, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 614
    iget-object v2, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/yellowpage/YellowPagePhone;

    .line 615
    .local v3, "phone":Lmiui/yellowpage/YellowPagePhone;
    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 616
    return-object v3

    .line 618
    .end local v3    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_1
    goto :goto_0

    .line 620
    :cond_2
    return-object v1
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 370
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .line 348
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    return v0
.end method

.method public getProviderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 333
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSocials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSocials:Ljava/util/List;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsHot:Z

    return v0
.end method

.method public isMasterPage()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsMasterPage:Z

    return v0
.end method

.method public isPreset()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsPreset:Z

    return v0
.end method

.method public isProviderMiui()Z
    .locals 1

    .line 496
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAddress:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAlias:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public setAuthIconName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "authIconName"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAuthIconName:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public setBrief(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "brief"    # Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mBrief:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public setCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "catId"    # Ljava/lang/String;

    .line 563
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mCatId:Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public setCreditImg(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "creditImg"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mCreditImg:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setExtraData(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "mExtraData"    # Ljava/lang/String;

    .line 634
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mExtraData:Ljava/lang/String;

    .line 635
    return-object p0
.end method

.method public setFirmUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "firmUrl"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mFirmUrl:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setGallery(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .line 273
    .local p1, "gallery":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mGallery:Ljava/util/List;

    .line 274
    return-object p0
.end method

.method public setHotCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 548
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    .line 549
    return-object p0
.end method

.method public setHotSort(I)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "sort"    # I

    .line 533
    iput p1, p0, Lmiui/yellowpage/YellowPage;->mHotSort:I

    .line 534
    return-object p0
.end method

.method public setId(J)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # J

    .line 168
    iput-wide p1, p0, Lmiui/yellowpage/YellowPage;->mYid:J

    .line 169
    return-object p0
.end method

.method public setIsHot(Z)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "hot"    # Z

    .line 451
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsHot:Z

    .line 452
    return-object p0
.end method

.method public setIsMasterPage(Z)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "master"    # Z

    .line 436
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsMasterPage:Z

    .line 437
    return-object p0
.end method

.method public setIsPreset(Z)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "isPreset"    # Z

    .line 466
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsPreset:Z

    .line 467
    return-object p0
.end method

.method public setLatitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLatitude:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setLocId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 578
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLocId:Ljava/lang/String;

    .line 579
    return-object p0
.end method

.method public setLongitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLongitude:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setMiId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "miId"    # Ljava/lang/String;

    .line 362
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mMiId:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mName:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public setPhones(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .line 318
    .local p1, "phones":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    .line 319
    return-object p0
.end method

.method public setPhotoName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPhotoUrl:Ljava/lang/String;

    .line 385
    return-object p0
.end method

.method public setPinyin(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPinyin:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public setProviderId(I)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # I

    .line 340
    iput p1, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    .line 341
    return-object p0
.end method

.method public setProviderList(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .line 600
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mProviders:Ljava/util/List;

    .line 601
    return-object p0
.end method

.method public setSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "slogan"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSlogan:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setSocials(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .line 421
    .local p1, "socials":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSocials:Ljava/util/List;

    .line 422
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 518
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSourceId:Ljava/lang/String;

    .line 519
    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 503
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSourceUrl:Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public setThumbnailName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mUrl:Ljava/lang/String;

    .line 184
    return-object p0
.end method
