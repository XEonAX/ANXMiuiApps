.class public interface abstract Lmiui/provider/Notes$Note;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Note"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ALERTED_DATE:Ljava/lang/String; = "alert_date"

.field public static final ALERT_TAG:Ljava/lang/String; = "alert_tag"

.field public static final BG_COLOR_ID:Ljava/lang/String; = "bg_color_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_ATOMIC:Landroid/net/Uri;

.field public static final CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created_date"

.field public static final DELETION_TAG:Ljava/lang/String; = "deletion_tag"

.field public static final HAS_ATTACHMENT:Ljava/lang/String; = "has_attachment"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ID_CALL_RECORD_FOLDER:I = -0x2

.field public static final ID_PRIVACY_FOLER:I = -0x4

.field public static final ID_ROOT_FOLDER:I = 0x0

.field public static final ID_TEMPARAY_FOLDER:I = -0x1

.field public static final ID_TRASH_FOLER:I = -0x3

.field public static final IN_VALID_FOLDER_SELECTION:Ljava/lang/String; = "(parent_id>=0 OR parent_id=-2 OR parent_id=-4)"

.field public static final LOCAL_MODIFIED:Ljava/lang/String; = "local_modified"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified_date"

.field public static final MOVED_DATE:Ljava/lang/String; = "moved_date"

.field public static final NOTES_COUNT:Ljava/lang/String; = "notes_count"

.field public static final ORIGIN_PARENT_ID:Ljava/lang/String; = "origin_parent_id"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final PLAIN_TEXT:Ljava/lang/String; = "plain_text"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SOURCE_INTENT:Ljava/lang/String; = "source_intent"

.field public static final SOURCE_NAME:Ljava/lang/String; = "source_name"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final STICK_DATE:Ljava/lang/String; = "stick_date"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SYNC_DATA1:Ljava/lang/String; = "sync_data1"

.field public static final SYNC_DATA2:Ljava/lang/String; = "sync_data2"

.field public static final SYNC_DATA3:Ljava/lang/String; = "sync_data3"

.field public static final SYNC_DATA4:Ljava/lang/String; = "sync_data4"

.field public static final SYNC_DATA5:Ljava/lang/String; = "sync_data5"

.field public static final SYNC_DATA6:Ljava/lang/String; = "sync_data6"

.field public static final SYNC_DATA7:Ljava/lang/String; = "sync_data7"

.field public static final SYNC_DATA8:Ljava/lang/String; = "sync_data8"

.field public static final SYNC_ID:Ljava/lang/String; = "sync_id"

.field public static final SYNC_TAG:Ljava/lang/String; = "sync_tag"

.field public static final THEME_ID:Ljava/lang/String; = "theme_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_NOTE:I = 0x0

.field public static final TYPE_SYSTEM:I = 0x2

.field public static final TYPE_WIDGET_INVALIDE:I = -0x1

.field public static final TYPE_WIDGET_SIMPLE:I = 0x1

.field public static final VALID_FOLDER_SELECTION:Ljava/lang/String; = "((type=1 AND parent_id=0) OR _id=-2)"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final WIDGET_ID:Ljava/lang/String; = "widget_id"

.field public static final WIDGET_TYPE:Ljava/lang/String; = "widget_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, "content://notes/note"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI:Landroid/net/Uri;

    .line 65
    sget-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    .line 70
    const-string v0, "content://notes/note/atomic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    return-void
.end method
