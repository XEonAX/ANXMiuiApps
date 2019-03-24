.class public Lmiui/provider/ExtraContacts$ConferenceCalls$CallsColumns;
.super Ljava/lang/Object;
.source "ExtraContacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts$ConferenceCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallsColumns"
.end annotation


# static fields
.field public static final CONFERENCE_ID:Ljava/lang/String; = "conference_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/conference_calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/conference_calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final FORWARDED_CALL:Ljava/lang/String; = "forwarded_call"

.field public static final MISSED_COUNT:Ljava/lang/String; = "missed_count"

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE_CALL_TYPE:Ljava/lang/String; = "phone_call_type"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SPONSOR:Ljava/lang/String; = "isSponsor"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1494
    sget-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "conference_calls"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls$CallsColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
