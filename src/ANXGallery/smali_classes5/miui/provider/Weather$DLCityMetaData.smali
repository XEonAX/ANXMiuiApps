.class public final Lmiui/provider/Weather$DLCityMetaData;
.super Lmiui/provider/Weather$DLCityBase;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DLCityMetaData"
.end annotation


# static fields
.field public static final ALTITUDE:Ljava/lang/String; = "altitude"

.field public static final AREACODE:Ljava/lang/String; = "areaCode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGTITUDE:Ljava/lang/String; = "longitude"

.field public static final PARAM:Ljava/lang/String; = "dlcitymetadata"

.field public static final PHONECODE:Ljava/lang/String; = "phoneCode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const-string v0, "content://weather/dlcitymetadata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Weather$DLCityMetaData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lmiui/provider/Weather$DLCityBase;-><init>()V

    return-void
.end method
