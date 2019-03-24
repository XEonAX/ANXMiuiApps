.class public final Lmiui/provider/Weather$AQIInfo;
.super Lmiui/provider/Weather$WeatherCommonColums;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AQIInfo"
.end annotation


# static fields
.field public static final AQI:Ljava/lang/String; = "aqi"

.field public static final CITY_NAME:Ljava/lang/String; = "city"

.field public static final CO:Ljava/lang/String; = "co"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/aqi_info"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/aqi_info"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NO2:Ljava/lang/String; = "no2"

.field public static final O3:Ljava/lang/String; = "o3"

.field public static final PARAM:Ljava/lang/String; = "aqi"

.field public static final PM10:Ljava/lang/String; = "pm10"

.field public static final PM25:Ljava/lang/String; = "pm25"

.field public static final PUBLISH_TIME:Ljava/lang/String; = "pub_time"

.field public static final SO2:Ljava/lang/String; = "so2"

.field public static final SPOT:Ljava/lang/String; = "spot"

.field public static final SRC:Ljava/lang/String; = "src"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const-string v0, "content://weatherinfo/aqi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Weather$AQIInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/provider/Weather$WeatherCommonColums;-><init>(Lmiui/provider/Weather$1;)V

    return-void
.end method
