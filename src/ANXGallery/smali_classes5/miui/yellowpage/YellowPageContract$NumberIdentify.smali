.class public interface abstract Lmiui/yellowpage/YellowPageContract$NumberIdentify;
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
    name = "NumberIdentify"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "number_identify"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final QUERY_PACKAGE:Ljava/lang/String; = "query_package"

.field public static final QUERY_STATUS:Ljava/lang/String; = "query_status"

.field public static final QUERY_STATUS_INVALID:I = 0x0

.field public static final QUERY_STATUS_LATER_REMOTE_QUERIED:I = 0x3

.field public static final QUERY_STATUS_LOCAL_QUERIED:I = 0x1

.field public static final QUERY_STATUS_REMOTE_ERROR:I = 0x4

.field public static final QUERY_STATUS_REMOTE_QUERIED:I = 0x2

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 753
    const-string v0, "content://miui.yellowpage//number_identify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$NumberIdentify;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
