.class public interface abstract Lmiui/provider/Notes$Data;
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
    name = "Data"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created_date"

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DATA4:Ljava/lang/String; = "data4"

.field public static final DATA5:Ljava/lang/String; = "data5"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MEDIA_URI:Landroid/net/Uri;

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified_date"

.field public static final NOTE_ID:Ljava/lang/String; = "note_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 320
    const-string v0, "content://notes/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 325
    sget-object v0, Lmiui/provider/Notes$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Data;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    .line 330
    const-string v0, "content://notes/data/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Data;->MEDIA_URI:Landroid/net/Uri;

    return-void
.end method
