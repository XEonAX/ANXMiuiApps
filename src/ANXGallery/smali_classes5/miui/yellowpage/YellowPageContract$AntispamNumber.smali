.class public interface abstract Lmiui/yellowpage/YellowPageContract$AntispamNumber;
.super Ljava/lang/Object;
.source "YellowPageContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AntispamNumber"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CONTENT_MARK_NUMBER_URI:Landroid/net/Uri;

.field public static final CONTENT_PHONE_LOOKUP_SUSPECT_SERVICE_URI:Landroid/net/Uri;

.field public static final CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_UPDTATE_CALL_LOG_TAG_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "antispam_number"

.field public static final DIRECTORY_MARK_NUMBER:Ljava/lang/String; = "antispam_mark_number"

.field public static final DIRECTORY_PHONE_LOOKUP:Ljava/lang/String; = "antispam_number_phone_lookup"

.field public static final DIRECTORY_PHONE_LOOKUP_SUSPECT_SERVICE:Ljava/lang/String; = "antispam_number_suspect_service"

.field public static final DIRECTORY_PRESET_PHONE_LOOKUP:Ljava/lang/String; = "antispam_number_preset_phone_lookup"

.field public static final DIRECTORY_UPDATE_CALL_LOG_TAG:Ljava/lang/String; = "antispam_update_call_log_tag"

.field public static final MARKED_COUNT:Ljava/lang/String; = "marked_count"

.field public static final MIN_MATCH:Ljava/lang/String; = "min_match"

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_TYPE:Ljava/lang/String; = "number_type"

.field public static final NUMBER_TYPE_BLACK:I = 0x0

.field public static final NUMBER_TYPE_GREY:I = 0x2

.field public static final NUMBER_TYPE_NORMAL:I = 0x3

.field public static final NUMBER_TYPE_SUSPECT:I = 0x1

.field public static final PID:Ljava/lang/String; = "pid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CLOUD:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_NOT_IN_PRESET_FILE:I = 0x5

.field public static final TYPE_ONE_RING_CALL:I = 0x4

.field public static final TYPE_PRESET:I = 0x1

.field public static final UPLOAD:Ljava/lang/String; = "upload"

.field public static final UPLOADED_NO:I = 0x0

.field public static final UPLOADED_YES:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    const-string v0, "content://miui.yellowpage/antispam_number"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_URI:Landroid/net/Uri;

    .line 330
    const-string v0, "content://miui.yellowpage/antispam_number_phone_lookup"

    .line 331
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    .line 335
    const-string v0, "content://miui.yellowpage/antispam_number_preset_phone_lookup"

    .line 336
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    .line 340
    const-string v0, "content://miui.yellowpage/antispam_mark_number"

    .line 341
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_MARK_NUMBER_URI:Landroid/net/Uri;

    .line 345
    const-string v0, "content://miui.yellowpage/antispam_number_suspect_service"

    .line 346
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_SUSPECT_SERVICE_URI:Landroid/net/Uri;

    .line 350
    const-string v0, "content://miui.yellowpage/antispam_update_call_log_tag"

    .line 351
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_UPDTATE_CALL_LOG_TAG_URI:Landroid/net/Uri;

    .line 350
    return-void
.end method
