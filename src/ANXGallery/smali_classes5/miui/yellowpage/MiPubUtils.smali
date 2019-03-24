.class public Lmiui/yellowpage/MiPubUtils;
.super Ljava/lang/Object;
.source "MiPubUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
    }
.end annotation


# static fields
.field private static final COLUMN_THUMBNAIL_URL:I = 0x1

.field private static final COLUMN_YELLOWPAGE_NAME:I = 0x2

.field private static final COLUMN_YID:I = 0x0

.field private static final EXTRA_MULTI_MODULE_ENTRY_RAW:Ljava/lang/String; = "com.miui.yellowpage.extra.MULTI_MODULE_ENTRY_RAW"

.field private static final FOLLOW_CONFIRM_IN_YP_DETAIL:Ljava/lang/String; = "follow_confirm_in_yp_detail"

.field private static final FOLLOW_HAS_CONFIRMED_IN_YP_DETAIL:Ljava/lang/String; = "follow_has_confirmed_in_yp_detail"

.field private static final MENU_HAS_BEEN_FIRSTLY_READ:Ljava/lang/String; = "pref_menu_has_been_firstly_read"

.field private static final MENU_READ_IN_SMS_CONVERSATION:Ljava/lang/String; = "pref_menu_read_in_sms_conversation"

.field private static final MIPUB_DEVICE_ID:Ljava/lang/String; = "pref_mipub_random_device_id"

.field private static final RANDOM_BASE_STRING:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

.field private static final TAG:Ljava/lang/String; = "MipubUtils"

.field private static final XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

.field private static final YELLOWPAGE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-string v0, "yid"

    const-string v1, "thumbnail_url"

    const-string v2, "yellow_page_name"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    .line 40
    const-string v0, ".*@xiaomi.com(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/MiPubUtils;->XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "yellowPageId"    # J
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "JI)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 614
    move/from16 v2, p4

    const/4 v0, 0x0

    .line 615
    .local v0, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 616
    .local v3, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 617
    .local v4, "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 618
    .local v5, "intentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v6, 0x0

    .line 619
    .local v6, "hotIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 621
    .local v7, "hotShowCountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v8, "intent"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 622
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v8, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    const-string v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 624
    .end local v0    # "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 625
    const-string v0, "scope"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 626
    const-string v0, "hotId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 627
    const-string v0, "hotShowCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 628
    const-string v0, "intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 629
    const-string v0, "subItemsFlag"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v10

    .line 631
    .local v10, "subItemsFlag":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 632
    if-eqz v2, :cond_1

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v2

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move v13, v0

    .line 633
    .local v13, "isScopeAvailable":Z
    if-eqz v13, :cond_3

    .line 634
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    .line 635
    .local v15, "intent":Landroid/content/Intent;
    new-instance v0, Lmiui/yellowpage/ModuleIntent;

    .line 636
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-boolean v18, v10, v12

    .line 637
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object v14, v0

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    .end local v15    # "intent":Landroid/content/Intent;
    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v16, v21

    invoke-direct/range {v14 .. v20}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;IZII)V

    .line 638
    .local v14, "moduleIntent":Lmiui/yellowpage/ModuleIntent;
    aget-boolean v0, v10, v12

    if-eqz v0, :cond_2

    .line 640
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v15, "com.miui.yellowpage.extra.MULTI_MODULE_ENTRY_RAW"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v11, v21

    :try_start_1
    invoke-virtual {v11, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .end local v21    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "moduleJson":Lorg/json/JSONObject;
    const-string v15, "subItems"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-wide/from16 v3, p2

    :try_start_2
    invoke-static {v1, v15, v3, v4, v2}, Lmiui/yellowpage/MiPubUtils;->getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object v15

    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v22, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v23, "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v14, v15}, Lmiui/yellowpage/ModuleIntent;->setSubModuleIntent(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    .end local v0    # "moduleJson":Lorg/json/JSONObject;
    goto :goto_4

    .line 642
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-wide/from16 v3, p2

    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v11    # "intent":Landroid/content/Intent;
    .end local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v11, v21

    move-wide/from16 v3, p2

    .line 643
    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "intent":Landroid/content/Intent;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_4

    .line 646
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v11, v21

    move-wide/from16 v3, p2

    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_4
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "isScopeAvailable":Z
    .end local v14    # "moduleIntent":Lmiui/yellowpage/ModuleIntent;
    goto :goto_5

    .line 631
    .end local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-wide/from16 v3, p2

    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 649
    .end local v0    # "i":I
    .end local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-wide/from16 v3, p2

    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-object v8

    .line 651
    .end local v8    # "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    .end local v9    # "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "subItemsFlag":[Z
    .end local v22    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v0, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v1, p0

    move-object v8, v3

    move-object v9, v4

    move-wide/from16 v3, p2

    .end local v3    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v8, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    return-object v10
.end method

.method private static convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 597
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 598
    .local v2, "intentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v3, "intent"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v3, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    const-string v4, "title"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 601
    const-string v4, "id"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 602
    const-string v4, "intent"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 603
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 604
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 605
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Lmiui/yellowpage/ModuleIntent;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 606
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v5, v8}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 605
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v5    # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 608
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 610
    .end local v3    # "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "yellowPage":Lmiui/yellowpage/YellowPage;
    :try_start_0
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v1
    :try_end_0
    .catch Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
    invoke-virtual {v1}, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;->printStackTrace()V

    .line 217
    .end local v1    # "e":Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
    :goto_0
    return-object v0
