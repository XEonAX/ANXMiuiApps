.class public Lmiui/provider/ExtraContacts$Calls;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final BACKUP_PARAM:Ljava/lang/String; = "backup"

.field public static final CLOUD_ANTISPAM_TYPE:Ljava/lang/String; = "cloud_antispam_type"

.field public static final CLOUD_ANTISPAM_TYPE_CUSTOM:I = 0x3

.field public static final CLOUD_ANTISPAM_TYPE_MAKRED:I = 0x2

.field public static final CLOUD_ANTISPAM_TYPE_NONE:I = 0x0

.field public static final CLOUD_ANTISPAM_TYPE_SP:I = 0x1

.field public static final CLOUD_ANTISPAM_TYPE_TAG:Ljava/lang/String; = "cloud_antispam_type_tag"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_CONVERSATION_URI:Landroid/net/Uri;

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_NONE:I = 0x0

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final FORWARDED_CALL:Ljava/lang/String; = "forwarded_call"

.field public static final INCOMING_FORWARDING_CALL:I = 0x1

.field public static final INCOMING_MUTE_TYPE:I = 0x2

.field public static final INCOMING_NO_FIREWALL_TYPE:I = 0x0

.field public static final INCOMING_REJECTED_TYPE:I = 0x1

.field public static final MARK_DELETED:Ljava/lang/String; = "mark_deleted"

.field public static final MISSED_COUNT:Ljava/lang/String; = "missed_count"

.field public static final MY_NUMBER:Ljava/lang/String; = "my_number"

.field public static final NEWCONTACT_TYPE:I = 0xa

.field public static final NUMBER_TYPE:Ljava/lang/String; = "number_type"

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_YELLOWPAGE:I = 0x1

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final PHONE_CALL_TYPE:Ljava/lang/String; = "phone_call_type"

.field public static final PHONE_CALL_TYPE_CALLBACK:I = 0x2

.field public static final PHONE_CALL_TYPE_CONFERENCE:I = 0x3

.field public static final PHONE_CALL_TYPE_NONE:I = 0x0

.field public static final PHONE_CALL_TYPE_VOIP:I = 0x1

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SHADOW_AUTHORITY:Ljava/lang/String; = "call_log_shadow"

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final SYNC1:Ljava/lang/String; = "sync_1"

.field public static final SYNC2:Ljava/lang/String; = "sync_2"

.field public static final SYNC3:Ljava/lang/String; = "sync_3"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 246
    const-string v0, "content://call_log/calls_query"

    .line 247
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_QUERY_URI:Landroid/net/Uri;

    .line 249
    const-string v0, "content://call_log_shadow/calls"

    .line 250
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 255
    const-string v0, "content://call_log/calls_conversation"

    .line 256
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_CONVERSATION_URI:Landroid/net/Uri;

    .line 288
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 289
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "backup"

    const-string v2, "true"

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

    .line 288
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .locals 17
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I

    .line 529
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    int-to-long v11, v0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v16}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJ)Landroid/net/Uri;
    .locals 16
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J

    .line 539
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v15}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJ)Landroid/net/Uri;
    .locals 16
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J

    .line 549
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-static/range {v0 .. v15}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;
    .locals 20
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J

    .line 556
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    invoke-static/range {v0 .. v19}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZ)Landroid/net/Uri;
    .locals 20
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z

    .line 581
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    invoke-static/range {v0 .. v19}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 23
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p18, "accountComponentString"    # Ljava/lang/String;
    .param p19, "accountId"    # Ljava/lang/String;
    .param p20, "accountAddress"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 602
    .local v4, "s":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 603
    .local v12, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x1

    .line 610
    .local v0, "numberPresentation":I
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v2, v6, :cond_1

    .line 611
    const/4 v0, 0x2

    .line 618
    .end local v0    # "numberPresentation":I
    .local v13, "numberPresentation":I
    :cond_0
    :goto_0
    move v13, v0

    goto :goto_1

    .line 612
    .end local v13    # "numberPresentation":I
    .restart local v0    # "numberPresentation":I
    :cond_1
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne v2, v6, :cond_2

    .line 613
    const/4 v0, 0x4

    goto :goto_0

    .line 614
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v2, v6, :cond_0

    .line 616
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 618
    .end local v0    # "numberPresentation":I
    .restart local v13    # "numberPresentation":I
    :goto_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_5

    .line 619
    const-string v6, ""

    .line 620
    .end local p2    # "number":Ljava/lang/String;
    .local v6, "number":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 621
    const-string v7, ""

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 625
    :cond_4
    move-object v14, v6

    goto :goto_2

    .end local v6    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_5
    move-object/from16 v14, p2

    .end local p2    # "number":Ljava/lang/String;
    .local v14, "number":Ljava/lang/String;
    :goto_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v6

    .line 627
    .local v15, "values":Landroid/content/ContentValues;
    const-string v6, "number"

    invoke-virtual {v15, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v6, "presentation"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const-string v6, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v6, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    const-string v6, "duration"

    move/from16 v11, p7

    int-to-long v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 632
    const-string v6, "new"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    const/4 v0, 0x0

    const/4 v10, 0x3

    if-eq v3, v10, :cond_6

    move/from16 v9, p8

    if-lt v9, v10, :cond_7

    goto :goto_3

    .line 635
    :cond_6
    move/from16 v9, p8

    :goto_3
    const-string v6, "is_read"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    :cond_7
    if-eqz v1, :cond_8

    .line 638
    const-string v6, "name"

    iget-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v6, "numbertype"

    iget v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v6, "numberlabel"

    iget-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_8
    const-string v6, "firewalltype"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string v6, "forwarded_call"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v6, "simid"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    const-string v6, "phone_call_type"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 646
    const-string v6, "features"

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 648
    const-string v6, "subscription_component_name"

    move-object/from16 v8, p18

    invoke-virtual {v15, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v6, "subscription_id"

    move-object/from16 v7, p19

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v6, "phone_account_address"

    move-object/from16 v10, p20

    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/4 v6, 0x3

    if-ne v3, v6, :cond_b

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {v14}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",0)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 656
    .local v16, "selection":Ljava/lang/String;
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "type"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const-string v21, "date DESC"

    const/16 v17, 0x3

    move-object v6, v12

    move-object v7, v0

    move-object/from16 v8, v19

    move-object/from16 v9, v16

    move/from16 v0, v17

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 660
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v7, 0x1

    .line 661
    .local v7, "missedCount":J
    if-eqz v6, :cond_a

    .line 663
    :goto_4
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 664
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    .local v10, "type":I
    if-ne v10, v0, :cond_9

    .line 666
    const-wide/16 v17, 0x1

    add-long v7, v7, v17

    .line 670
    .end local v10    # "type":I
    goto :goto_4

    .line 672
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 673
    goto :goto_5

    .line 672
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 676
    :cond_a
    :goto_5
    const-string v0, "missed_count"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 721
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "missedCount":J
    .end local v16    # "selection":Ljava/lang/String;
    :cond_b
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p1

    move/from16 v7, p16

    move-object/from16 v8, p17

    invoke-static {v6, v0, v15, v7, v8}, Lmiui/provider/ExtraContacts;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    .line 722
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 723
    .local v9, "e":J
    const-string v11, "T9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v9, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 21
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "accountComponentString"    # Ljava/lang/String;
    .param p18, "accountId"    # Ljava/lang/String;
    .param p19, "accountAddress"    # Ljava/lang/String;

    .line 589
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    invoke-static/range {v0 .. v20}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
