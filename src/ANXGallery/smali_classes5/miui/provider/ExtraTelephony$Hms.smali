.class public final Lmiui/provider/ExtraTelephony$Hms;
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
    name = "Hms"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final ADVANCED_SEEN:Ljava/lang/String; = "advanced_seen"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final MX_CONTENT:Ljava/lang/String; = "mx_content"

.field public static final MX_EXTENSION:Ljava/lang/String; = "mx_extension"

.field public static final MX_MESSAGE_ID:Ljava/lang/String; = "mx_message_id"

.field public static final MX_SEQ:Ljava/lang/String; = "mx_seq"

.field public static final MX_TYPE:Ljava/lang/String; = "mx_type"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2409
    const-string v0, "content://hms/"

    .line 2410
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Hms;->CONTENT_URI:Landroid/net/Uri;

    .line 2412
    sget-object v0, Lmiui/provider/ExtraTelephony$Hms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "threadId"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Hms;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