.end method

.method public static getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
        }
    .end annotation

    .line 182
    const-string v0, "request.yellowpage.remote.miid"

    invoke-static {p0, v0, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "status":Ljava/lang/String;
    const-string v2, "MipubUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getYellowPage:The status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "data":Ljava/lang/String;
    invoke-static {p0, v2}, Lmiui/yellowpage/MiPubUtils;->parseYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v3

    return-object v3

    .line 188
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    const-string v2, "network_access_denied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const/4 v2, 0x0

    return-object v2

    .line 189
    :cond_1
    new-instance v2, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;

    invoke-direct {v2}, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;-><init>()V

    throw v2
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_mipub_random_device_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getHashedDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string v1, "MipubUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The random device id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_mipub_random_device_id"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    :cond_0
    return-object v0
.end method

.method private static getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 462
    const-string v0, "follow_confirm_in_yp_detail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getHashedDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 505
    const-string v0, "device.hashed_device_info"

    invoke-static {p0, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hashed_device_info"

    .line 506
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    return-object v0
.end method

.method public static getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    return-object v1

    .line 139
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    return-object v1

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "miid=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v7, 0x0

    .line 144
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 157
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    return-object v1

    .line 161
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 164
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getLocalYellowPageNavContent(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 221
    const-string v0, ""

    .line 223
    .local v0, "navContent":Ljava/lang/String;
    sget-object v1, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "type=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 235
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    .line 228
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 239
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 241
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    const-string v2, "value"

    .line 243
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 242
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 246
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    goto :goto_0

    .line 246
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 249
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getLocalYellowPages(Landroid/content/Context;Ljava/util/Set;)Ljava/util/HashMap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    .local p1, "miIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 393
    return-object v0

    .line 396
    :cond_0
    sget-object v1, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    return-object v0

    .line 401
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "miid"

    const-string v4, "content"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "miid IS NOT NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 410
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 413
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/yellowpage/YellowPage;>;"
    :try_start_0
    const-string v2, "MipubUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query miids count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "miId":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v3

    .line 417
    .local v3, "yellowPage":Lmiui/yellowpage/YellowPage;
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 421
    .end local v2    # "miId":Ljava/lang/String;
    .end local v3    # "yellowPage":Lmiui/yellowpage/YellowPage;
    :cond_2
    goto :goto_0

    .line 423
    :cond_3
    const-string v2, "MipubUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query remote yellowpage by miid with cout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 425
    new-instance v2, Lmiui/yellowpage/MiPubUtils$1;

    invoke-direct {v2, p1, p0}, Lmiui/yellowpage/MiPubUtils$1;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    invoke-static {v2}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_4
    nop

    .line 438
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 436
    return-object v0

    .line 438
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 441
    .end local v0    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/yellowpage/YellowPage;>;"
    :cond_5
    return-object v0
.end method

.method private static getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 445
    const-string v0, "pref_menu_read_in_sms_conversation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getMipub(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPageMipub;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mipubId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 81
    return-object v8

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 85
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 87
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 89
    .local v6, "yid":J
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "thumbnailName":Ljava/lang/String;
    new-instance v2, Lmiui/yellowpage/YellowPageMipub;

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lmiui/yellowpage/YellowPageMipub;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    return-object v2

    .line 94
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "yid":J
    .end local v8    # "thumbnailName":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 95
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 97
    :cond_2
    :goto_0
    return-object v8
.end method

.method public static getMipubName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mipubId"    # Ljava/lang/String;

    .line 655
    sget-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 656
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 657
    return-object v8

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 661
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 663
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 664
    return-object v2

    .line 667
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 668
    goto :goto_0

    .line 667
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 670
    :cond_2
    :goto_0
    return-object v8
.end method

.method public static getRechargeMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "navJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/Service;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/yellowpage/Service;>;"
    const-string v1, "dataRecharge"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 310
    .local v1, "dataRechargeJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 311
    invoke-static {v1}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v2

    .line 312
    .local v2, "dataRecharge":Lmiui/yellowpage/Service;
    const-string v3, "dataRecharge"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v2    # "dataRecharge":Lmiui/yellowpage/Service;
    :cond_0
    const-string v2, "phoneRecharge"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 315
    .local v2, "phoneRechargeJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 316
    invoke-static {v2}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v3

    .line 317
    .local v3, "phoneRecharge":Lmiui/yellowpage/Service;
    const-string v4, "phoneRecharge"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v3    # "phoneRecharge":Lmiui/yellowpage/Service;
    :cond_1
    return-object v0
.end method

.method public static getRemoteYellowPageNavContent(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 253
    const-string v0, ""

    .line 254
    .local v0, "navContent":Ljava/lang/String;
    const-string v1, "request.remote.navigation.info"

    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {p0, v1, v2}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 257
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "status":Ljava/lang/String;
    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-object v3, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    return-object v0

    .line 267
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v4, "value"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "type = ? "

    .line 270
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 271
    .local v6, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    .line 272
    invoke-virtual {v7, v8, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 274
    .local v7, "rowUpdated":I
    if-ge v7, v5, :cond_1

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 278
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v7    # "rowUpdated":I
    :cond_1
    return-object v0
.end method

.method public static getSearchHint(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "navJson"    # Lorg/json/JSONObject;

    .line 288
    const-string v0, "searchHint"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServicesList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "navServices"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/ServicesDataEntry;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/ServicesDataEntry;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, "navJson":Lorg/json/JSONObject;
    const-string v2, "nav_groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 354
    .local v2, "navGroups":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 355
    nop

    .line 356
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lmiui/yellowpage/ServicesDataEntry;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;

    move-result-object v4

    .line 357
    .local v4, "servicesDataEntry":Lmiui/yellowpage/ServicesDataEntry;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v4    # "servicesDataEntry":Lmiui/yellowpage/ServicesDataEntry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "navJson":Lorg/json/JSONObject;
    .end local v2    # "navGroups":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "MipubUtils"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method public static getServicesList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .param p0, "navJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/ServicesDataEntry;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/ServicesDataEntry;>;"
    :try_start_0
    const-string v1, "nav_groups"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 332
    .local v1, "navGroups":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 333
    nop

    .line 334
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lmiui/yellowpage/ServicesDataEntry;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;

    move-result-object v3

    .line 335
    .local v3, "servicesDataEntry":Lmiui/yellowpage/ServicesDataEntry;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v3    # "servicesDataEntry":Lmiui/yellowpage/ServicesDataEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "navGroups":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "MipubUtils"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method public static getShowPhoneRecharge(Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "navJson"    # Lorg/json/JSONObject;

    .line 298
    const-string v0, "showPhoneRecharge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;

    .line 373
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 374
    .local v0, "yellowPage":Lmiui/yellowpage/YellowPage;
    if-nez v0, :cond_0

    .line 375
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 377
    :cond_0
    return-object v0
.end method

.method public static getYellowPageMenu(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J
    .param p3, "remote"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 516
    const-string v1, "remote"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    const-string v1, "hasScope"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    const-string v1, "yellowpage.menu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 519
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;JZI)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J
    .param p3, "remote"    # Z
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZI)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 528
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 529
    const-string v1, "remote"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    const-string v1, "hasScope"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    const-string v1, "yellowpage.menu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 532
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p0, v1, p1, p2, p4}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "yellowPageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 548
    const-string v1, "jsonString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v1, "yellowpage.parsemenu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 550
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;JI)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "yellowPageId"    # J
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 567
    const-string v1, "jsonString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "yellowpage.parsesubmenu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 569
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p0, v1, p2, p3, p4}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 174
    .local v0, "yellowPage":Lmiui/yellowpage/YellowPage;
    if-nez v0, :cond_0

    .line 175
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public static isFollowConfirmed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 472
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "follow_has_confirmed_in_yp_detail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .line 117
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 118
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isServiceNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lmiui/yellowpage/MiPubUtils;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    return v1

    .line 56
    :cond_0
    invoke-static {p1}, Lmiui/yellowpage/MiPubUtils;->isXiaomiJID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    return v1

    .line 59
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isServiceNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.provider.ExtraTelephony"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    .local v1, "clazz":Ljava/lang/Class;
    const-string v2, "isServiceNumber"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 66
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 68
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MipubUtils"

    const-string v3, "invoke ExtraTelephony.isServiceNumber failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static isSmsMenuRead(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J

    .line 450
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "pref_menu_has_been_firstly_read"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 452
    .local v1, "defaultValue":Z
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isXiaomiAccount(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    sget-object v0, Lmiui/yellowpage/MiPubUtils;->XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static isXiaomiJID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->isXiaomiAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Lmiui/yellowpage/MiPubUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isYellowPageNetworkAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 590
    const-string v0, "yellowpage.isnetworkallowed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 591
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "networkAllowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static parseYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "yellowpage.insert"

    const-string v2, "yp"

    .line 200
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {p0, v1, v2}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 201
    const-string v1, "yp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v1, "yellowPage":Lmiui/yellowpage/YellowPage;
    return-object v1

    .line 203
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "yellowPage":Lmiui/yellowpage/YellowPage;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final randomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "count"    # I

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 487
    .local v1, "random":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 488
    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 489
    .local v3, "index":I
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setFollowConfirmed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasConfirmed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "follow_has_confirmed_in_yp_detail"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    return-void
.end method

.method public static setSmsMenuRead(Landroid/content/Context;JZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J
    .param p3, "read"    # Z

    .line 456
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_menu_has_been_firstly_read"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    return-void
.end method

.method public static setYellowPageNetworkAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 579
    const-string v0, "yellowpage.setnetworkallowed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 580
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "networkAllowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    :cond_1
    return-object p0
.end method
