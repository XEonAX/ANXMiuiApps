.class public final Lmiui/provider/Weather$LocalWeather;
.super Lmiui/provider/Weather$WeatherBaseColumns;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalWeather"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/weather_weather"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PRARM:Ljava/lang/String; = "weather"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-string v0, "content://weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Weather$LocalWeather;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lmiui/provider/Weather$WeatherBaseColumns;-><init>()V

    return-void
.end method
