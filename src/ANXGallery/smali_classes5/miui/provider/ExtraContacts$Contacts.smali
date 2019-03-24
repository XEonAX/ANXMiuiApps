.class public interface abstract Lmiui/provider/ExtraContacts$Contacts;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions;
    }
.end annotation


# static fields
.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "contact_account_type"

.field public static final CONTENT_ACCOUNT_COUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_ACCOUNT_NOT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ACCOUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_IDS_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_ID_URI:Landroid/net/Uri;

.field public static final CONTENT_MIGRAGE_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_MULTIPLE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_multiple"

.field public static final CONTENT_PICK_MULTI_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_pick_multi"

.field public static final CONTENT_PICK_SINGLE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_pick_single"

.field public static final CONTENT_PREVIEW_CONTACT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/preview_contact"

.field public static final CONTENT_RECENT_CONTACTS_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_RINGTONE:Ljava/lang/String; = "custom_ringtone"

.field public static final EXTRAS_STARRED_TOP:Ljava/lang/String; = "extras_starred_top"

.field public static final FILTER_STRANGER_KEY:Ljava/lang/String; = "filter_stranger"

.field public static final FILTER_STRANGER_KEY_FILTER:Ljava/lang/String; = "1"

.field public static final MIGRATE_CONTACTS_KEY:Ljava/lang/String; = "migrate_contacts"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PHONE_NUMBER_COUNT:Ljava/lang/String; = "number_count"

.field public static final PRIMARY_PHONE_NUMBER:Ljava/lang/String; = "primary_number"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 742
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 795
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_GROUP_ID_URI:Landroid/net/Uri;

    .line 801
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_ids"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_GROUP_IDS_URI:Landroid/net/Uri;

    .line 807
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_not_group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_ACCOUNT_NOT_GROUP_URI:Landroid/net/Uri;

    .line 813
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    .line 819
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "recent_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_RECENT_CONTACTS_URI:Landroid/net/Uri;

    .line 825
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_count"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_ACCOUNT_COUNT_URI:Landroid/net/Uri;

    .line 831
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "migrate_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_MIGRAGE_CONTACTS:Landroid/net/Uri;

    return-void
.end method
