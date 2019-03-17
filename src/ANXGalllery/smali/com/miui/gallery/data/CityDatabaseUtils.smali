.class Lcom/miui/gallery/data/CityDatabaseUtils;
.super Ljava/lang/Object;
.source "CityDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/CityDatabaseUtils$PolygonHelper;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "CityDatabaseUtils"

    sput-object v0, Lcom/miui/gallery/data/CityDatabaseUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/miui/gallery/data/CityDatabaseUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method
