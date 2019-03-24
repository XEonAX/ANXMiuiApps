.class public final Lmiui/mipub/HmsCommon;
.super Ljava/lang/Object;
.source "HmsCommon.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_MIPUBINFO:Landroid/net/Uri;

.field public static final CONTENT_URI_MIPUBINFO_LOCAL:Landroid/net/Uri;

.field public static final CONTENT_URI_MIPUBINFO_NET:Landroid/net/Uri;

.field public static final FOLLOW:Ljava/lang/String; = "follow"

.field public static final FOLLOW_TIME:Ljava/lang/String; = "follow_time"

.field public static final MIPUB_DESC:Ljava/lang/String; = "desc"

.field public static final MIPUB_ICON_URL:Ljava/lang/String; = "iconUrl"

.field public static final MIPUB_ID:Ljava/lang/String; = "mipub_id"

.field public static final MIPUB_NAME:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-string v0, "content://hmscommon/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    sget-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mipub_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI_MIPUBINFO:Landroid/net/Uri;

    .line 15
    sget-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mipub_info/local"

    .line 16
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI_MIPUBINFO_LOCAL:Landroid/net/Uri;

    .line 17
    sget-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mipub_info/net"

    .line 18
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/mipub/HmsCommon;->CONTENT_URI_MIPUBINFO_NET:Landroid/net/Uri;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
