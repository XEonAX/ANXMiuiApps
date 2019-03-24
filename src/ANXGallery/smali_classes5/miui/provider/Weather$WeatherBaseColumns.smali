.class public Lmiui/provider/Weather$WeatherBaseColumns;
.super Lmiui/provider/Weather$WeatherCommonColums;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherBaseColumns"
.end annotation


# static fields
.field public static final AQILEVEL:Ljava/lang/String; = "aqilevel"

.field public static final BEGINS:Ljava/lang/String; = "begins"

.field public static final CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DAY:Ljava/lang/String; = "day"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final EBBTIDE:Ljava/lang/String; = "ebbTide"

.field public static final ENDS:Ljava/lang/String; = "ends"

.field public static final HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final PRARM:Ljava/lang/String; = "all_weather"

.field public static final PRESSURE:Ljava/lang/String; = "pressure"

.field public static final PRESSURES:Ljava/lang/String; = "pressures"

.field public static final PUBLISH_TIME:Ljava/lang/String; = "publish_time"

.field public static final RISINGTIDE:Ljava/lang/String; = "risingTide"

.field public static final SUNRISE:Ljava/lang/String; = "sunrise"

.field public static final SUNSET:Ljava/lang/String; = "sunset"

.field public static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final TEMPERATURE_RANGE:Ljava/lang/String; = "temperature_range"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TMPHIGHS:Ljava/lang/String; = "tmphighs"

.field public static final TMPLOWS:Ljava/lang/String; = "tmplows"

.field public static final WATER:Ljava/lang/String; = "water"

.field public static final WEATHERNAMESFROM:Ljava/lang/String; = "weathernamesfrom"

.field public static final WEATHERNAMESTO:Ljava/lang/String; = "weathernamesto"

.field public static final WEATHER_TYPE:Ljava/lang/String; = "weather_type"

.field public static final WIND:Ljava/lang/String; = "wind"

.field public static final WINDS:Ljava/lang/String; = "winds"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "content://weather/all_weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Weather$WeatherBaseColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/provider/Weather$WeatherCommonColums;-><init>(Lmiui/provider/Weather$1;)V

    return-void
.end method
