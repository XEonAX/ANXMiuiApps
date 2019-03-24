.class public final Lmiui/provider/Weather$AlertInfo;
.super Lmiui/provider/Weather$WeatherCommonColums;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertInfo"
.end annotation


# static fields
.field public static final ABNORMAL:Ljava/lang/String; = "abnormal"

.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final CITY_NAME:Ljava/lang/String; = "city"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/alert_info"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/alert_info"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final HOLIDAY:Ljava/lang/String; = "holiday"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final PARAM:Ljava/lang/String; = "alert"

.field public static final PUBLISH_TIME:Ljava/lang/String; = "pub_time"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const-string v0, "content://weatherinfo/alert"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Weather$AlertInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/provider/Weather$WeatherCommonColums;-><init>(Lmiui/provider/Weather$1;)V

    return-void
.end method
