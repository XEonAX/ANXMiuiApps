.class public final Lmiui/provider/Weather$DLCityName;
.super Lmiui/provider/Weather$DLCityBase;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DLCityName"
.end annotation


# static fields
.field public static final BELONGINGS:Ljava/lang/String; = "belongings"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PARAMPROFIX:Ljava/lang/String; = "dlcityname_"

.field public static final SEARCHKEYS:Ljava/lang/String; = "searchKeys"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lmiui/provider/Weather$DLCityBase;-><init>()V

    return-void
.end method
