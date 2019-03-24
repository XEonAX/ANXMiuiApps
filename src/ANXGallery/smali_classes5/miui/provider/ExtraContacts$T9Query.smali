.class public Lmiui/provider/ExtraContacts$T9Query;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9Query"
.end annotation


# static fields
.field public static final CLOUD_ANTISPAM_TYPE:I = 0x14

.field public static final CLOUD_ANTISPAM_TYPE_TAG:I = 0x15

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMNS_WITH_CONFERENCE:[Ljava/lang/String;

.field public static final CONFERENCE_ID:I = 0x1c

.field public static final CONFERENCE_MEMBERS_NAME:I = 0x1e

.field public static final CONFERENCE_NAME:I = 0x1d

.field public static final CONTACT_ID:I = 0x1

.field public static final COUNT:I = 0x5

.field public static final COUNTRY_ISO:I = 0x10

.field public static final CREDIT_IMG:I = 0x1b

.field public static final DATA_ID:I = 0x13

.field public static final DATA_TAG:I = 0x16

.field public static final DATE:I = 0x8

.field public static final DURATION:I = 0x9

.field public static final FEATURES:I = 0x1a

.field public static final FIREWALL_TYPE:I = 0xd

.field public static final FORWARDED_CALL:I = 0xe

.field public static final MISSED_COUNT:I = 0xa

.field public static final NAME:I = 0x2

.field public static final NEW:I = 0x6

.field public static final NORMALIZED_NUMBER:I = 0x12

.field public static final NUMBER:I = 0x3

.field public static final NUMBER_TYPE:I = 0x17

.field public static final PHONE_CALL_TYPE:I = 0x19

.field public static final PHOTO_ID:I = 0x4

.field public static final SIM_ID:I = 0x18

.field public static final T9DISPLAY_STRING:I = 0xf

.field public static final T9KEY_TYPE:I = 0xb

.field public static final T9MATCH_DETAIL:I = 0xc

.field public static final TYPE:I = 0x7

.field public static final VOICEMAIL_URI:I = 0x11

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 124
    const-string v0, "_id"

    const-string v1, "contact_id"

    const-string v2, "name"

    const-string v3, "number"

    const-string v4, "photo_id"

    const-string v5, "call_count"

    const-string v6, "is_new"

    const-string v7, "call_type"

    const-string v8, "call_date"

    const-string v9, "call_duration"

    const-string v10, "missed_count"

    const-string v11, "key_type"

    const-string v12, "match_detail"

    const-string v13, "firewall_type"

    const-string v14, "forwarded_call"

    const-string v15, "display_string"

    const-string v16, "country_iso"

    const-string v17, "voicemail_uri"

    const-string v18, "normalized_number"

    const-string v19, "data_id"

    const-string v20, "cloud_antispam_type"

    const-string v21, "cloud_antispam_type_tag"

    const-string v22, "data_tag"

    const-string v23, "number_type"

    const-string v24, "sim_id"

    const-string v25, "phone_call_type"

    const-string v26, "features"

    const-string v27, "credit_img"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    .line 139
    const-string v1, "_id"

    const-string v2, "contact_id"

    const-string v3, "name"

    const-string v4, "number"

    const-string v5, "photo_id"

    const-string v6, "call_count"

    const-string v7, "is_new"

    const-string v8, "call_type"

    const-string v9, "call_date"

    const-string v10, "call_duration"

    const-string v11, "missed_count"

    const-string v12, "key_type"

    const-string v13, "match_detail"

    const-string v14, "firewall_type"

    const-string v15, "forwarded_call"

    const-string v16, "display_string"

    const-string v17, "country_iso"

    const-string v18, "voicemail_uri"

    const-string v19, "normalized_number"

    const-string v20, "data_id"

    const-string v21, "cloud_antispam_type"

    const-string v22, "cloud_antispam_type_tag"

    const-string v23, "data_tag"

    const-string v24, "number_type"

    const-string v25, "sim_id"

    const-string v26, "phone_call_type"

    const-string v27, "features"

    const-string v28, "credit_img"

    const-string v29, "conference_id"

    const-string v30, "conference_name"

    const-string v31, "conference_members_name"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS_WITH_CONFERENCE:[Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
