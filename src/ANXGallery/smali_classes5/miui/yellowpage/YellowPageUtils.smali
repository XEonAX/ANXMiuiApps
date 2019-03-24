.class public Lmiui/yellowpage/YellowPageUtils;
.super Ljava/lang/Object;
.source "YellowPageUtils.java"


# static fields
.field private static final ANTISPAM_COLUMN_CID:I = 0x1

.field private static final ANTISPAM_COLUMN_MARKED_COUNT:I = 0x3

.field private static final ANTISPAM_COLUMN_NORMALIZED_NUMBER:I = 0x4

.field private static final ANTISPAM_COLUMN_NUMBER_TYPE:I = 0x5

.field private static final ANTISPAM_COLUMN_PID:I = 0x0

.field private static final ANTISPAM_COLUMN_TYPE:I = 0x2

.field private static final ANTISPAM_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_ANTISPAM:Ljava/lang/String; = "cloud_antispam"

.field private static final CLOUD_ANTISPAM_DISABLE:I = 0x0

.field private static final CLOUD_ANTISPAM_ENANBLE:I = 0x1

.field private static final PHONE_COLUMN_ATD_COUNT:I = 0xf

.field private static final PHONE_COLUMN_ATD_ID:I = 0xd

.field private static final PHONE_COLUMN_ATD_PROVIDER:I = 0x10

.field private static final PHONE_COLUMN_CALL_MENU:I = 0xb

.field private static final PHONE_COLUMN_CREDIT_IMG:I = 0x11

.field private static final PHONE_COLUMN_NORMALIZED_NUMBER:I = 0x9

.field private static final PHONE_COLUMN_NUMBER_TYPE:I = 0x12

.field private static final PHONE_COLUMN_PHOTO_URL:I = 0x3

.field private static final PHONE_COLUMN_PROVIDER_ID:I = 0x1

.field private static final PHONE_COLUMN_SLOGAN:I = 0xe

.field private static final PHONE_COLUMN_SUSPECT:I = 0xa

.field private static final PHONE_COLUMN_T9_RANK:I = 0xc

.field private static final PHONE_COLUMN_TAG:I = 0x2

.field private static final PHONE_COLUMN_TAG_PINYIN:I = 0x7

.field private static final PHONE_COLUMN_THUMBNAIL_URL:I = 0x4

.field private static final PHONE_COLUMN_VISIBLE:I = 0x8

.field private static final PHONE_COLUMN_YID:I = 0x0

.field private static final PHONE_COLUMN_YP_NAME:I = 0x5

.field private static final PHONE_COLUMN_YP_NAME_PINYIN:I = 0x6

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "YellowPageUtils"

.field private static final sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviders:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/YellowPageProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 33
    const-string v0, "yid"

    const-string v1, "provider_id"

    const-string v2, "tag"

    const-string v3, "photo_url"

    const-string v4, "thumbnail_url"

    const-string v5, "yellow_page_name"

    const-string v6, "yellow_page_name_pinyin"

    const-string v7, "tag_pinyin"

    const-string v8, "hide"

    const-string v9, "normalized_number"

    const-string v10, "suspect"

    const-string v11, "call_menu"

    const-string v12, "t9_rank"

    const-string v13, "atd_category_id"

    const-string v14, "slogan"

    const-string v15, "atd_count"

    const-string v16, "atd_provider"

    const-string v17, "credit_img"

    const-string v18, "number_type"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 75
    const-string v1, "pid"

    const-string v2, "cid"

    const-string v3, "type"

    const-string v4, "marked_count"

    const-string v5, "normalized_number"

    const-string v6, "number_type"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "c"    # Landroid/database/Cursor;

    .line 980
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 984
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 986
    :cond_1
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 987
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    :cond_3
    return v0

    .line 981
    :cond_4
    :goto_0
    return v0
.end method

