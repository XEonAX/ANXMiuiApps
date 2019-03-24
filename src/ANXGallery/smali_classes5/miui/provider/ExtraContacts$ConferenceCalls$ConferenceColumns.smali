.class public Lmiui/provider/ExtraContacts$ConferenceCalls$ConferenceColumns;
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
    name = "ConferenceColumns"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/conference_groups"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/conference_groups"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final MEMBERS:Ljava/lang/String; = "members"

.field public static final MEMBERS_COUNT:Ljava/lang/String; = "members_count"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1548
    sget-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "conference_groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls$ConferenceColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 1549
    sget-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "conference_groups/filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls$ConferenceColumns;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
