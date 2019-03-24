.class public Lmiui/mipub/MipubStat;
.super Ljava/lang/Object;
.source "MipubStat.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.mipub.MipubMsgProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final STAT_CALL_OFF:I = 0x2

.field public static final STAT_CONTENT_URI:Landroid/net/Uri;

.field public static final STAT_CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final STAT_DEFAULT_RETRY_TIMES:I = 0x9

.field public static final STAT_EXPIRY_DATA:J = 0x240c8400L

.field public static final STAT_MODIFY_TIME:Ljava/lang/String; = "modify_time"

.field public static final STAT_MSG_MIPUB:I = 0x0

.field public static final STAT_MSG_MIXIN:I = 0x1

.field public static final STAT_MSG_TYPE:Ljava/lang/String; = "message_type"

.field public static final STAT_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final STAT_PACKAGE_XML:Ljava/lang/String; = "package_xml"

.field public static final STAT_RETRY_TIMES:Ljava/lang/String; = "retry_times"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "content://com.miui.mipub.MipubMsgProvider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/mipub/MipubStat;->CONTENT_URI:Landroid/net/Uri;

    .line 13
    sget-object v0, Lmiui/mipub/MipubStat;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "stat"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/mipub/MipubStat;->STAT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
