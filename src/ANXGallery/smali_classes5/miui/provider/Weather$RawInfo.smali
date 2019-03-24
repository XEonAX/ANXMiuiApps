.class public final Lmiui/provider/Weather$RawInfo;
.super Lmiui/provider/Weather$WeatherCommonColums;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawInfo"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final INSERTTIME_TIME:Ljava/lang/String; = "insert_time"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final PARAM:Ljava/lang/String; = "raw"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    const-string v0, "content://weather/raw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Weather$RawInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/provider/Weather$WeatherCommonColums;-><init>(Lmiui/provider/Weather$1;)V

    return-void
.end method