.method private static varargs buildAntispamCategorySelection([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "types"    # [Ljava/lang/Integer;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v0, "selectionBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 617
    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v2    # "i":I
    :cond_1
    const-string v2, "("

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    move-object/from16 v0, p1

    .line 996
    const/4 v1, 0x0

    .line 997
    .local v1, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 998
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 999
    .local v2, "cid":I
    if-nez v2, :cond_0

    .line 1000
    const-string v3, "YellowPageUtils"

    const-string v4, "invalid cid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    nop

    .line 996
    move-object/from16 v15, p0

    goto :goto_0

    .line 1004
    :cond_0
    move-object/from16 v15, p0

    invoke-static {v15, v2}, Lmiui/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 1009
    .local v14, "cidName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1010
    goto :goto_0

    .line 1013
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1014
    .local v17, "providerId":I
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v13, 0x3

    if-ne v4, v13, :cond_2

    .line 1015
    move v4, v13

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    move v12, v4

    .line 1016
    .local v12, "type":I
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1017
    .local v18, "markedCount":I
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1018
    .local v19, "normalizedNumber":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1020
    .local v11, "numberType":I
    new-instance v20, Lmiui/yellowpage/YellowPagePhone;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 1021
    if-ne v3, v12, :cond_3

    if-eqz v11, :cond_3

    const-string v3, ""

    move-object v7, v3

    goto :goto_2

    :cond_3
    move-object v7, v14

    :goto_2
    const/16 v16, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v3, v20

    move-object/from16 v8, p2

    move-object/from16 v9, v19

    move v10, v12

    move/from16 v23, v11

    move/from16 v11, v17

    .end local v11    # "numberType":I
    .local v23, "numberType":I
    move/from16 v24, v12

    move/from16 v12, v18

    .end local v12    # "type":I
    .local v24, "type":I
    move/from16 v13, v16

    move-object/from16 v25, v14

    move-object/from16 v14, v21

    .end local v14    # "cidName":Ljava/lang/String;
    .local v25, "cidName":Ljava/lang/String;
    move-object/from16 v15, v22

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V

    .line 1024
    .local v3, "phone":Lmiui/yellowpage/YellowPagePhone;
    move/from16 v4, v23

    invoke-virtual {v3, v4}, Lmiui/yellowpage/YellowPagePhone;->setNumberType(I)V

    .line 1026
    .end local v23    # "numberType":I
    .local v4, "numberType":I
    if-eqz v1, :cond_4

    move/from16 v5, v24

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .end local v24    # "type":I
    .local v5, "type":I
    goto :goto_3

    .line 1027
    .end local v5    # "type":I
    .restart local v24    # "type":I
    :cond_4
    move/from16 v5, v24

    const/4 v6, 0x3

    .end local v24    # "type":I
    .restart local v5    # "type":I
    :goto_3
    move-object v1, v3

    .line 1028
    if-ne v5, v6, :cond_5

    .line 1029
    goto :goto_4

    .line 1032
    .end local v2    # "cid":I
    .end local v3    # "phone":Lmiui/yellowpage/YellowPagePhone;
    .end local v4    # "numberType":I
    .end local v5    # "type":I
    .end local v17    # "providerId":I
    .end local v18    # "markedCount":I
    .end local v19    # "normalizedNumber":Ljava/lang/String;
    .end local v25    # "cidName":Ljava/lang/String;
    :cond_5
    goto/16 :goto_0

    .line 1033
    :cond_6
    :goto_4
    return-object v1
.end method

.method private static buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 33
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "number"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 881
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 882
    .local v17, "providerId":I
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 883
    .local v18, "tag":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 884
    .local v19, "ypName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 885
    .local v20, "ypId":J
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 886
    .local v22, "ypNamePinyin":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 887
    .local v23, "tagPinyin":Ljava/lang/String;
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 888
    .local v24, "normalizedNumber":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v2

    .line 889
    .local v12, "isVisible":Z
    :goto_0
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1

    move v15, v1

    goto :goto_1

    :cond_1
    move v15, v2

    .line 890
    .local v15, "suspect":Z
    :goto_1
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    move/from16 v16, v1

    goto :goto_2

    :cond_2
    move/from16 v16, v2

    .line 891
    .local v16, "hasCallMenu":Z
    :goto_2
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 892
    .local v13, "t9Rank":J
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 893
    .local v1, "atdId":I
    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 894
    .local v11, "slogan":Ljava/lang/String;
    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 895
    .local v25, "markedCount":I
    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 896
    .local v10, "atdPid":I
    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 897
    .local v9, "creditImg":Ljava/lang/String;
    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 899
    .local v8, "numberType":I
    const/4 v2, 0x0

    .line 900
    .local v2, "type":I
    const-wide/16 v3, -0x1

    cmp-long v3, v20, v3

    if-eqz v3, :cond_4

    .line 901
    const/4 v2, 0x1

    .line 906
    .end local v2    # "type":I
    .local v26, "type":I
    :cond_3
    :goto_3
    move/from16 v26, v2

    goto :goto_4

    .line 902
    .end local v26    # "type":I
    .restart local v2    # "type":I
    :cond_4
    if-lez v1, :cond_3

    .line 903
    const/4 v2, 0x2

    goto :goto_3

    .line 906
    .end local v2    # "type":I
    .restart local v26    # "type":I
    :goto_4
    new-instance v27, Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v2, v27

    move-wide/from16 v3, v20

    move-object/from16 v5, v19

    move-object/from16 v6, v18

    move-object/from16 v7, p1

    move v0, v8

    move-object/from16 v8, v24

    .end local v8    # "numberType":I
    .local v0, "numberType":I
    move/from16 v28, v0

    move-object v0, v9

    move/from16 v9, v26

    .end local v9    # "creditImg":Ljava/lang/String;
    .local v0, "creditImg":Ljava/lang/String;
    .local v28, "numberType":I
    move/from16 v29, v10

    move/from16 v10, v17

    .end local v10    # "atdPid":I
    .local v29, "atdPid":I
    move/from16 v30, v1

    move-object v1, v11

    move/from16 v11, v25

    .end local v11    # "slogan":Ljava/lang/String;
    .local v1, "slogan":Ljava/lang/String;
    .local v30, "atdId":I
    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-wide v0, v13

    move-object/from16 v13, v22

    .end local v1    # "slogan":Ljava/lang/String;
    .end local v13    # "t9Rank":J
    .local v0, "t9Rank":J
    .local v31, "creditImg":Ljava/lang/String;
    .local v32, "slogan":Ljava/lang/String;
    move-object/from16 v14, v23

    invoke-direct/range {v2 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 909
    .local v2, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    invoke-virtual {v2, v0, v1}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    .line 910
    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    .line 911
    .end local v32    # "slogan":Ljava/lang/String;
    .local v3, "slogan":Ljava/lang/String;
    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Lmiui/yellowpage/YellowPagePhone;->setCreditImg(Ljava/lang/String;)V

    .line 912
    .end local v31    # "creditImg":Ljava/lang/String;
    .local v4, "creditImg":Ljava/lang/String;
    move/from16 v5, v30

    invoke-virtual {v2, v5}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    .line 913
    .end local v30    # "atdId":I
    .local v5, "atdId":I
    move/from16 v6, v29

    invoke-virtual {v2, v6}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    .line 914
    .end local v29    # "atdPid":I
    .local v6, "atdPid":I
    move/from16 v7, v28

    invoke-virtual {v2, v7}, Lmiui/yellowpage/YellowPagePhone;->setNumberType(I)V

    .line 915
    .end local v28    # "numberType":I
    .local v7, "numberType":I
    return-object v2
.end method

.method public static createAntispamCategory(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryName"    # Ljava/lang/String;

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "YellowPageUtils"

    const-string v1, "The category name must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 469
    return v1

    .line 472
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "MAX(cid)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 474
    .local v0, "c":Landroid/database/Cursor;
    const/16 v2, 0x2710

    .line 475
    .local v2, "categoryId":I
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 477
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 478
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .local v1, "maxCatId":I
    if-lt v1, v2, :cond_2

    .line 480
    add-int/2addr v1, v3

    .line 486
    .end local v2    # "categoryId":I
    .local v1, "categoryId":I
    move v2, v1

    .end local v1    # "categoryId":I
    .restart local v2    # "categoryId":I
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 487
    goto :goto_2

    .line 486
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 486
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 490
    :cond_3
    :goto_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "cid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    const-string v4, "names"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v4, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v1}, Lmiui/yellowpage/YellowPageUtils;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 495
    return v2
.end method

.method public static formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1072
    const-string v0, "com.miui.yellowpage_preferences.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "position"    # I
    .param p3, "number"    # Ljava/lang/String;

    move-object/from16 v0, p1

    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "customCategory":Lmiui/yellowpage/AntispamCustomCategory;
    const/4 v2, -0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_2

    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 630
    .local v4, "categoryId":I
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 631
    .local v5, "type":I
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 632
    .local v16, "markedCount":I
    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 633
    .local v15, "numberType":I
    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 634
    .local v2, "userMarked":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 636
    invoke-static/range {p0 .. p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    .line 638
    :cond_1
    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/yellowpage/AntispamCategory;

    .line 639
    .local v6, "category":Lmiui/yellowpage/AntispamCategory;
    if-eqz v6, :cond_2

    .line 640
    new-instance v17, Lmiui/yellowpage/AntispamCustomCategory;

    .line 641
    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getCategoryId()I

    move-result v8

    .line 642
    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getCategoryAllNames()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getCategoryType()I

    move-result v10

    .line 643
    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getOrder()I

    move-result v12

    move-object/from16 v7, v17

    move-object/from16 v13, p3

    move/from16 v14, v16

    move v0, v15

    move v15, v2

    .end local v15    # "numberType":I
    .local v0, "numberType":I
    invoke-direct/range {v7 .. v15}, Lmiui/yellowpage/AntispamCustomCategory;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    move-object/from16 v1, v17

    .line 645
    invoke-virtual {v1, v0}, Lmiui/yellowpage/AntispamCustomCategory;->setNumberType(I)V

    .line 648
    .end local v0    # "numberType":I
    .end local v2    # "userMarked":Z
    .end local v4    # "categoryId":I
    .end local v5    # "type":I
    .end local v6    # "category":Lmiui/yellowpage/AntispamCategory;
    .end local v16    # "markedCount":I
    :cond_2
    return-object v1
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "filterOneRingCall"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 517
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 518
    return-object v3

    .line 521
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 522
    .local v11, "uri":Landroid/net/Uri;
    invoke-static {v1, v11}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    return-object v3

    .line 526
    :cond_1
    const/4 v12, 0x0

    .line 529
    .local v12, "customCategory":Lmiui/yellowpage/AntispamCustomCategory;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    .line 531
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v0, v14

    .line 532
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v15

    .line 533
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v10

    .line 534
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v13

    .line 530
    invoke-static {v0}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamCategorySelection([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    .line 529
    move-object v5, v11

    move v15, v9

    move-object v9, v0

    move v13, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 536
    .local v4, "c":Landroid/database/Cursor;
    if-eqz v4, :cond_8

    .line 538
    const/4 v0, -0x1

    .line 539
    .local v0, "userMarkedPosition":I
    const/4 v5, -0x1

    .line 540
    .local v5, "presetOrCloudPosition":I
    const/4 v6, -0x1

    move v7, v5

    move v5, v0

    move v0, v6

    .line 541
    .local v0, "notInPresetPosition":I
    .local v5, "userMarkedPosition":I
    .local v7, "presetOrCloudPosition":I
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 542
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v8, v15, :cond_2

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 544
    :pswitch_0
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    move v5, v8

    .line 545
    goto :goto_1

    .line 548
    :pswitch_1
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    move v7, v8

    .line 549
    goto :goto_1

    .line 551
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    move v0, v8

    .line 552
    :goto_1
    goto :goto_0

    .line 556
    :cond_3
    const/4 v8, -0x1

    .line 557
    .local v8, "position":I
    if-eq v5, v6, :cond_4

    .line 558
    move v8, v5

    .line 559
    const-string v3, "YellowPageUtils"

    const-string v6, "getAntispamNumberCategory(): found type user marked in db"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 560
    :cond_4
    if-eq v7, v6, :cond_5

    .line 561
    move v8, v7

    .line 562
    const-string v3, "YellowPageUtils"

    const-string v6, "getAntispamNumberCategory(): found type preset/cloud in db"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 563
    :cond_5
    if-eq v0, v6, :cond_6

    .line 564
    const-string v6, "YellowPageUtils"

    const-string v9, "getAntispamNumberCategory(): found type not in preset in db"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    nop

    .line 575
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 565
    return-object v3

    .line 568
    :cond_6
    :goto_2
    :try_start_1
    invoke-static {v1, v4, v8, v2}, Lmiui/yellowpage/YellowPageUtils;->getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v3

    move-object v12, v3

    .line 569
    if-nez v12, :cond_7

    .line 570
    const-string v3, "YellowPageUtils"

    const-string v6, "getAntispamNumberCategory(): find nothing in db"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "notInPresetPosition":I
    .end local v5    # "userMarkedPosition":I
    .end local v7    # "presetOrCloudPosition":I
    .end local v8    # "position":I
    goto :goto_3

    .line 575
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 576
    goto :goto_5

    .line 575
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 578
    :cond_8
    const-string v0, "YellowPageUtils"

    const-string v3, "getAntispamNumberCategory(): find nothing in db"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_5
    if-nez v12, :cond_b

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    .line 584
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 583
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 586
    if-eqz v4, :cond_a

    .line 588
    :try_start_3
    invoke-static {v1, v4, v14, v2}, Lmiui/yellowpage/YellowPageUtils;->getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v0

    move-object v12, v0

    .line 589
    if-eqz v12, :cond_9

    .line 590
    const-string v0, "YellowPageUtils"

    const-string v3, "getAntispamNumberCategory(): found in preset"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 592
    :cond_9
    const-string v0, "YellowPageUtils"

    const-string v3, "getAntispamNumberCategory(): not found in preset"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 597
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 594
    :catch_1
    move-exception v0

    .line 595
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 598
    goto :goto_8

    .line 597
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 600
    :cond_a
    const-string v0, "YellowPageUtils"

    const-string v3, "getAntispamNumberCategory(): find nothing in preset"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_b
    :goto_8
    if-eqz v12, :cond_c

    .line 605
    const-string v0, "YellowPageUtils"

    const-string v3, "getAntispamNumberCategory(): number=%s, numberType=%s, category=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 606
    invoke-static/range {p1 .. p1}, Lmiui/yellowpage/YellowPageUtils;->getLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-virtual {v12}, Lmiui/yellowpage/AntispamCustomCategory;->getNumberType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v12}, Lmiui/yellowpage/AntispamCustomCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    .line 605
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 608
    :cond_c
    const/4 v7, 0x1

    const-string v0, "YellowPageUtils"

    const-string v3, "getAntispamNumberCategory(): number=%s, not found"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lmiui/yellowpage/YellowPageUtils;->getLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_9
    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 855
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 856
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 857
    return v7

    .line 860
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 861
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 863
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 864
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    const/4 v7, 0x1

    nop

    .line 867
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 864
    return v7

    .line 867
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 868
    goto :goto_0

    .line 867
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 870
    :cond_3
    :goto_0
    return v7
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation

    .line 406
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "cid"

    const-string v3, "names"

    const-string v4, "type"

    const-string v5, "icon"

    const-string v6, "display_order"

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 420
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 422
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 424
    .local v1, "categoryId":I
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "names":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 426
    .local v5, "type":I
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "icon":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 428
    .local v7, "order":I
    new-instance v8, Lmiui/yellowpage/AntispamCategory;

    move-object v2, v8

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    move-object v2, v8

    .line 429
    .local v2, "category":Lmiui/yellowpage/AntispamCategory;
    sget-object v3, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v1    # "categoryId":I
    .end local v2    # "category":Lmiui/yellowpage/AntispamCategory;
    .end local v4    # "names":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "icon":Ljava/lang/String;
    .end local v7    # "order":I
    goto :goto_0

    .line 434
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    goto :goto_3

    .line 434
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 434
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 437
    :cond_2
    :goto_3
    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    return-object v1
.end method

.method public static getCidName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "category":Lmiui/yellowpage/AntispamCategory;
    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 389
    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/yellowpage/AntispamCategory;

    .line 390
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 394
    :cond_1
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    .line 396
    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/yellowpage/AntispamCategory;

    .line 397
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public static getIvrMenuByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 712
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 713
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 714
    return-object v7

    .line 716
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 719
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 721
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 722
    return-object v2

    .line 725
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 726
    goto :goto_0

    .line 725
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 729
    :cond_2
    :goto_0
    return-object v7
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .line 221
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outNorNumbersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 232
    move-object/from16 v3, p2

    invoke-static/range {p0 .. p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 236
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    return-object v4

    .line 240
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 241
    .local v4, "norNumbersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 242
    .local v5, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/yellowpage/YellowPagePhone;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_b

    .line 243
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "number":Ljava/lang/String;
    const/4 v7, 0x0

    .line 246
    .local v7, "normalizedNumber":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    goto :goto_2

    .line 247
    :cond_3
    :goto_1
    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 250
    goto/16 :goto_7

    .line 251
    :cond_4
    if-eqz v3, :cond_5

    .line 252
    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_5
    :goto_2
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v9, 0x32

    if-gt v8, v9, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_a

    .line 260
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 263
    .local v10, "num":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 264
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_7
    const-string v11, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .end local v10    # "num":Ljava/lang/String;
    goto :goto_3

    .line 269
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "normalized_number IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 269
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 272
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_a

    .line 274
    move-object v10, v0

    .end local v0    # "number":Ljava/lang/String;
    .local v10, "number":Ljava/lang/String;
    :goto_4
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 275
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 276
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 277
    invoke-static {v9, v10}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    .line 278
    .local v0, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v0    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    goto :goto_4

    .line 280
    :cond_9
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 284
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 285
    goto :goto_7

    .line 284
    :goto_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 242
    .end local v7    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "number":Ljava/lang/String;
    :cond_a
    :goto_7
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 289
    .end local v0    # "i":I
    :cond_b
    return-object v5

    .line 233
    .end local v4    # "norNumbersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/yellowpage/YellowPagePhone;>;"
    :cond_c
    :goto_8
    return-object v4
.end method

.method private static getLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .line 1076
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1079
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1080
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gt v0, v2, :cond_2

    .line 1082
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_1

    .line 1083
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1085
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 1086
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1088
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    goto :goto_3

    .line 1093
    :cond_3
    if-le v0, v2, :cond_7

    .line 1094
    nop

    .local v3, "i":I
    :goto_2
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v3, v0, -0x4

    if-ge v2, v3, :cond_4

    .line 1095
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1094
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 1097
    .end local v3    # "i":I
    :cond_4
    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1089
    :cond_5
    :goto_3
    nop

    .restart local v3    # "i":I
    :goto_4
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v3, v0, -0x3

    if-ge v2, v3, :cond_6

    .line 1090
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 1092
    .end local v3    # "i":I
    :cond_6
    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_7
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1077
    .end local v0    # "len":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    :goto_6
    const-string v0, "[empty number]"

    return-object v0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "withCountryCode"    # Z
    .param p3, "defaultCountryCode"    # Ljava/lang/String;

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    return-object v1

    .line 153
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_NORMALIZED_NUMBER:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 155
    .local v2, "builder":Landroid/net/Uri$Builder;
    const-string v3, "withCountryCode"

    if-eqz p2, :cond_1

    const-string v4, "true"

    goto :goto_0

    :cond_1
    const-string v4, "false"

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    const-string v3, "defaultCountryCode"

    invoke-virtual {v2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 162
    return-object v1

    .line 164
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 165
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 167
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 168
    return-object v1

    .line 171
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 172
    goto :goto_1

    .line 171
    :catchall_0
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 174
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    .line 190
    .local v0, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 191
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lmiui/yellowpage/YellowPageUtils;->queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    if-eqz p2, :cond_2

    .line 195
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .line 333
    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageProvider;

    .line 334
    .local v0, "provider":Lmiui/yellowpage/YellowPageProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    return-object v0

    .line 338
    :cond_0
    sget-object v1, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 339
    return-object v2

    .line 342
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "name"

    const-string v5, "icon"

    const-string v6, "pid"

    const-string v7, "icon_big"

    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 351
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 353
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 356
    .local v5, "iconByte":[B
    if-nez v5, :cond_2

    move-object v6, v2

    goto :goto_1

    :cond_2
    array-length v6, v5

    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 358
    .local v6, "icon":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    move-object v5, v7

    .line 359
    if-nez v5, :cond_3

    move-object v3, v2

    goto :goto_2

    :cond_3
    array-length v7, v5

    invoke-static {v5, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 361
    .local v3, "iconBig":Landroid/graphics/Bitmap;
    :goto_2
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 362
    .local v7, "providerId":I
    new-instance v8, Lmiui/yellowpage/YellowPageProvider;

    invoke-direct {v8, v7, v4, v6, v3}, Lmiui/yellowpage/YellowPageProvider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object v0, v8

    .line 363
    sget-object v8, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v3    # "iconBig":Landroid/graphics/Bitmap;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "iconByte":[B
    .end local v6    # "icon":Landroid/graphics/Bitmap;
    .end local v7    # "providerId":I
    goto :goto_0

    .line 368
    :cond_4
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 369
    goto :goto_5

    .line 368
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 368
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 372
    :cond_5
    :goto_5
    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/yellowpage/YellowPageProvider;

    .line 373
    if-nez v0, :cond_6

    .line 375
    sget-object v0, Lmiui/yellowpage/YellowPageProvider;->DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;

    .line 377
    :cond_6
    return-object v0
.end method

.method public static getUserAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    sget-object v0, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    return-object v1

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "area_code"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 117
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    return-object v2

    .line 123
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    goto :goto_2

    .line 123
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 123
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 126
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static informYellowpagePhoneEvent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "extraCallType"    # I
    .param p8, "extraNumber"    # Ljava/lang/String;
    .param p9, "extraConnType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 814
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 816
    .local v1, "extraData":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "direction"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v2, p7

    :try_start_1
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 817
    const-string v0, "number"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v3, p8

    :try_start_2
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    const-string v0, "connected"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v4, p9

    :try_start_3
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 822
    nop

    .line 824
    sget-object v0, Lmiui/yellowpage/YellowPageContract$MipubPhoneEvent;->CONTENT_URI_MIPUB_PHONE_EVENT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_start_time"

    .line 826
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 825
    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_end_time"

    .line 827
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_source"

    .line 828
    move-object/from16 v6, p5

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_type"

    .line 829
    move-object/from16 v7, p6

    invoke-virtual {v0, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_data"

    .line 831
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-virtual {v0, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 833
    .local v5, "uri":Landroid/net/Uri;
    move-object/from16 v14, p0

    invoke-static {v14, v5}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    return-void

    .line 837
    :cond_0
    const/4 v0, 0x0

    move-object v15, v0

    .line 839
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v15, v0

    .line 843
    if-eqz v15, :cond_1

    .line 844
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 843
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 843
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v15, :cond_1

    goto :goto_0

    .line 847
    :cond_1
    :goto_1
    return-void

    .line 843
    :goto_2
    if-eqz v15, :cond_2

    .line 844
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 819
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v2, p7

    :goto_3
    move-object/from16 v3, p8

    :goto_4
    move/from16 v4, p9

    .line 820
    .local v0, "e":Lorg/json/JSONException;
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 821
    return-void
.end method

.method private static insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1046
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    const-string v0, "YellowPageUtils"

    const-string v1, "insert-The provider is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    return-object v0

    .line 1050
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static isCloudAntispamEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 850
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_antispam"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1054
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 1058
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_1

    .line 1059
    const-string v2, "YellowPageUtils"

    const-string v3, "The content provider is not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return v0

    .line 1063
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1064
    const/4 v0, 0x1

    return v0

    .line 1055
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_2
    :goto_0
    return v0
.end method

.method public static isFraudIncomingNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "yid"    # Ljava/lang/String;

    .line 772
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_FRAUD_VERIFY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 773
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "simIndex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 774
    const-string v1, "incoming"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 775
    const-string v1, "yid"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 776
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 777
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 778
    return v8

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 781
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 783
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_1

    const/4 v8, 0x1

    nop

    .line 787
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 784
    return v8

    .line 787
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 788
    goto :goto_0

    .line 787
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    .line 790
    :cond_3
    :goto_0
    return v8
.end method

.method public static isFraudNumOnlineIdentificationEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 759
    const-string v0, "online_fraud_enable"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 677
    return v1

    .line 680
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    return v1

    .line 684
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    const-string v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 685
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 687
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 689
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 690
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "106"

    .line 698
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_1

    .line 701
    .end local v2    # "antispamNumber":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 699
    .restart local v2    # "antispamNumber":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 705
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 699
    return v1

    .line 705
    .end local v2    # "antispamNumber":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 706
    goto :goto_4

    .line 705
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 702
    :catch_0
    move-exception v2

    .line 703
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 705
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 708
    :cond_5
    :goto_4
    return v1
.end method

.method public static isIvrMenuExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 733
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 734
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 735
    return v7

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "exist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 742
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 744
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    move v3, v7

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 745
    return v3

    .line 748
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 749
    goto :goto_1

    .line 748
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 751
    :cond_3
    :goto_1
    return v7
.end method

.method public static isNeverRemindSmartAntispamEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 794
    const-string v0, "never_remind_user_enable_antispam"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRemindIgnoredUserSuspectNumber(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 755
    const-string v0, "remind_user_suspect_number"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYellowPageAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 655
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 656
    .local v0, "locale":Ljava/util/Locale;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 657
    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 658
    .local v1, "mainlandBuild":Z
    :goto_0
    const-string v4, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    .local v4, "indianBuild":Z
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    return v2
.end method

.method public static isYellowPageEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 666
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "delete"    # Z

    .line 449
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "categoryId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v1, "delete"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 454
    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_MARK_NUMBER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method private static queryCloudExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bizCode"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 314
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "bizName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "request.remote.express.info"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 324
    return-void

    .line 316
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method

.method public static queryExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bizCode"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 293
    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryLocalExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryCloudExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method private static queryLocalExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .line 300
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "bizName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "request.local.express.info"

    const/4 v2, 0x0

    .line 309
    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 310
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "res"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 302
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 919
    if-eqz p2, :cond_0

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 920
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {v1, v9}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 921
    return-object v10

    .line 925
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 926
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 928
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    invoke-static {v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 929
    return-object v0

    .line 934
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 935
    goto :goto_3

    .line 934
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 934
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 938
    :cond_3
    :goto_3
    if-nez p2, :cond_8

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    .line 941
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const-string v14, "type<>4"

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 940
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 943
    if-eqz v3, :cond_6

    .line 945
    :try_start_2
    invoke-static {v1, v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 946
    .local v0, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v0, :cond_4

    .line 947
    nop

    .line 954
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 947
    return-object v0

    .line 948
    :cond_4
    :try_start_3
    invoke-static {v3}, Lmiui/yellowpage/YellowPageUtils;->antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_5

    .line 949
    nop

    .line 954
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 949
    return-object v10

    .line 954
    .end local v0    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 951
    :catch_1
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 955
    goto :goto_5

    .line 954
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 959
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    .line 960
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 959
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 962
    if-eqz v3, :cond_8

    .line 964
    :try_start_5
    invoke-static {v1, v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 965
    .local v0, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v0, :cond_7

    .line 966
    nop

    .line 971
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 966
    return-object v0

    .line 971
    .end local v0    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_7
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 972
    goto :goto_8

    .line 971
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 968
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 969
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 971
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 976
    :cond_8
    :goto_8
    return-object v10
.end method

.method private static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1037
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const-string v0, "YellowPageUtils"

    const-string v1, "update-The provider is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v0, 0x0

    return v0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 874
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    .line 875
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 874
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 878
    return-void
.end method

.method public static updatePhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "YellowPageUtils"

    const-string v1, "updatePhoneInfo updateCloud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method
