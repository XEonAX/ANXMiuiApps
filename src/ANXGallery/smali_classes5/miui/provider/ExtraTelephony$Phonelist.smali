.class public final Lmiui/provider/ExtraTelephony$Phonelist;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phonelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Phonelist$State;,
        Lmiui/provider/ExtraTelephony$Phonelist$Location;,
        Lmiui/provider/ExtraTelephony$Phonelist$SyncDirty;
    }
.end annotation


# static fields
.field public static final CLOUD_UUID:Ljava/lang/String; = "cloudUid"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/antispam-phone_list"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/antispam-phone_list"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_SYNCED_COUNT:Landroid/net/Uri;

.field public static final CONTENT_URI_UNSYNCED_COUNT:Landroid/net/Uri;

.field public static final DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final E_TAG:Ljava/lang/String; = "e_tag"

.field public static final IS_DISPLAY:Ljava/lang/String; = "isdisplay"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final RECORD_ID:Ljava/lang/String; = "record_id"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "sync_dirty"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BLACK:Ljava/lang/String; = "1"

.field public static final TYPE_CLOUDS_BLACK:Ljava/lang/String; = "4"

.field public static final TYPE_CLOUDS_WHITE:Ljava/lang/String; = "5"

.field public static final TYPE_STRONG_CLOUDS_BLACK:Ljava/lang/String; = "6"

.field public static final TYPE_STRONG_CLOUDS_WHITE:Ljava/lang/String; = "7"

.field public static final TYPE_VIP:Ljava/lang/String; = "3"

.field public static final TYPE_WHITE:Ljava/lang/String; = "2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2140
    const-string v0, "content://antispam/phone_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 2141
    const-string v0, "content://antispam/unsynced_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI_UNSYNCED_COUNT:Landroid/net/Uri;

    .line 2142
    const-string v0, "content://antispam/synced_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI_SYNCED_COUNT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
